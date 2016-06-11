## covr: skip=all
#' @importFrom utils file_test
.onLoad <- function(libname, pkgname) {
  args <- parseCmdArgs()

  p <- args$p
  if (is.null(p)) {
    plan("default")
  } else {
    ## Apply
    options(mc.cores=p-1L)
    ## options(Ncpus=p-1L) ## FIXME: Does it make sense? /HB 2016-04-02

    ## Set eager/multiprocess futures, unless
    ## another plan is explicitly specified.
    strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
    strategy <- getOption("future.plan", strategy)
    if (nzchar(strategy)) {
      plan("default")
    } else if (p == 1L) {
      plan(eager)
    } else {
      plan(multiprocess, workers=p)
    }
  }

  ## Create UUID for this process
  uuid()

  ## Load .future.R script?
  loadDotFuture <- getOption("future.load_startup_script", TRUE)
  if (loadDotFuture) {
    pathnames <- c(".future.R", "~/.future.R")
    pathnames <- pathnames[file_test("-f", pathnames)]
  
    if (length(pathnames) == 0) {
      mdebug("Future scripts identified: <none>")
      return()
    }
    mdebug("Future scripts identified: %s", paste(sQuote(pathnames), collapse=", "))
    pathname <- pathnames[1]
    mdebug("Future script to load: %s", sQuote(pathname))
    source(pathname, chdir=FALSE, echo=FALSE, local=FALSE)
  }
} ## .onLoad()


parseCmdArgs <- function() {
  cmdargs <- commandArgs()

  args <- list()

  ## Option --parallel=<n> or -p <n>
  idx <- grep("^(-p|--parallel=.*)$", cmdargs)
  if (length(idx) > 0) {
    ## Use only last, iff multiple are given
    if (length(idx) > 1) idx <- idx[length(idx)]

    cmdarg <- cmdargs[idx]
    if (cmdarg == "-p") {
      cmdarg <- cmdargs[idx+1L]
      value <- as.integer(cmdarg)
      cmdarg <- sprintf("-p %s", cmdarg)
    } else {
      value <- as.integer(gsub("--parallel=", "", cmdarg))
    }

    max <- availableCores(methods="system")
    if (is.na(value) || value <= 0L) {
      msg <- sprintf("future: Ignoring invalid number of processes specified in command-line option: %s", cmdarg)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else if (value > max) {
      msg <- sprintf("future: Ignoring requested number of processes, because it is greater than the number of cores/child processes available (=%d) to this R process: %s", max, cmdarg)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else {
      args$p <- value
    }
  }

  args
} # parseCmdArgs()
