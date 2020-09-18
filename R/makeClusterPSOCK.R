#' Create a PSOCK cluster of \R workers for parallel processing
#' 
#' The `makeClusterPSOCK()` function creates a cluster of \R workers
#' for parallel processing.  These \R workers may be background \R sessions
#' on the current machine, \R sessions on external machines (local or remote),
#' or a mix of such. For external workers, the default is to use SSH to connect
#' to those external machines.  This function works similarly to
#' \code{\link[parallel:makeCluster]{makePSOCKcluster}()} of the
#' \pkg{parallel} package, but provides additional and more flexibility options
#' for controlling the setup of the system calls that launch the background
#' \R workers, and how to connect to external machines.
#'
#' @param workers The hostnames of workers (as a character vector) or the number
#' of localhost workers (as a positive integer).
#' 
#' @param makeNode A function that creates a `"SOCKnode"` or
#' `"SOCK0node"` object, which represents a connection to a worker.
#' 
#' @param port The port number of the master used for communicating with all
#' the workers (via socket connections).  If an integer vector of ports, then a
#' random one among those is chosen.  If `"random"`, then a random port in
#' is chosen from `11000:11999`, or from the range specified by
#' environment variable \env{R_FUTURE_RANDOM_PORTS}.
#' If `"auto"` (default), then the default (single) port is taken from
#' environment variable \env{R_PARALLEL_PORT}, otherwise `"random"` is
#' used.
#' _Note, do not use this argument to specify the port number used by
#' `rshcmd`, which typically is an SSH client.  Instead, if the SSH daemon
#' runs on a different port than the default 22, specify the SSH port by
#' appending it to the hostname, e.g. `"remote.server.org:2200"` or via
#' SSH options `-p`, e.g. `rshopts = c("-p", "2200")`._
#' 
#' @param \dots Optional arguments passed to
#' `makeNode(workers[i], ..., rank = i)` where `i = seq_along(workers)`.
#'
#' @param autoStop If TRUE, the cluster will be automatically stopped
#' (using \code{\link[parallel:makeCluster]{stopCluster}()}) when it is
#' garbage collected, unless already stopped.
#'
#' @param tries,delay Maximum number of attempts done to launch each node
#' with `makeNode()` and the delay (in seconds) in-between attempts.
#' If argument `port` specifies more than one port, e.g. `port = "random"`
#' then a random port will be drawn and validated at most `tries` times.
#'
#' @param verbose If TRUE, informative messages are outputted.
#'
#' @return An object of class `c("RichSOCKcluster", "SOCKcluster", "cluster")`
#' consisting of a list of `"SOCKnode"` or `"SOCK0node"` workers (that also
#' inherit from `RichSOCKnode`).
#'
#' @example incl/makeClusterPSOCK.R
#'
#' @importFrom parallel stopCluster
#' @export
makeClusterPSOCK <- function(workers, makeNode = makeNodePSOCK, port = c("auto", "random"), ..., autoStop = FALSE, tries = getOption("future.makeNodePSOCK.tries", as.integer(Sys.getenv("R_FUTURE_MAKENODEPSOCK_tries", 3))), delay = getOption("future.makeNodePSOCK.tries.delay", as.numeric(Sys.getenv("R_FUTURE_MAKENODEPSOCK_TRIES_DELAY", 15.0))), verbose = getOption("future.debug", FALSE)) {
  if (is.numeric(workers)) {
    if (length(workers) != 1L) {
      stop("When numeric, argument 'workers' must be a single value: ", length(workers))
    }
    workers <- as.integer(workers)
    if (is.na(workers) || workers < 1L) {
      stop("Number of 'workers' must be one or greater: ", workers)
    }
    workers <- rep("localhost", times = workers)
  }

  tries <- as.integer(tries)
  stop_if_not(length(tries), is.integer(tries), !is.na(tries), tries >= 1L)

  delay <- as.numeric(delay)
  stop_if_not(length(delay), is.numeric(delay), !is.na(delay), delay >= 0)

  verbose_prefix <- "[local output] "

  if (verbose) {
    message(sprintf("%sWorkers: [n = %d] %s", verbose_prefix,
                    length(workers), hpaste(sQuote(workers))))
  }

  if (is.character(port)) {
    port <- match.arg(port, choices = c("auto", "random"))
    if (identical(port, "auto")) {
      port0 <- Sys.getenv("R_PARALLEL_PORT", "random")
      if (identical(port0, "random")) {
        port <- randomParallelPorts()
      } else {
        port <- suppressWarnings(as.integer(port0))
        if (is.na(port)) {
          warning("Non-numeric value of environment variable 'R_PARALLEL_PORT' coerced to NA_integer_: ", sQuote(port0))
          port <- randomParallelPorts()
        }
      }
    } else if (identical(port, "random")) {
      port <- randomParallelPorts()
    }
  } else {
    port <- as.integer(port)
  }
  if (length(port) == 0L) {
    stop("Argument 'post' must be of length one or more: 0")
  }
  if (length(port) > 1L) {
    ports <- stealth_sample(port, size = tries)
    ## Get a random port and test if it can be opened, iff possible.
    ## If so, try 'tries' times before giving up.
    ns <- asNamespace("parallel")
    if (exists("serverSocket", envir = ns, mode = "function")) {
      ## Available in R (>= 4.0.0)
      serverSocket <- get("serverSocket", envir = ns, mode = "function")
      for (kk in 1:tries) {
        port <- ports[kk]
        con <- tryCatch(serverSocket(port), error = identity)
        ## Success?
        if (inherits(con, "connection")) {
          close(con)
          break
        }
      }
    } else {
      port <- ports[1]
    }
  }
  if (is.na(port) || port < 0L || port > 65535L) {
    stop("Invalid port: ", port)
  }
  if (verbose) message(sprintf("%sBase port: %d", verbose_prefix, port))

  n <- length(workers)
  cl <- vector("list", length = n)
  class(cl) <- c("RichSOCKcluster", "SOCKcluster", "cluster")

  
  ## If an error occurred, make sure to clean up before exiting, i.e.
  ## stop each node
  on.exit({
    nodes <- vapply(cl, FUN = inherits, c("SOCKnode", "SOCK0node"),
                        FUN.VALUE = FALSE)
    stopCluster(cl[nodes])
    cl <- NULL
  })

  for (ii in seq_along(cl)) {
    if (verbose) {
      message(sprintf("%sCreating node %d of %d ...", verbose_prefix, ii, n))
      message(sprintf("%s- setting up node", verbose_prefix))
    }
    for (kk in 1:tries) {
      if (verbose) {
        message(sprintf("%s- attempt #%d of %d", verbose_prefix, kk, tries))
      }
      node <- tryCatch({
        makeNode(workers[[ii]], port = port, ..., rank = ii, verbose = verbose)
      }, error = identity)
      ## Success?
      if (!inherits(node, "error")) break
      if (kk < tries) {
        if (verbose) {
          message(conditionMessage(node))
          message(sprintf("%s- waiting %g seconds before trying again",
                  verbose_prefix, delay))
        }
        Sys.sleep(delay)
      }  
    }
    if (inherits(node, "error")) {
      ex <- node
      if (verbose) {
        message(sprintf("%s  Failed %d attempts with %g seconds delay",
                verbose_prefix, tries, delay))
      }
      ex$message <- sprintf("%s\n * Number of attempts: %d (%gs delay)",
                            conditionMessage(ex), tries, delay)
                        
      stop(ex)
    }
    cl[[ii]] <- node
    
    ## Attaching session information for each worker.  This is done to assert
    ## that we have a working cluster already here.  It will also collect
    ## useful information otherwise not available, e.g. the PID.
    if (verbose) {
      message(sprintf("%s- collecting session information", verbose_prefix))
    }
    cl[ii] <- add_cluster_session_info(cl[ii])
    
    if (verbose) {
      message(sprintf("%sCreating node %d of %d ... done", verbose_prefix, ii, n))
    }
  }

  if (autoStop) cl <- autoStopCluster(cl)

  ## Success, remove automatic cleanup of nodes
  on.exit()

  cl
} ## makeClusterPSOCK()


