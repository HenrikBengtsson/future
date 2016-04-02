## covr: skip=all
.onLoad <- function(libname, pkgname) {
  parseCmdArgs()
  uuid()
  plan("default")
}

parseCmdArgs <- function() {
  args <- commandArgs()

  ## Option -p <ncores>
  key <- which(args == "-p")
  if (length(key) > 0) {
    ## Use only last, iff multiple are given
    if (length(key) > 1) key <- key[length(key)]
    value0 <- args[key+1L]
    value <- as.integer(value0)
    max <- availableCores(methods="system")

    if (is.na(value) || value <= 0L) {
      msg <- sprintf("future: Invalid number of processes specified in command-line option: -p %s", value0)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else if (value > max) {
      msg <- sprintf("future: Trying to request more processes than number of cores available (=%d) on the system: -p %s", max, value0)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else {
      ## Apply
      options(mc.cores=value-1L)
      ## options(Ncpus=value-1L) ## FIXME: Does it make sense? /HB 2016-04-02
    }
  }
} # parseCmdArgs()
