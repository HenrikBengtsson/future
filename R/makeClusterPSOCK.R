#' Create a cluster of \R workers for parallel processing
#' 
#' The \code{makeClusterPSOCK()} function creates a cluster of \R workers
#' for parallel processing.  These \R workers may be background \R sessions
#' on the current machine, \R sessions on external machines (local or remote),
#' or a mix of such. For external workers, the default is to use SSH to connect
#' to those external machines.  This function works similarly to
#' \code{\link[parallel:makePSOCKcluster]{makePSOCKcluster}} of the
#' \pkg{parallel} package, but provides additional and more flexibility options
#' for controlling the setup of the system calls that launch the background
#' \R workers, and how to connect to external machines.
#'
#' @param workers The hostnames of workers (as a character vector) or the number
#' of localhost workers (as a positive integer).
#' 
#' @param makeNode A function that creates a \code{"SOCKnode"} or
#' \code{"SOCK0node"} object, which represents a connection to a worker.
#' 
#' @param ... Optional arguments passed to
#' \code{makeNode(workers[i], ..., rank = i)} where
#' \code{i = seq_along(workers)}.
#' 
#' @param verbose If TRUE, informative messages are outputted.
#'
#' @return An object of class \code{c("SOCKcluster", "cluster")} consisting
#' of a list of \code{"SOCKnode"} or \code{"SOCK0node"} workers.
#'
#' @example incl/makeClusterPSOCK.R
#'
#' @export
makeClusterPSOCK <- function(workers, makeNode = makeNodePSOCK, port = c("auto", "random"), ..., verbose = getOption("future.debug", FALSE)) {
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
  if (verbose) {
    message(sprintf("Workers: [n = %d] %s",
                    length(workers), hpaste(sQuote(workers))))
  }

  if (is.character(port)) {
    port <- match.arg(port)
    if (identical(port, "auto")) {
      port <- Sys.getenv("R_PARALLEL_PORT", NA_character_)
      port <- as.integer(port)
      if (is.na(port)) port <- 11000:11999
    } else if (identical(port, "random")) {
      port <- 11000:11999
    }
  } else {
    port <- as.integer(port)
  }
  if (length(port) == 0L) {
    stop("Argument 'post' must be of length one or more: 0")
  }
  if (length(port) > 1L) port <- sample(port, size = 1L)
  if (is.na(port) || port < 0L || port > 65535L) {
    stop("Invalid port: ", port)
  }
  if (verbose) message(sprintf("Base port: %d", port))

  n <- length(workers)
  cl <- vector("list", length = n)
  class(cl) <- c("SOCKcluster", "cluster")
  for (ii in seq_along(cl)) {
    if (verbose) message(sprintf("Creating node %d of %d ...", ii, n))
    if (verbose) message("- setting up node")
    cl[[ii]] <- makeNode(workers[[ii]], port = port, ..., rank = ii,
                         verbose = verbose)
    
    ## Attaching UUID for each cluster connection.  This is done because
    ## https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html
    if (verbose) message("- assigning connection UUID")
    cl[ii] <- add_cluster_uuid(cl[ii])

    ## Attaching session information for each worker.  This is done to assert
    ## that we have a working cluster already here.  It will also collect
    ## useful information otherwise not available, e.g. the PID.
    if (verbose) message("- collecting session information")
    cl[ii] <- add_cluster_session_info(cl[ii])
    
    if (verbose) message(sprintf("Creating node %d of %d ... done", ii, n))
  }
  
  cl
} ## makeClusterPSOCK()