#' @param worker The hostname or IP number of the machine where the worker
#' should run.
#' 
#' @param master The hostname or IP number of the master / calling machine, as
#' known to the workers.  If NULL (default), then the default is
#' `Sys.info()[["nodename"]]` unless `worker` is _localhost_ or
#' `revtunnel = TRUE` in case it is `"localhost"`.
#' 
#' @param connectTimeout The maximum time (in seconds) allowed for each socket
#' connection between the master and a worker to be established (defaults to
#' 2 minutes). _See note below on current lack of support on Linux and
#' macOS systems._
#' 
#' @param timeout The maximum time (in seconds) allowed to pass without the
#' master and a worker communicate with each other (defaults to 30 days).
#' 
#' @param rscript,homogeneous The system command for launching \command{Rscript}
#' on the worker and whether it is installed in the same path as the calling
#' machine or not.  For more details, see below.
#' 
#' @param rscript_args Additional arguments to \command{Rscript} (as a character
#' vector).  This argument can be used to customize the \R environment of the
#' workers before they launches.
#' For instance, use `rscript_args = c("-e", shQuote('setwd("/path/to")'))`
#' to set the working directory to \file{/path/to} on _all_ workers.
#'
#' @param rscript_startup An \R expression or a character vector of \R code,
#' or a list with a mix of these, that will be evaluated on the \R worker
#' prior to launching the worker's event loop.
#' For instance, use `rscript_startup = 'setwd("/path/to")'`
#' to set the working directory to \file{/path/to} on _all_ workers.
#' 
#' @param rscript_envs A named character vector environment variables to
#' set on worker at startup, e.g.
#' `rscript_envs = c(FOO = "3.14", "HOME", "UNKNOWN")`.
#' If an element is not named, then the value of that variable will be used as
#' the name and the value will be the value of `Sys.getenv()` for that
#' variable.  Non-existing environment variables will be dropped.
#' These variables are set using `Sys.setenv()`.
#' 
#' @param rscript_libs A character vector of \R library paths that will be
#' used for the library search path of the \R workers.  An asterisk
#' (`"*"`) will be resolved as the current `.libPaths()` on the
#' worker. That is, to `prepend` a folder, instead of replacing the
#' existing ones, use `rscript_libs = c("new_folder", "*")`.
#' 
#' @param methods If TRUE, then the \pkg{methods} package is also loaded.
#' 
#' @param useXDR If TRUE, the communication between master and workers, which is
#' binary, will use big-endian (XDR).
#' 
#' @param outfile Where to direct the \link[base:showConnections]{stdout} and
#' \link[base:showConnections]{stderr} connection output from the workers.
#' If NULL, then no redirection of output is done, which means that the
#' output is relayed in the terminal on the local computer.  On Windows, the
#' output is only relayed when running \R from a terminal but not from a GUI.
#' 
#' @param renice A numerical 'niceness' (priority) to set for the worker
#' processes.
#' 
#' @param rank A unique one-based index for each worker (automatically set).
#' 
#' @param rshcmd,rshopts The command (character vector) to be run on the master
#' to launch a process on another host and any additional arguments (character
#' vector).  These arguments are only applied if `machine` is not
#' _localhost_.  For more details, see below.
#' 
#' @param rshlogfile (optional) If a filename, the output produced by the
#' `rshcmd` call is logged to this file, of if TRUE, then it is logged
#' to a temporary file.  The log file name is available as an attribute
#' as part of the return node object.
#' _Warning: This only works with SSH clients that support option
#' `-E out.log`._
#'
#' @param user (optional) The user name to be used when communicating with
#' another host.
#' 
#' @param revtunnel If TRUE, a reverse SSH tunnel is set up for each worker such#' that the worker \R process sets up a socket connection to its local port
#' `(port - rank + 1)` which then reaches the master on port `port`.
#' If FALSE, then the worker will try to connect directly to port `port` on
#' `master`.  For more details, see below.
#' 
#' @param manual If TRUE the workers will need to be run manually. The command
#' to run will be displayed.
#' 
#' @param dryrun If TRUE, nothing is set up, but a message suggesting how to
#' launch the worker from the terminal is outputted.  This is useful for
#' troubleshooting.
#'
#' @return `makeNodePSOCK()` returns a `"SOCKnode"` or
#' `"SOCK0node"` object representing an established connection to a worker.
#'
#' @section Definition of _localhost_:
#' A hostname is considered to be _localhost_ if it equals:
#' \itemize{
#'   \item `"localhost"`,
#'   \item `"127.0.0.1"`, or
#'   \item `Sys.info()[["nodename"]]`.
#' }
#' It is also considered _localhost_ if it appears on the same line
#' as the value of `Sys.info()[["nodename"]]` in file \file{/etc/hosts}.
#' 
#' @section Default SSH client and options (arguments `rshcmd` and `rshopts`):
#' Arguments `rshcmd` and `rshopts` are only used when connecting
#' to an external host.
#' 
#' The default method for connecting to an external host is via SSH and the
#' system executable for this is given by argument `rshcmd`.  The default
#' is given by option \option{future.makeNodePSOCK.rshcmd}.  If that is not
#' set, then the default is to use \command{ssh}.
#' Most Unix-like systems, including macOS, have \command{ssh} preinstalled
#' on the \env{PATH}.  This is also true for recent Windows 10
#' (since version 1803, April 2018) (*).
#'
#' For _Windows systems prior to Windows 10_, it is less common to find
#' \command{ssh} on the \env{PATH}. Instead it is more likely that such
#' systems have the \command{PuTTY} software and its SSH client
#' \command{plink} installed.  PuTTY puts itself on the system \env{PATH}
#' when installed, meaning this function will find PuTTY automatically if
#' installed.  If not, to manually set specify PuTTY as the SSH client,
#' specify the absolute pathname of \file{plink.exe} in the first element and
#' option \command{-ssh} in the second as in
#' `rshcmd = c("C:/Path/PuTTY/plink.exe", "-ssh")`.
#' This is because all elements of `rshcmd` are individually "shell"
#' quoted and element `rshcmd[1]` must be on the system \env{PATH}.
#'
#' Furthermore, when running \R from RStudio on Windows, the \command{ssh}
#' client that is distributed with RStudio will also be considered.
#' This client, which is from \href{http://www.mingw.org/wiki/msys}{MinGW MSYS},
#' is searched for in the folder given by the \env{RSTUDIO_MSYS_SSH}
#' environment variable - a variable that is (only) set when running RStudio.
#'
#' You can override the default set of SSH clients that are searched for
#' by specifying them in `rshcmd` using the format `<...>`, e.g.
#' `rshcmd = c("<rstudio-ssh>", "<putty-plink>", "<ssh>")`.  See
#' below for examples.
#'
#' If no SSH-client is found, an informative error message is produced.
#'
#' (*) _Known issue with the Windows 10 SSH client: There is a bug in the
#' SSH client of Windows 10 that prevents it to work with reverse SSH tunneling
#' (\url{https://github.com/PowerShell/Win32-OpenSSH/issues/1265}; Oct 2018).
#' The most recent version that we tested and that did _not_ work was
#' OpenSSH_for_Windows_7.7p1, LibreSSL 2.6.5 (`ssh -V`) on
#' Windows 10 (version 1909, OS build 18363.720) (`ver`).
#' Because of this, it is recommended to use the PuTTY SSH client or the
#' RStudio SSH client until this bug has been resolved in Windows 10._
#' 
#' Additional SSH options may be specified via argument `rshopts`, which
#' defaults to option \option{future.makeNodePSOCK.rshopts}. For instance, a
#' private SSH key can be provided as
#' `rshopts = c("-i", "~/.ssh/my_private_key")`.  PuTTY users should
#' specify a PuTTY PPK file, e.g.
#' `rshopts = c("-i", "C:/Users/joe/.ssh/my_keys.ppk")`.
#' Contrary to `rshcmd`, elements of `rshopts` are not quoted.
#' 
#' @section Accessing external machines that prompts for a password:
#' _IMPORTANT: With one exception, it is not possible to for these
#' functions to log in and launch \R workers on external machines that requires
#' a password to be entered manually for authentication._
#' The only known exception is the PuTTY client on Windows for which one can
#' pass the password via command-line option `-pw`, e.g. 
#' `rshopts = c("-pw", "MySecretPassword")`.
#'
#' Note, depending on whether you run \R in a terminal or via a GUI, you might
#' not even see the password prompt.  It is also likely that you cannot enter
#' a password, because the connection is set up via a background system call.
#'
#' The poor man's workaround for setup that requires a password is to manually
#' log into the each of the external machines and launch the \R workers by hand.
#' For this approach, use `manual = TRUE` and follow the instructions
#' which include cut'n'pasteable commands on how to launch the worker from the
#' external machine.
#'
#' However, a much more convenient and less tedious method is to set up
#' key-based SSH authentication between your local machine and the external
#' machine(s), as explain below.
#'
#' @section Accessing external machines via key-based SSH authentication:
#' The best approach to automatically launch \R workers on external machines
#' over SSH is to set up key-based SSH authentication.  This will allow you
#' to log into the external machine without have to enter a password.
#'
#' Key-based SSH authentication is taken care of by the SSH client and not \R.
#' To configure this, see the manuals of your SSH client or search the web
#' for "ssh key authentication".
#'
#' @section Reverse SSH tunneling:
#' The default is to use reverse SSH tunneling (`revtunnel = TRUE`) for
#' workers running on other machines.  This avoids the complication of
#' otherwise having to configure port forwarding in firewalls, which often
#' requires static IP address as well as privileges to edit the firewall,
#' something most users don't have.
#' It also has the advantage of not having to know the internal and / or the
#' public IP address / hostname of the master.
#' Yet another advantage is that there will be no need for a DNS lookup by the
#' worker machines to the master, which may not be configured or is disabled
#' on some systems, e.g. compute clusters.
#'
#' @section Argument `rscript`:
#' If `homogeneous` is FALSE, the `rscript` defaults to `"Rscript"`, i.e. it
#' is assumed that the \command{Rscript} executable is available on the
#' \env{PATH} of the worker.
#' If `homogeneous` is TRUE, the `rscript` defaults to
#' `file.path(R.home("bin"), "Rscript")`, i.e. it is basically assumed that
#' the worker and the caller share the same file system and \R installation.
#'
#' If specified, argument `rscript` should be a character vector with one more
#' more elements.
#' all elements are automatically shell quoted using [base::shQuote()], except
#' those that are of format `<ENVVAR>=<VALUE>`, that is, the ones matching the
#' regular expression '\samp{^[[:alpha:]_][[:alnum:]_]*=.*}'.
#' Another exception is when `rscript` inherits from 'AsIs'.
#' 
#' @section Default value of argument `homogeneous`:
#' The default value of `homogeneous` is TRUE if and only if either
#' of the following is fulfilled:
#' \itemize{
#'  \item `worker` is _localhost_
#'  \item `revtunnel` is FALSE and `master` is _localhost_
#'  \item `worker` is neither an IP number nor a fully qualified domain
#'        name (FQDN).  A hostname is considered to be a FQDN if it contains
#'        one or more periods
#' }
#' In all other cases, `homogeneous` defaults to FALSE.
#' 
#' @section Connection time out:
#' Argument `connectTimeout` does _not_ work properly on Unix and
#' macOS due to limitation in \R itself.  For more details on this, please see
#' R-devel thread 'BUG?: On Linux setTimeLimit() fails to propagate timeout
#' error when it occurs (works on Windows)' on 2016-10-26
#' (\url{https://stat.ethz.ch/pipermail/r-devel/2016-October/073309.html}).
#' When used, the timeout will eventually trigger an error, but it won't happen
#' until the socket connection timeout `timeout` itself happens.
#'
#' @section Communication time out:
#' If there is no communication between the master and a worker within the
#' `timeout` limit, then the corresponding socket connection will be
#' closed automatically.  This will eventually result in an error in code
#' trying to access the connection.
#'
#' @section Failing to set up local workers:
#' When setting up a cluster of localhost workers, that is, workers running
#' on the same machine as the master \R process, occasionally a connection
#' to a worker ("cluster node") may fail to be set up.
#' When this occurs, an informative error message with troubleshooting
#' suggestions will be produced.
#' The most common reason for such localhost failures is due to port
#' clashes.  Retrying will often resolve the problem.
#'
#' @section Failing to set up remote workers:
#' A cluster of remote workers runs \R processes on external machines. These
#' external \R processes are launched over, typically, SSH to the remote
#' machine.  For this to work, each of the remote machines needs to have
#' \R installed, which preferably is of the same version as what is on the
#' main machine.  For this to work, it is required that one can SSH to the
#' remote machines.  Ideally, the SSH connections use authentication based
#' on public-private SSH keys such that the set up of the remote workers can
#' be fully automated (see above).  If `makeClusterPSOCK()` fails to set
#' up one or more remote \R workers, then an informative error message is
#' produced.
#' There are a few reasons for failing to set up remote workers.  If this
#' happens, start by asserting that you can SSH to the remote machine and
#' launch \file{Rscript} by calling something like:
#' \preformatted{
#' {local}$ ssh -l alice remote.server.org
#' {remote}$ Rscript --version
#' R scripting front-end version 3.6.1 (2019-07-05)
#' {remote}$ logout
#' {local}$
#' }
#' When you have confirmed the above to work, then confirm that you can achieve
#' the same in a single command-line call;
#' \preformatted{
#' {local}$ ssh -l alice remote.server.org Rscript --version
#' R scripting front-end version 3.6.1 (2019-07-05)
#' {local}$
#' }
#' The latter will assert that you have proper startup configuration also for
#' _non-interactive_ shell sessions on the remote machine.
#'
#' Another reason for failing to setup remote workers could be that they are
#' running an \R version that is not compatible with the version that your main
#' \R session is running.  For instance, if we run R (>= 3.6.0) locally and the
#' workers run R (< 3.5.0), we will get:
#' `Error in unserialize(node$con) : error reading from connection`.
#' This is because R (>= 3.6.0) uses serialization format version 3 whereas
#' R (< 3.5.0) only supports version 2.  We can see the version of the \R
#' workers by adding `rscript_args = c("-e", shQuote("getRversion()"))` when
#' calling `makeClusterPSOCK()`.
#'
#' @rdname makeClusterPSOCK
#' @importFrom tools pskill
#' @export
makeNodePSOCK <- function(worker = "localhost", master = NULL, port, connectTimeout = getOption("future.makeNodePSOCK.connectTimeout", as.numeric(Sys.getenv("R_FUTURE_MAKENODEPSOCK_CONNECTTIMEOUT", 2 * 60))), timeout = getOption("future.makeNodePSOCK.timeout", as.numeric(Sys.getenv("R_FUTURE_MAKENODEPSOCK_TIMEOUT", 30 * 24 * 60 * 60))), rscript = NULL, homogeneous = NULL, rscript_args = NULL, rscript_startup = NULL, rscript_envs = NULL, rscript_libs = NULL, methods = TRUE, useXDR = TRUE, outfile = "/dev/null", renice = NA_integer_, rshcmd = getOption("future.makeNodePSOCK.rshcmd", Sys.getenv("R_FUTURE_MAKENODEPSOCK_RSHCMD")), user = NULL, revtunnel = TRUE, rshlogfile = NULL, rshopts = getOption("future.makeNodePSOCK.rshopts", Sys.getenv("R_FUTURE_MAKENODEPSOCK_RSHOPTS")), rank = 1L, manual = FALSE, dryrun = FALSE, verbose = FALSE) {
  localMachine <- is.element(worker, c("localhost", "127.0.0.1"))

  ## Could it be that the worker specifies the name of the localhost?
  ## Note, this approach preserves worker == "127.0.0.1" if that is given.
  if (!localMachine) {
    localMachine <- is_localhost(worker)
    if (localMachine) worker <- "localhost"
  }
  attr(worker, "localhost") <- localMachine

  manual <- as.logical(manual)
  stop_if_not(length(manual) == 1L, !is.na(manual))

  dryrun <- as.logical(dryrun)
  stop_if_not(length(dryrun) == 1L, !is.na(dryrun))
  
  ## Locate a default SSH client?
  if (identical(rshcmd, "")) rshcmd <- NULL
  if (!is.null(rshcmd)) {
    rshcmd <- as.character(rshcmd)
    stop_if_not(length(rshcmd) >= 1L)
  }

  if (identical(rshopts, "")) rshopts <- NULL
  rshopts <- as.character(rshopts)
  
  user <- as.character(user)
  stop_if_not(length(user) <= 1L)
  
  port <- as.integer(port)
  if (is.na(port) || port < 0L || port > 65535L) {
    stop("Invalid port: ", port)
  }

  revtunnel <- as.logical(revtunnel)
  stop_if_not(length(revtunnel) == 1L, !is.na(revtunnel))

  if (!is.null(rshlogfile)) {
    if (is.logical(rshlogfile)) {
      stop_if_not(!is.na(rshlogfile))
      if (rshlogfile) {
        rshlogfile <- tempfile(pattern = "future_makeClusterPSOCK_", fileext = ".log")
      } else {
        rshlogfile <- NULL
      }
    } else {
      rshlogfile <- as.character(rshlogfile)
      rshlogfile <- normalizePath(rshlogfile, mustWork = FALSE)
    }
  }

  if (is.null(master)) {
    if (localMachine || revtunnel) {
      master <- "localhost"
    } else {
      master <- Sys.info()[["nodename"]]
    }
  }
  stop_if_not(!is.null(master))

  timeout <- as.numeric(timeout)
  stop_if_not(length(timeout) == 1L, !is.na(timeout), is.finite(timeout), timeout >= 0)
  
  methods <- as.logical(methods)
  stop_if_not(length(methods) == 1L, !is.na(methods))
 
  if (is.null(homogeneous)) {
    homogeneous <- {
      localMachine ||
      (!revtunnel && is_localhost(master)) ||
      (!is_ip_number(worker) && !is_fqdn(worker))
    }
  }
  homogeneous <- as.logical(homogeneous)
  stop_if_not(length(homogeneous) == 1L, !is.na(homogeneous))

  if (is.null(rscript)) {
    rscript <- "Rscript"
    if (homogeneous) rscript <- file.path(R.home("bin"), rscript)
  } else {
    if (!is.character(rscript)) rscript <- as.character(rscript)
    stop_if_not(length(rscript) >= 1L)
    bin <- rscript[1]
    if (homogeneous && !inherits(bin, "AsIs")) {
      bin <- Sys.which(bin)
      if (bin == "") bin <- normalizePath(rscript[1], mustWork = FALSE)
      rscript[1] <- bin
    }
  }

  rscript_args <- as.character(rscript_args)

  if (length(rscript_startup) > 0L) {
    if (!is.list(rscript_startup)) rscript_startup <- list(rscript_startup)
    rscript_startup <- lapply(rscript_startup, FUN = function(init) {
      if (is.language(init)) {
        init <- deparse(init, width.cutoff = 500L)
        ## We cannot use newline between statements because
        ## it needs to be passed as a one line string via -e <code>
        init <- paste(init, collapse = ";")
      }
      init <- as.character(init)
      if (length(init) == 0L) return(NULL)
      tryCatch({
        parse(text = init)
      }, error = function(ex) {
        stop("Syntax error in argument 'rscript_startup': ", conditionMessage(ex))
      })
      init
    })
    rscript_startup <- unlist(rscript_startup, use.names = FALSE)
  }

  if (!is.null(rscript_libs)) {
    rscript_libs <- as.character(rscript_libs)
    stop_if_not(!anyNA(rscript_libs))
  }

  useXDR <- as.logical(useXDR)
  stop_if_not(length(useXDR) == 1L, !is.na(useXDR))

  stop_if_not(is.null(outfile) || is.character(outfile))

  renice <- as.integer(renice)
  stop_if_not(length(renice) == 1L)

  rank <- as.integer(rank)
  stop_if_not(length(rank) == 1L, !is.na(rank))
  
  verbose <- as.logical(verbose)
  stop_if_not(length(verbose) == 1L, !is.na(verbose))

  verbose_prefix <- "[local output] "

  ## Shell quote the Rscript executable?
  if (!inherits(rscript, "AsIs")) {
    idxs <- grep("^[[:alpha:]_][[:alnum:]_]*=.*", rscript, invert = TRUE)
    rscript[idxs] <- shQuote(rscript[idxs])
  }

  ## Can we get the worker's PID during launch?
  if (localMachine && !dryrun) {
    res <- useWorkerPID(rscript, rank = rank, verbose = verbose)
    pidfile <- res$pidfile
    rscript_args <- c(res$rscript_pid_args, rscript_args)
  } else {
    pidfile <- NULL
  }

  ## Add Rscript "label"?
  rscript_label <- getOption("future.makeNodePSOCK.rscript_label", Sys.getenv("R_FUTURE_MAKENODEPSOCK_RSCRIPT_LABEL"))
  if (!is.null(rscript_label) && nzchar(rscript_label) && !isFALSE(as.logical(rscript_label))) {
    if (isTRUE(as.logical(rscript_label))) {
      script <- grep("[.]R$", commandArgs(), value = TRUE)[1]
      if (is.na(script)) script <- "UNKNOWN"
      rscript_label <- sprintf("%s:%s:%s:%s", script, Sys.getpid(), Sys.info()[["nodename"]], Sys.info()[["user"]])
    }
    rscript_args <- c("-e", shQuote(paste0("#label=", rscript_label)), rscript_args)
  }

  if (methods) {
    rscript_args <- c("--default-packages=datasets,utils,grDevices,graphics,stats,methods", rscript_args)
  }

  ## Port that the Rscript should use to connect back to the master
  if (!localMachine && revtunnel) {
    rscript_port <- port + (rank - 1L)
  } else {
    rscript_port <- port
  }

  if (length(rscript_startup) > 0L) {
    rscript_startup <- paste("invisible({", rscript_startup, "})", sep = "")
    rscript_startup <- shQuote(rscript_startup)
    rscript_startup <- lapply(rscript_startup, FUN = function(value) c("-e", value))
    rscript_startup <- unlist(rscript_startup, use.names = FALSE)
    rscript_args <- c(rscript_startup, rscript_args)
  }

  if (length(rscript_envs) > 0L) {
    names <- names(rscript_envs)
    if (is.null(names)) {
      copy <- seq_along(rscript_envs)
    } else {
      copy <- which(nchar(names) == 0L)
    }
    if (length(copy) > 0L) {
      for (idx in copy) {
        name <- rscript_envs[idx]
        value <- Sys.getenv(name, NA_character_)
        if (!is.na(value)) {
          rscript_envs[idx] <- value
          names(rscript_envs)[idx] <- name
        }
      }
      names <- names(rscript_envs)
      rscript_envs <- rscript_envs[nzchar(names)]
      names <- names(rscript_envs)
    }
    code <- sprintf('%s="%s"', names, rscript_envs)
    code <- paste(code, collapse = ", ")
    code <- paste0("Sys.setenv(", code, ")")
    tryCatch({
      parse(text = code)
    }, error = function(ex) {
      stop("Argument 'rscript_envs' appears to contain invalid values: ", paste(sQuote(rscript_libs), collapse = ", "))
    })
    rscript_args <- c(rscript_args, "-e", shQuote(code))
  }

  if (length(rscript_libs) > 0L) {
    code <- paste0('"', rscript_libs, '"')
    code[rscript_libs == "*"] <- ".libPaths()"
    code <- paste(code, collapse = ",")
    code <- paste0('.libPaths(c(', code, '))')
    tryCatch({
      parse(text = code)
    }, error = function(ex) {
      stop("Argument 'rscript_libs' appears to contain invalid values: ", paste(sQuote(rscript_libs), collapse = ", "))
    })
    rscript_args <- c(rscript_args, "-e", shQuote(code))
  }
  
  ## .{slave,work}RSOCK() command already specified?
  if (!any(grepl("parallel:::[.](slave|work)RSOCK[(][)]", rscript_args))) {
    ## In R (>= 4.1., parallel:::.slaveRSOCK() was renamed .workRSOCK()
    cmd <- "workRSOCK <- tryCatch(parallel:::.slaveRSOCK, error=function(e) parallel:::.workRSOCK); workRSOCK()"
    rscript_args <- c(rscript_args, "-e", shQuote(cmd))
  }

  rscript <- paste(rscript, collapse = " ")
  rscript_args <- paste(rscript_args, collapse = " ")
  envvars <- paste0("MASTER=", master, " PORT=", rscript_port, " OUT=", outfile, " TIMEOUT=", timeout, " XDR=", useXDR)
  
  cmd <- paste(rscript, rscript_args, envvars)

  ## Renice?
  if (!is.na(renice) && renice > 0L) {
    cmd <- sprintf("nice --adjustment=%d %s", renice, cmd)
  }

  if (!localMachine) {
    ## Find default SSH client
    find <- is.null(rshcmd)
    if (find) {
      which <- NULL
      if (verbose) {
        message(sprintf("%sWill search for all 'rshcmd' available\n",
                verbose_prefix))
      }
    } else if (all(grepl("^<[a-zA-Z-]+>$", rshcmd))) {
      find <- TRUE
      if (verbose) {
        message(sprintf("%sWill search for specified 'rshcmd' types: %s\n",
                verbose_prefix, paste(sQuote(rshcmd), collapse = ", ")))
      }
      which <- gsub("^<([a-zA-Z-]+)>$", "\\1", rshcmd)
    }

    if (find) {
      rshcmd <- find_rshcmd(which = which,
                            must_work = !localMachine && !manual && !dryrun)
      if (verbose) {
        s <- unlist(lapply(rshcmd, FUN = function(r) {
          sprintf("%s [type=%s, version=%s]", paste(sQuote(r), collapse = ", "), sQuote(attr(r, "type")), sQuote(attr(r, "version")))
        }))
        s <- paste(sprintf("%s %d. %s", verbose_prefix, seq_along(s), s), collapse = "\n")
        message(sprintf("%sFound the following available 'rshcmd':\n%s", verbose_prefix, s))
      }
      rshcmd <- rshcmd[[1]]
    } else {
      if (is.null(attr(rshcmd, "type"))) attr(rshcmd, "type") <- "<unknown>"
      if (is.null(attr(rshcmd, "version"))) attr(rshcmd, "version") <- "<unknown>"
    }
    s <- sprintf("type=%s, version=%s", sQuote(attr(rshcmd, "type")), sQuote(attr(rshcmd, "version")))
    rshcmd_label <- sprintf("%s [%s]", paste(sQuote(rshcmd), collapse = ", "), s)

    if (verbose) message(sprintf("%sUsing 'rshcmd': %s", verbose_prefix, rshcmd_label))
    
    ## User?
    if (length(user) == 1L) rshopts <- c("-l", user, rshopts)

    ## Reverse tunneling?
    if (revtunnel) {
      rshopts <- c(sprintf("-R %d:%s:%d", rscript_port, master, port), rshopts)
      ## AD HOC: Warn about Windows 10 SSH bug with rev tunneling
      if (isTRUE(attr(rshcmd, "OpenSSH_for_Windows"))) {
         ver <- windows_build_version()
         if (!is.null(ver) && ver <= "10.0.17763.253") {
           msg <- sprintf("WARNING: You're running Windows 10 (build %s) where this 'rshcmd' (%s) may not support reverse tunneling (revtunnel = TRUE) resulting in worker failing to launch", ver, paste(sQuote(rshcmd), collapse = ", "), rshcmd_label)
           if (verbose) message(c(verbose_prefix, msg))
         }
      }
    }
    
    ## SSH log file?
    if (is.character(rshlogfile)) {
      rshopts <- c(sprintf("-E %s", shQuote(rshlogfile)), rshopts)
    }
    
    rshopts <- paste(rshopts, collapse = " ")
    
    ## Local commands
    rsh_call <- paste(paste(shQuote(rshcmd), collapse = " "), rshopts, worker)
    local_cmd <- paste(rsh_call, shQuote(cmd))
  } else {
    local_cmd <- cmd
  }
  stop_if_not(length(local_cmd) == 1L)

  is_worker_output_visible <- is.null(outfile)

  if (manual || dryrun) {
    msg <- c("----------------------------------------------------------------------")
    if (localMachine) {
      msg <- c(msg, sprintf("Manually, start worker #%s on local machine %s with:", rank, sQuote(worker)), sprintf("\n  %s\n", cmd))
    } else {
      msg <- c(msg, sprintf("Manually, (i) login into external machine %s:", sQuote(worker)),
               sprintf("\n  %s\n", rsh_call))
      msg <- c(msg, sprintf("and (ii) start worker #%s from there:", rank),
               sprintf("\n  %s\n", cmd))
      msg <- c(msg, sprintf("Alternatively, start worker #%s from the local machine by combining both step in a single call:", rank),
               sprintf("\n  %s\n", local_cmd))
    }
    msg <- paste(c(msg, ""), collapse = "\n")
    cat(msg)
    utils::flush.console()
    if (dryrun) return(NULL)
  } else {
    if (verbose) {
      message(sprintf("%sStarting worker #%s on %s: %s", verbose_prefix, rank, sQuote(worker), local_cmd))
    }
    input <- if (.Platform$OS.type == "windows") "" else NULL
    res <- system(local_cmd, wait = FALSE, input = input)
    if (verbose) {
      message(sprintf("%s- Exit code of system() call: %s", verbose_prefix, res))
    }
    if (res != 0) {
      warning(sprintf("system(%s) had a non-zero exit code: %d", local_cmd, res))
    }
  }

  if (verbose) {
    message(sprintf("%sWaiting for worker #%s on %s to connect back", verbose_prefix, rank, sQuote(worker)))
    if (is_worker_output_visible) {
      if (.Platform$OS.type == "windows") {
        message(sprintf("%s- Detected 'outfile=NULL' on Windows: this will make the output from the background worker visible when running R from a terminal, but it will most likely not be visible when using a GUI.", verbose_prefix))
      } else {
        message(sprintf("%s- Detected 'outfile=NULL': this will make the output from the background worker visible", verbose_prefix))
      }
    }
  }


  con <- local({
     ## Apply connection time limit "only to the rest of the current computation".
     ## NOTE: Regardless of transient = TRUE / FALSE, it still seems we need to
     ##       undo it manually :/  /HB 2016-11-05
     setTimeLimit(elapsed = connectTimeout)
     on.exit(setTimeLimit(elapsed = Inf))

     warnings <- list()
     tryCatch({
       withCallingHandlers({
         socketConnection("localhost", port = port, server = TRUE, 
                          blocking = TRUE, open = "a+b", timeout = timeout)
       }, warning = function(w) {
         if (verbose) {
           message(sprintf("%sDetected a warning from socketConnection(): %s", verbose_prefix, sQuote(conditionMessage(w))))
         }
         warnings <<- c(warnings, list(w))
       })
     }, error = function(ex) {
       setTimeLimit(elapsed = Inf)
       
       ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
       ## Post-mortem analysis
       ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
       machineType <- if (localMachine) "local" else "remote"
       msg <- sprintf("Failed to launch and connect to R worker on %s machine %s from local machine %s.\n", machineType, sQuote(worker), sQuote(Sys.info()[["nodename"]]))

       ## Inspect and report on the error message
       cmsg <- conditionMessage(ex)
       if (grepl(gettext("reached elapsed time limit"), cmsg)) {
         msg <- c(msg, sprintf(" * The error produced by socketConnection() was: %s (which suggests that the connection timeout of %.0f seconds (argument 'connectTimeout') kicked in)\n", sQuote(cmsg), connectTimeout))
       } else {
         msg <- c(msg, sprintf(" * The error produced by socketConnection() was: %s\n", sQuote(cmsg)))
       }

       ## Inspect and report on any warnings
       if (length(warnings) > 0) {
         msg <- c(msg, sprintf(" * In addition, socketConnection() produced %d warning(s):\n", length(warnings)))
         for (kk in seq_along(warnings)) {
           cmsg <- conditionMessage(warnings[[kk]])
           if (grepl("port [0-9]+ cannot be opened", cmsg)) {
             msg <- c(msg, sprintf("   - Warning #%d: %s (which suggests that this port is either already occupied by another process or blocked by the firewall on your local machine)\n", kk, sQuote(cmsg)))
           } else {
             msg <- c(msg, sprintf("   - Warning #%d: %s\n", kk, sQuote(cmsg)))
           }
         }
       }

       ## Report on how the local socket connect was setup
       msg <- c(msg, sprintf(" * The localhost socket connection that failed to connect to the R worker used port %d using a communication timeout of %.0f seconds and a connection timeout of %.0f seconds.\n", port, timeout, connectTimeout))

       ## Report on how the worker was launched
       msg <- c(msg, sprintf(" * Worker launch call: %s.\n", local_cmd))

       ## Do we know the PID of the worker? If so, try to kill it to avoid
       ## leaving a stray process behind
       ## Comment: readWorkerPID() must be done *after* socketConnection()
       ## on R 3.4.4, otherwise socketConnection() will fail. Not sure why.
       ## /HB 2019-01-24
       pid <- readWorkerPID(pidfile)
       if (!is.null(pid)) {
         if (verbose) message(sprintf("Killing worker process (PID %d) if still alive", pid))
         ## WARNING: pid_kill() calls pid_exists() [twice] and on Windows
         ## pid_exists() uses system('tasklist') which can be very very slow
         ## /HB 2019-01-24
         success <- pid_kill(pid)
         if (verbose) message(sprintf("Worker (PID %d) was successfully killed: %s", pid, success))
         msg <- c(msg, sprintf(" * Worker (PID %d) was successfully killed: %s\n", pid, success))
       } else if (localMachine) {
         msg <- c(msg, sprintf(" * Failed to kill local worker because it's PID is could not be identified.\n"))
       }

       ## Propose further troubleshooting methods
       suggestions <- NULL

       ## Enable verbose=TRUE?
       if (!verbose) {
         suggestions <- c(suggestions, "Set 'verbose=TRUE' to see more details.")
       }

       ## outfile=NULL?
       if (.Platform$OS.type == "windows") {
         if (is_worker_output_visible) {
           suggestions <- c(suggestions, "On Windows, to see output from worker, set 'outfile=NULL' and run R from a terminal (not a GUI).")
         } else {
           suggestions <- c(suggestions, "On Windows, output from worker when using 'outfile=NULL' is only visible when running R from a terminal (not a GUI).")
         }
       } else {
         if (!is_worker_output_visible) {
           suggestions <- c(suggestions, "Set 'outfile=NULL' to see output from worker.")
         }
       }

       ## Log file?
       if (is.character(rshlogfile)) {
         smsg <- sprintf("Inspect the content of log file %s for %s.", sQuote(rshlogfile), sQuote(rshcmd))
         lmsg <- tryCatch(readLines(rshlogfile, n = 15L, warn = FALSE), error = function(ex) NULL)
         if (length(lmsg) > 0) {
           lmsg <- sprintf("     %2d: %s", seq_along(lmsg), lmsg)
           smsg <- sprintf("%s The first %d lines are:\n%s", smsg, length(lmsg), paste(lmsg, collapse = "\n"))
         }
         suggestions <- c(suggestions, smsg)
       } else {
         suggestions <- c(suggestions, sprintf("Set 'rshlogfile=TRUE' to enable logging for %s.", sQuote(rshcmd)))
       }
       
       ## Special: Windows 10 ssh client may not support reverse tunneling. /2018-11-10
       ## https://github.com/PowerShell/Win32-OpenSSH/issues/1265
       if (!localMachine && revtunnel && isTRUE(attr(rshcmd, "OpenSSH_for_Windows"))) {
         suggestions <- c(suggestions, sprintf("The 'rshcmd' (%s) used may not support reverse tunneling (revtunnel = TRUE). See ?future::makeClusterPSOCK for alternatives.\n", rshcmd_label))
       }
       
       if (length(suggestions) > 0) {
         suggestions <- sprintf("   - Suggestion #%d: %s\n", seq_along(suggestions), suggestions)
         msg <- c(msg, " * Troubleshooting suggestions:\n", suggestions)
       }
       
       msg <- paste(msg, collapse = "")
       ex$message <- msg

       ## Relay error and temporarily avoid truncating the error message in case it is too long
       local({
         oopts <- options(warning.length = 2000L)
         on.exit(options(oopts))
         stop(ex)
       })
     })
  })
  setTimeLimit(elapsed = Inf)

  if (verbose) {
    message(sprintf("%sConnection with worker #%s on %s established", verbose_prefix, rank, sQuote(worker)))
  }

  structure(list(con = con, host = worker, rank = rank, rshlogfile = rshlogfile),
            class = c("RichSOCKnode", if (useXDR) "SOCKnode" else "SOCK0node"))
} ## makeNodePSOCK()


