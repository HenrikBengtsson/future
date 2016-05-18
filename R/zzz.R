## covr: skip=all
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
}

parseCmdArgs <- function() {
  cmdargs <- commandArgs()

  args <- list()

  ## Option -p <ncores>
  key <- which(cmdargs == "-p")
  if (length(key) > 0) {
    ## Use only last, iff multiple are given
    if (length(key) > 1) key <- key[length(key)]
    value0 <- cmdargs[key+1L]
    value <- as.integer(value0)
    max <- availableCores(methods="system")

    if (is.na(value) || value <= 0L) {
      msg <- sprintf("future: Ignoring invalid number of processes specified in command-line option: -p %s", value0)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else if (value > max) {
      msg <- sprintf("future: Ignoring requested number of processes, because it is greater than the number of cores/child processes available (=%d) to this R process: -p %s", max, value0)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else {
      args$p <- value
    }
  }

  args
} # parseCmdArgs()