#' @param worker The hostname or IP number of the machine where the worker
#' should run.
#' 
#' @param master The hostname or IP number of the master / calling machine, as
#' known to the workers.  If NULL (default), then the default is
#' \code{Sys.info()[["nodename"]]} unless \code{worker} is \emph{localhost} or
#' \code{revtunnel = TRUE} in case it is \code{"localhost"}.
#' 
#' @param port The port number of the master used to for communicating with all
#' the workers (via socket connections).  If an integer vector of ports, then a
#' random one among those is chosen.  If \code{"random"}, then a random port in
#' \code{11000:11999} is chosen.  If \code{"auto"} (default), then the default
#' is taken from environment variable \env{R_PARALLEL_PORT}, otherwise
#' \code{"random"} is used.
#' 
#' @param connectTimeout The maximum time (in seconds) allowed for each socket
#' connection between the master and a worker to be established (defaults to
#' 2 minutes). \emph{See note below on current lack of support on Linux and
#' macOS systems.}
#' 
#' @param timeout The maximum time (in seconds) allowed to pass without the
#' master and a worker communicate with each other (defaults to 30 days).
#' 
#' @param rscript,homogeneous The system command for launching \command{Rscript}
#' on the worker and whether it is installed in the same path as the calling
#' machine or not.  For more details, see below.
#' 
#' @param rscript_args Additional arguments to \command{Rscript} (as a character
#' vector).
#' 
#' @param methods If TRUE, then the \pkg{methods} package is also loaded.
#' 
#' @param useXDR If TRUE, the communication between master and workers, which is
#' binary, will use big-endian (XDR).
#' 
#' @param outfile Where to direct the \link[base:stdout]{stdout} and
#' \link[base:stderr]{stderr} connection output from the workers.
#' 
#' @param renice A numerical 'niceness' (priority) to set for the worker
#' processes.
#' 
#' @param rank A unique one-based index for each worker (automatically set).
#' 
#' @param rshcmd,rshopts The command (character vector) to be run on the master
#' to launch a process on another host and any additional arguments (character
#' vector).  These arguments are only applied if \code{machine} is not
#' \emph{localhost}.  For more details, see below.
#' 
#' @param user (optional) The user name to be used when communicating with
#' another host.
#' 
#' @param revtunnel If TRUE, a reverse SSH tunnel is set up for each worker such
#' that the worker R process sets up a socket connection to its local port
#' \code{(port - rank + 1)} which then reaches the master on port \code{port}.
#' If FALSE, then the worker will try to connect directly to port \code{port} on
#' \code{master}.  For more details, see below.
#' 
#' @param manual If TRUE the workers will need to be run manually. The command
#' to run will be displayed.
#' 
#' @param dryrun If TRUE, nothing is set up, but a message suggesting how to
#' launch the worker from the terminal is outputted.  This is useful for
#' troubleshooting.
#'
#' @return \code{makeNodePSOCK()} returns a \code{"SOCKnode"} or
#' \code{"SOCK0node"} object representing an established connection to a worker.
#'
#' @section Definition of \emph{localhost}:
#' A hostname is considered to be \emph{localhost} if it equals:
#' \itemize{
#'   \item \code{"localhost"},
#'   \item \code{"127.0.0.1"}, or
#'   \item \code{Sys.info()[["nodename"]]}.
#' }
#' It is also considered \emph{localhost} if it appears on the same line
#' as the value of \code{Sys.info()[["nodename"]]} in file \file{/etc/hosts}.
#' 
#' @section Default values of arguments \code{rshcmd} and \code{rshopts}:
#' Arguments \code{rshcmd} and \code{rshopts} are only used when connecting
#' to an external host.
#' 
#' The default method for connecting to an external host is via SSH and the
#' system executable for this is given by argument \code{rshcmd}.  The default
#' is given by option \code{future.makeNodePSOCK.rshcmd} and if that is not
#' set the default is either of \command{ssh} and \command{plink -ssh}.
#' Most Unix-like systems, including macOS, have \command{ssh} preinstalled
#' on the \code{PATH}.  It is less common to find this command on Windows
#' system, which are more likely to have the \command{PuTTY} software and
#' its SSH client \command{plink} installed.
#' If neither \command{ssh} nor \command{plink} is found, an informative error
#' message is produced.
#' It is also possible to specify the absolute path to the SSH client.  To do
#' this for PuTTY, specify the absolute path in the first element and option
#' \command{-ssh} in the second as in
#' \code{rshcmd = c("C:/Path/PuTTY/plink.exe", "-ssh")}.
#' This is because all elements of \code{rshcmd} are individually "shell"
#' quoted and element \code{rshcmd[1]} must be on the system \code{PATH}.
#'
#' Additional SSH options may be specified via argument \code{rshopts}, which
#' defaults to option \code{future.makeNodePSOCK.rshopts}. For instance, a
#' private SSH key can be provided as
#' \code{rshopts = c("-i", "~/.ssh/my_private_key")}.  PuTTY users should
#' specify a PuTTY PPK file, e.g.
#' \code{rshopts = c("-i", "C:/Users/joe/.ssh/my_keys.ppk")}.
#' Contrary to \code{rshcmd}, elements of \code{rshopts} are not quoted.
#' 
#' @section Reverse SSH tunneling:
#' The default is to use reverse SSH tunneling (\code{revtunnel = TRUE}) for
#' workers running on other machines.  This avoids the complication of
#' otherwise having to configure port forwarding in firewalls, which often
#' requires static IP address as well as privilieges to edit the firewall,
#' something most users don't have.
#' It also has the advantage of not having to know the internal and / or the
#' public IP address / hostname of the master.
#' Yet another advantage is that there will be no need for a DNS lookup by the
#' worker machines to the master, which may not be configured or is disabled
#' on some systems, e.g. compute clusters.
#'
#' @section Default value of argument \code{rscript}:
#' If \code{homogenenous} is FALSE, the \code{rscript} defaults to
#' \code{"Rscript"}, i.e. it is assumed that the \command{Rscript} executable
#' is available on the \code{PATH} of the worker.
#' If \code{homogenenous} is TRUE, the \code{rscript} defaults to
#' \code{file.path(R.home("bin"), "Rscript")}, i.e. it is basically assumed
#' that the worker and the caller share the same file system and R installation.
#' 
#' @section Default value of argument \code{homogeneous}:
#' The default value of \code{homogenenous} is TRUE if and only if either
#' of the following is fullfilled:
#' \itemize{
#'  \item \code{worker} is \emph{localhost}
#'  \item \code{revtunnel} is FALSE and \code{master} is \emph{localhost}
#'  \item \code{worker} is neither an IP number nor a fully qualified domain
#'        name (FQDN).  A hostname is considered to be a FQDN if it contains
#'        one or more periods
#' }
#' 
#' @section Connection time out:
#' Argument \code{connectTimeout} does \emph{not} work properly on Unix and
#' macOS due to limitation in \R itself.  For more details on this, please see
#' R-devel thread 'BUG?: On Linux setTimeLimit() fails to propagate timeout
#' error when it occurs (works on Windows)' on 2016-10-26
#' (\url{https://stat.ethz.ch/pipermail/r-devel/2016-October/073309.html}).
#' When used, the timeout will eventually trigger an error, but it won't happen
#' until the socket connection timeout \code{timeout} itself happens.
#'
#' @section Communication time out:
#' If there is no communication between the master and a worker within the
#' \code{timeout} limit, then the corresponding socket connection will be
#' closed automatically.  This will eventually result in an error in code
#' trying to access the connection.
#'
#' @rdname makeClusterPSOCK
#' @export
makeNodePSOCK <- function(worker = "localhost", master = NULL, port, connectTimeout = getOption("future.makeNodePSOCK.connectTimeout", 2 * 60), timeout = getOption("future.makeNodePSOCK.timeout", 30 * 24 * 60 * 60), rscript = NULL, homogeneous = NULL, rscript_args = NULL, methods = TRUE, useXDR = TRUE, outfile = "/dev/null", renice = NA_integer_, rshcmd = getOption("future.makeNodePSOCK.rshcmd", NULL), user = NULL, revtunnel = TRUE, rshopts = getOption("future.makeNodePSOCK.rshopts", NULL), rank = 1L, manual = FALSE, dryrun = FALSE, verbose = FALSE) {
  localMachine <- is.element(worker, c("localhost", "127.0.0.1"))

  ## Could it be that the worker specifies the name of the localhost?
  ## Note, this approach preserves worker == "127.0.0.1" if that is given.
  if (!localMachine) {
    localMachine <- is_localhost(worker)
    if (localMachine) worker <- "localhost"
  }

  manual <- as.logical(manual)
  stopifnot(length(manual) == 1L, !is.na(manual))

  dryrun <- as.logical(dryrun)
  stopifnot(length(dryrun) == 1L, !is.na(dryrun))
  
  ## Locate a default SSH client?
  if (!is.null(rshcmd)) {
    rshcmd <- as.character(rshcmd)
    stopifnot(length(rshcmd) >= 1L)
  }

  rshopts <- as.character(rshopts)
  
  user <- as.character(user)
  stopifnot(length(user) <= 1L)
  
  port <- as.integer(port)
  if (is.na(port) || port < 0L || port > 65535L) {
    stop("Invalid port: ", port)
  }

  revtunnel <- as.logical(revtunnel)
  stopifnot(length(revtunnel) == 1L, !is.na(revtunnel))
  
  if (is.null(master)) {
    if (localMachine || revtunnel) {
      master <- "localhost"
    } else {
      master <- Sys.info()[["nodename"]]
    }
  }
  stopifnot(!is.null(master))

  timeout <- as.numeric(timeout)
  stopifnot(length(timeout) == 1L, !is.na(timeout), is.finite(timeout), timeout >= 0)
  
  methods <- as.logical(methods)
  stopifnot(length(methods) == 1L, !is.na(methods))
 
  if (is.null(homogeneous)) {
    homogeneous <- {
      localMachine ||
      (!revtunnel && is_localhost(master)) ||
      (!is_ip_number(worker) && !is_fqdn(worker))
    }
  }
  homogeneous <- as.logical(homogeneous)
  stopifnot(length(homogeneous) == 1L, !is.na(homogeneous))

  if (is.null(rscript)) {
    rscript <- "Rscript"
    if (homogeneous) rscript <- file.path(R.home("bin"), rscript)
  }
  rscript <- as.character(rscript)
  stopifnot(length(rscript) >= 1L)

  rscript_args <- as.character(rscript_args)

  useXDR <- as.logical(useXDR)
  stopifnot(length(useXDR) == 1L, !is.na(useXDR))

  renice <- as.integer(renice)
  stopifnot(length(renice) == 1L)

  rank <- as.integer(rank)
  stopifnot(length(rank) == 1L, !is.na(rank))
  
  verbose <- as.logical(verbose)
  stopifnot(length(verbose) == 1L, !is.na(verbose))

  ## .slaveRSOCK() command already specified?
  if (!any(grepl("parallel:::.slaveRSOCK()", rscript_args, fixed = TRUE))) {
    rscript_args <- c(rscript_args, "-e", shQuote("parallel:::.slaveRSOCK()"))
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

  rscript <- paste(shQuote(rscript), collapse = " ")
  rscript_args <- paste(rscript_args, collapse = " ")
  envvars <- paste0("MASTER=", master, " PORT=", rscript_port, " OUT=", outfile, " TIMEOUT=", timeout, " XDR=", useXDR)
  
  cmd <- paste(rscript, rscript_args, envvars)

  ## Renice?
  if (!is.na(renice) && renice > 0L) {
    cmd <- sprintf("nice +%d %s", renice, cmd)
  }

  if (!localMachine) {
    ## Find default SSH client
    if (is.null(rshcmd)) {
      rshcmd <- find_rshcmd(!localMachine && !manual && !dryrun)
    }
    
    ## Local commands
    rshcmd <- paste(shQuote(rshcmd), collapse = " ")
    if (length(user) == 1L) rshopts <- c("-l", user, rshopts)
    if (revtunnel) {
      rshopts <- c(sprintf("-R %d:%s:%d", rscript_port, master, port), rshopts)
    }
    rshopts <- paste(rshopts, collapse = " ")
    local_cmd <- paste(rshcmd, rshopts, worker, shQuote(cmd))
  } else {
    local_cmd <- cmd
  }
  stopifnot(length(local_cmd) == 1L)
  
  if (manual || dryrun) {
    msg <- c("----------------------------------------------------------------------", sprintf("Manually start worker #%s on %s with:", rank, sQuote(worker)), sprintf("  %s", cmd))
    if (!localMachine) {
      msg <- c(msg, "Alternatively, start it from the local machine with:", sprintf("  %s", local_cmd))
    }
    msg <- paste(c(msg, ""), collapse = "\n")
    cat(msg)
    utils::flush.console()
    if (dryrun) return(NULL)
  } else {
    if (verbose) {
      message(sprintf("Starting worker #%s on %s: %s", rank, sQuote(worker), local_cmd))
    }
    input <- if (.Platform$OS.type == "windows") "" else NULL
    system(local_cmd, wait = FALSE, input = input)
  }

  if (verbose) {
    message(sprintf("Waiting for worker #%s on %s to connect back", rank, sQuote(worker)))
  }
  
  con <- local({
     ## Apply connection time limit "only to the rest of the current computation".
     ## NOTE: Regardless of transient = TRUE / FALSE, it still seems we need to
     ##       undo it manually :/  /HB 2016-11-05
     setTimeLimit(elapsed = connectTimeout)
     on.exit(setTimeLimit(elapsed = Inf))
     
     socketConnection("localhost", port = port, server = TRUE, 
                      blocking = TRUE, open = "a+b", timeout = timeout)
  })

  if (verbose) {
    message(sprintf("Connection with worker #%s on %s established", rank, sQuote(worker)))
  }

  structure(list(con = con, host = worker, rank = rank),
            class = if (useXDR) "SOCKnode" else "SOCK0node")
} ## makeNodePSOCK()



## Attaching UUID for each cluster connection.
## This is needed in order to be able to assert that we later
## actually work with the same connection.  See R-devel thread
## 'closeAllConnections() can really mess things up' on 2016-10-30
## (https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html)
add_cluster_uuid <- function(cl) {
  stopifnot(inherits(cl, "cluster"))
  
  for (ii in seq_along(cl)) {
    node <- cl[[ii]]
    if (is.null(node)) next  ## Happens with dryrun = TRUE

    ## Worker does not use connections?  Then nothing to do.
    con <- node$con
    if (is.null(con)) next
    
    uuid <- attr(con, "uuid")
    if (is.null(uuid)) {
      attr(con, "uuid") <- uuid_of_connection(con, keep_source = TRUE)
      node$con <- con
      cl[[ii]] <- node
    }
  }
  
  cl
} ## add_cluster_uuid()


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
    
    stopifnot(length(worker) == 1, length(hostname) == 1)
  
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


## Locate an SSH client
find_rshcmd <- function(must_work = TRUE) {
  cmds <- list("ssh", c("plink", "-ssh"))
  for (cmd in cmds) {
    if (nzchar(Sys.which(cmd[1]))) return(cmd)
  }
  
  cmds_checked <- unlist(lapply(cmds, FUN = function(x) x[1]))
  msg <- sprintf("Failed to locate a default SSH client (checked: %s). Please specify one via argument 'rshcmd'.", paste(sQuote(cmds_checked), collapse = ", ")) #nolint
  if (must_work) stop(msg)

  cmd <- cmds[[1]]
  msg <- sprintf("%s Will use %s.", msg, sQuote(paste(cmd, collapse = " ")))
  warning(msg)
  cmd
}


session_info <- function() {
  list(
    r = c(R.version, os.type = .Platform$OS.type),
    system = as.list(Sys.info()),
    process = list(pid = Sys.getpid()) 
  )
}


add_cluster_session_info <- function(cl) {
  stopifnot(inherits(cl, "cluster"))
  
  for (ii in seq_along(cl)) {
    node <- cl[[ii]]
    if (is.null(node)) next  ## Happens with dryrun = TRUE

    ## Session information already collected?
    if (!is.null(node$session_info)) next

    pid <- capture.output(print(node))
    pid <- as.integer(gsub(".* ", "", pid))
    
    info <- clusterCall(cl[ii], fun = session_info)[[1]]
    stopifnot(info$process$pid == pid)
    node$session_info <- info
    cl[[ii]] <- node
  }
  
  cl
} ## add_cluster_session_info()