## Checks if a given worker is the same as the localhost.  It is, iff:
##
## * worker == "localhost"
## * worker == "127.0.0.1"
## * worker == hostname
## * worker and hostname appears on the same line in /etc/hosts
##
## This should cover cases such as:
## * Calling is_localhost("n3") from machine n3
## * Calling is_localhost("n3.myserver.org") from machine n3[.myserver.org]
##
## References:
## * https://en.wikipedia.org/wiki/Hostname
#' @importFrom utils file_test
is_localhost <- local({
  localhosts <- c("localhost", "127.0.0.1")
  non_localhosts <- character(0L)
  
  function(worker, hostname = Sys.info()[["nodename"]], pathnames = "/etc/hosts") {
    ## INTERNAL: Clear list of known local hosts?
    if (is.null(worker) && is.null(hostname)) {
      localhosts <<- c("localhost", "127.0.0.1")
      non_localhosts <<- character(0L)
      return(NA)
    }
    
    stop_if_not(length(worker) == 1, length(hostname) == 1)
  
    ## Already known to a localhost or not to one?
    if (worker %in% localhosts) return(TRUE)
    if (worker %in% non_localhosts) return(FALSE)
    
    if (worker == hostname) {
      ## Add worker to the list of known local hosts.
      localhosts <<- unique(c(localhosts, worker))
      return(TRUE)
    }
  
    ## Scan known "hosts" files
    pathnames <- pathnames[file_test("-f", pathnames)]
    if (length(pathnames) == 0L) return(FALSE)
  
    ## Search for (hostname, worker) and (worker, hostname)
    ## occuring on the same line and are separates by one or
    ## more whitespace symbols (but nothing else).
    pattern <- sprintf("^((|.*[[:space:]])%s[[:space:]]+%s([[:space:]]+|)|(|.*[[:space:]])%s[[:space:]]+%s([[:space:]]+|))$", hostname, worker, worker, hostname)
    
    for (pathname in pathnames) {
      bfr <- readLines(pathname, warn = FALSE)
      if (any(grepl(pattern, bfr, ignore.case = TRUE))) {
        ## Add worker to the list of known local hosts.
        localhosts <<- unique(c(localhosts, worker))
        return(TRUE)
      }
    }
    
    ## Add worker to the list of known non-local hosts.
    non_localhosts <<- unique(c(non_localhosts, worker))
    
    FALSE
  }
}) ## is_localhost()


