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
} ## .onLoad()


## covr: skip=all
#' @importFrom utils file_test
.onAttach <- function(libname, pkgname) {
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
} ## .onAttach()