## Checks if a worker is specified by its IP number.
is_ip_number <- function(worker) {
  ip <- strsplit(worker, split = ".", fixed = TRUE)[[1]]
  if (length(ip) != 4) return(FALSE)
  ip <- as.integer(ip)
  if (anyNA(ip)) return(FALSE)
  all(0 <= ip & ip <= 255)
}

## Checks if a worker is specified as a fully qualified domain name (FQDN)
is_fqdn <- function(worker) {
  grepl(".", worker, fixed = TRUE)
}


#' Search for SSH clients on the current system
#'
#' @param which A character vector specifying which types of SSH clients
#' to search for.  If NULL, a default set of clients supported by the
#' current platform is searched for.
#'
#' @param first If TRUE, the first client found is returned, otherwise
#' all located clients are returned.
#'
#' @param must_work If TRUE and no clients was found, then an error
#' is produced, otherwise only a warning.
#'
#' @return A named list of pathnames to all located SSH clients.
#' If `first = TRUE`, only the first one is returned.
#' Attribute `version` contains the output from querying the
#' executable for its version (via command-line option `-V`).
#'
#' @export
#' @keywords internal
find_rshcmd <- function(which = NULL, first = FALSE, must_work = TRUE) {
  query_version <- function(bin, args = "-V") {
    v <- suppressWarnings(system2(bin, args = args, stdout = TRUE, stderr = TRUE))
    paste(v, collapse = "; ")
  }
  
  find_rstudio_ssh <- function() {
    path <- Sys.getenv("RSTUDIO_MSYS_SSH")
    if (!file_test("-d", path)) return(NULL)   
    path <- normalizePath(path)
    path_org <- Sys.getenv("PATH")
    on.exit(Sys.setenv(PATH = path_org))
    
    ## Set PATH to only look in RSTUDIO_MSYS_SSH to avoid
    ## picking up other clients with the same name
    ## Comment: In RStudio, RSTUDIO_MSYS_SSH is appended
    ## to the PATH, see PATH in 'Tools -> Shell ...'.
    Sys.setenv(PATH = path)
    bin <- Sys.which("ssh")
    if (!nzchar(bin)) return(NULL)
    attr(bin, "type") <- "rstudio-ssh"
    attr(bin, "version") <- query_version(bin, args = "-V")
    bin
  }

  find_putty_plink <- function() {
    bin <- Sys.which("plink")
    if (!nzchar(bin)) return(NULL)
    res <- c(bin, "-ssh")
    attr(res, "type") <- "putty-plink"
    attr(res, "version") <- query_version(bin, args = "-V")
    res
  }

  find_ssh <- function() {
    bin <- Sys.which("ssh")
    if (!nzchar(bin)) return(NULL)
    attr(bin, "type") <- "ssh"
    v <- query_version(bin, args = "-V")
    attr(bin, "version") <- v
    if (any(grepl("OpenSSH_for_Windows", v)))
      attr(bin, "OpenSSH_for_Windows") <- TRUE
    bin
  }

  if (!is.null(which)) stop_if_not(is.character(which), length(which) >= 1L, !anyNA(which))
  stop_if_not(is.logical(first), length(first) == 1L, !is.na(first))
  stop_if_not(is.logical(must_work), length(must_work) == 1L, !is.na(must_work))

  if (is.null(which)) {
    if (.Platform$OS.type == "windows") {
      which <- c("putty-plink", "rstudio-ssh")
      ## Reverse tunnelling on SSH is not supported on Windows 10 with:
      ## * OpenSSH_for_Windows_???, LibreSSL ???
      ##   - Windows 10 version 1803 build 17134.523
      ## * OpenSSH_for_Windows_7.7p1, LibreSSL 2.6.5
      ##   - Windows 10 version 1809 build 17763.253
      ##   - Windows 10 version 1903 build 18362.720
      ##   - Windows 10 version 1909 build 18363.720
      ## So it's unlikely that this will work out of the box.
      ver <- windows_build_version()
      if (!is.null(ver) && ver > "10.0.17763.253") {
        which <- c("ssh", which)
      } else {
        which <- c(which, "ssh")
      }
    } else {
      which <- c("ssh")
    }
  }
  
  res <- list()
  for (name in which) {
    pathname <- switch(name,
      "ssh"         = find_ssh(),
      "putty-plink" = find_putty_plink(),
      "rstudio-ssh" = find_rstudio_ssh(),
      stop("Unknown 'rshcmd' type: ", sQuote(name))
    )
    
    if (!is.null(pathname)) {
      if (first) return(pathname)
      res[[name]] <- pathname
    }
  }    

  if (length(res) > 0) return(res)
  
  msg <- sprintf("Failed to locate a default SSH client (checked: %s). Please specify one via argument 'rshcmd'.", paste(sQuote(which), collapse = ", ")) #nolint
  if (must_work) stop(msg)

  pathname <- "ssh"
  msg <- sprintf("%s Will still try with %s.", msg, sQuote(paste(pathname, collapse = " ")))
  warning(msg)
  pathname
}


#' @importFrom utils installed.packages
session_info <- function(pkgs = getOption("future.makeNodePSOCK.sessionInfo.pkgs", as.logical(Sys.getenv("R_FUTURE_MAKENODEPSOCK_SESSIONINFO_PKGS", FALSE)))) {
  libs <- .libPaths()
  info <- list(
    r = c(R.version, os.type = .Platform$OS.type),
    system = as.list(Sys.info()),
    libs = libs,
    pkgs = if (isTRUE(pkgs)) {
      structure(lapply(libs, FUN = function(lib.loc) {
        pkgs <- installed.packages(lib.loc = lib.loc)
        if (length(pkgs) == 0) return(NULL)
        paste0(pkgs[, "Package"], "_", pkgs[, "Version"])
      }), names = libs)
    },
    pwd = getwd(),
    process = list(pid = Sys.getpid())
  )
  info
}


#' @importFrom utils capture.output
#' @importFrom parallel clusterCall
add_cluster_session_info <- function(cl) {
  stop_if_not(inherits(cl, "cluster"))
  
  for (ii in seq_along(cl)) {
    node <- cl[[ii]]
    if (is.null(node)) next  ## Happens with dryrun = TRUE

    ## Session information already collected?
    if (!is.null(node$session_info)) next

    node$session_info <- clusterCall(cl[ii], fun = session_info)[[1]]

    ## Sanity check, iff possible
    if (inherits(node, "SOCK0node") || inherits(node, "SOCKnode")) {
      pid <- capture.output(print(node))
      pid <- as.integer(gsub(".* ", "", pid))
      stop_if_not(node$session_info$process$pid == pid)
    }
    
    cl[[ii]] <- node
  }
  
  cl
} ## add_cluster_session_info()

#' Automatically stop a cluster when garbage collected
#'
#' Registers a finalizer to a cluster such that the cluster will
#' be stopped when garbage collected
#'
#' @param cl A cluster object
#'
#' @param debug If TRUE, then debug messages are produced when
#' the cluster is garbage collected.
#'
#' @return The cluster object with attribute `gcMe` set.
#'
#' @seealso
#' The cluster is stopped using
#' \code{\link[parallel:makeCluster]{stopCluster}(cl)}.
#'
#' @keywords internal
#' @importFrom parallel stopCluster
#' @importFrom utils capture.output
#' @export
autoStopCluster <- function(cl, debug = FALSE) {
  stop_if_not(inherits(cl, "cluster"))
  ## Already got a finalizer?
  if (inherits(attr(cl, "gcMe"), "environment")) return(cl)
  
  env <- new.env()
  env$cluster <- cl
  attr(cl, "gcMe") <- env

  if (debug) {
    reg.finalizer(env, function(e) {
      message("Finalizing cluster ...")
      message(capture.output(print(e$cluster)))
      try(stopCluster(e$cluster), silent = FALSE)
      message("Finalizing cluster ... done")
    })
  } else {
    reg.finalizer(env, function(e) {
      try(stopCluster(e$cluster), silent = TRUE)
    })
  }
  cl
}


## Gets the Windows build version, e.g. '10.0.17134.523' (Windows 10 v1803)
## and '10.0.17763.253' (Windows 10 v1809).
windows_build_version <- local({
  if (.Platform$OS.type != "windows") return(function() NULL)
  function() {
    res <- shell("ver", intern = TRUE)
    if (length(res) == 0) return(NULL)
    res <- grep("Microsoft", res, value = TRUE)
    if (length(res) == 0) return(NULL)
    res <- gsub(".*Version ([0-9.]+).*", "\\1", res)
    tryCatch({
      numeric_version(res)
    }, error = function(ex) NULL)
  }
})


useWorkerPID <- local({
  parent_pid <- NULL
  .cache <- list()

  makeResult <- function(rank) {
    if (is.null(parent_pid)) parent_pid <<- Sys.getpid()
    pidfile <- tempfile(pattern = sprintf("worker.rank=%d.future.parent=%d.",
                   rank, parent_pid), fileext = ".pid")
    pidfile <- normalizePath(pidfile, winslash = "/", mustWork = FALSE)
    pidcode <- sprintf('try(suppressWarnings(cat(Sys.getpid(),file="%s")), silent = TRUE)', pidfile)
    rscript_pid_args <- c("-e", shQuote(pidcode))
    list(pidfile = pidfile, rscript_pid_args = rscript_pid_args)
  }
  
  function(rscript, rank, force = FALSE, verbose = FALSE) {
    autoKill <- getOption("future.makeNodePSOCK.autoKill",
              as.logical(Sys.getenv("R_FUTURE_MAKENODEPSOCK_AUTOKILL", TRUE)))
    if (!isTRUE(as.logical(autoKill))) return(list())

    result <- makeResult(rank)
    
    ## Already cached?
    key <- paste(rscript, collapse = "\t")
    if (!force && isTRUE(.cache[[key]])) return(result)

    test_cmd <- paste(c(
      rscript,
      result$rscript_pid_args,
      "-e", shQuote(sprintf("file.exists(%s)", shQuote(result$pidfile)))
    ), collapse = " ")
    if (verbose) {
      message("Testing if worker's PID can be inferred: ", sQuote(test_cmd))
    }
    
    input <- NULL
    
    ## AD HOC: 'singularity exec ... Rscript' requires input="".  If not,
    ## they will be terminated because they try to read from non-existing
    ## standard input. /HB 2019-02-14
    if (any(grepl("singularity", rscript, ignore.case = TRUE))) input <- ""
    
    res <- system(test_cmd, intern = TRUE, input = input)
    status <- attr(res, "status")
    suppressWarnings(file.remove(result$pidfile))
    
    .cache[[key]] <<- (is.null(status) || status == 0L) && any(grepl("TRUE", res))
    if (verbose) message("- Possible to infer worker's PID: ", .cache[[key]])
    
    result
  }  
})


readWorkerPID <- function(pidfile, wait = 0.5, maxTries = 8L, verbose = FALSE) {
  if (is.null(pidfile)) return(NULL)
  
  if (verbose) message("Attempting to infer PID for worker process ...")
  pid <- NULL
  
  ## Wait for PID file
  tries <- 0L
  while (!file.exists(pidfile) && tries <= maxTries) {
    Sys.sleep(wait)
    tries <- tries + 1L
  }
  
  if (file.exists(pidfile)) {
    pid0 <- NULL
    for (tries in 1:maxTries) {
      pid0 <- tryCatch(readLines(pidfile, warn = FALSE), error = identity)
      if (!inherits(pid0, "error")) break
      pid0 <- NULL
      Sys.sleep(wait)
    }
    file.remove(pidfile)
    
    if (length(pid0) > 0L) {
      ## Use last one, if more than one ("should not happend")
      pid <- as.integer(pid0[length(pid0)])
      if (verbose) message(" - pid: ", pid)
      if (is.na(pid)) {
        warning(sprintf("Worker PID is a non-integer: %s", pid0))
        pid <- NULL
      } else if (pid == Sys.getpid()) {
        warning(sprintf("Hmm... worker PID and parent PID are the same: %s", pid))
        pid <- NULL
      }
    }
  }
 
  if (verbose) message("Attempting to infer PID for worker process ... done")
  
  pid
} ## readWorkerPID()


randomParallelPorts <- function(default = 11000:11999) {
  random <- Sys.getenv("R_FUTURE_RANDOM_PORTS")
  if (!nzchar(random)) return(default)

  pattern <- "^([[:digit:]]+)(|:([[:digit:]]+))$"
  if (!grepl(pattern, random)) {
    warning(sprintf("Value of environment variable 'R_FUTURE_RANDOM_PORTS' does not match regular expression %s: %s", sQuote(pattern), sQuote(random)))
    return(default)
  }

  from <- sub(pattern, "\\1", random)
  from <- as.integer(from)
  if (is.na(from)) {
    warning("Value of environment variable 'R_FUTURE_RANDOM_PORTS' coerced to NA_integer_: ", sQuote(random))
    return(default)
  }
  if (from < 0L || from > 65535L) {
    warning("Value of environment variable 'R_FUTURE_RANDOM_PORTS' does not specify ports in [0,65535]: ", sQuote(random))
    return(default)
  }

  to <- sub(pattern, "\\3", random)
  if (!nzchar(to)) return(from)
  
  to <- as.integer(to)
  if (is.na(to)) {
    warning("Value of environment variable 'R_FUTURE_RANDOM_PORTS' coerced to NA_integer_: ", sQuote(random))
    return(default)
  }
  if (to < 0L || to > 65535L) {
    warning("Value of environment variable 'R_FUTURE_RANDOM_PORTS' does not specify ports in [0,65535]: ", sQuote(random))
    return(default)
  }

  from:to
} ## randomParallelPorts()




#' @export
summary.RichSOCKnode <- function(object, ...) {
  res <- list(
    host      = NA_character_,
    r_version = NA_character_,
    platform  = NA_character_,
    pwd       = NA_character_,
    pid       = NA_integer_
  )
  host <- object[["host"]]
  if (!is.null(host)) res$host <- host
  session_info <- object[["session_info"]]
  if (!is.null(session_info)) {
    res$r_version <- session_info[["r"]][["version.string"]]
    res$platform <- session_info[["r"]][["platform"]]
    res$pwd <- session_info[["pwd"]]
    res$pid <- session_info[["process"]][["pid"]]
  }
  as.data.frame(res, stringsAsFactors = FALSE)
}

#' @export
summary.RichSOCKcluster <- function(object, ...) {
  res <- lapply(object, FUN = function(node) {
    if (is.null(node)) return(summary.RichSOCKnode(node))
    summary(node)
  })
  res <- do.call(rbind, res)
  rownames(res) <- NULL
  res
}

#' @export
print.RichSOCKcluster <- function (x, ...) {
  info <- summary(x)
  txt <- sprintf("host %s", sQuote(info[["host"]]))
  specs <- sprintf("(%s, platform %s)", info[["r_version"]], info[["platform"]])
  specs[is.na(info[["r_version"]])] <- "(R version and platform not queried)"
  txt <- paste(txt, specs, sep = " ")
  t <- table(txt)
  t <- t[order(t, decreasing = TRUE)]
  w <- ifelse(t == 1L, "node is", "nodes are")
  txt <- sprintf("%d %s on %s", t, w, names(t))
  txt <- paste(txt, collapse = ", ")
  txt <- sprintf("Socket cluster with %d nodes where %s", length(x), txt)
  cat(txt, "\n", sep = "")
  invisible(x)
}
