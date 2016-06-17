## covr: skip=all
.onLoad <- function(libname, pkgname) {
  args <- parseCmdArgs()

  p <- args$p
  if (is.null(p)) {
    plan("default")
  } else {
    mdebug("R command-line argument: -p %s", p)
    ## Apply
    options(mc.cores=p-1L)
    ## options(Ncpus=p-1L) ## FIXME: Does it make sense? /HB 2016-04-02

    ## Set eager/multiprocess futures, unless
    ## another plan is explicitly specified.
    strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
    mdebug("R_FUTURE_PLAN=%s", sQuote(strategy))
    strategy <- getOption("future.plan", strategy)
    mdebug("Option 'future.plan'=%s", sQuote(strategy))
    if (nzchar(strategy)) {
      mdebug("=> plan('default')")
      plan("default")
    } else if (p == 1L) {
      mdebug("=> plan(eager)")
      plan(eager)
    } else {
      mdebug("=> plan(multiprocess, workers=%s)", p)
      plan(multiprocess, workers=p)
    }
  }

  ## Create UUID for this process
  id <- uuid()
  mdebug("R process uuid: %s", id)
} ## .onLoad()


## covr: skip=all
#' @importFrom utils file_test
.onAttach <- function(libname, pkgname) {
  ## Load .future.R script?
  loadDotFuture <- getOption("future.load.startup.script", TRUE)
  if (isTRUE(loadDotFuture)) {
    pathnames <- c(".future.R", "~/.future.R")
    pathnames <- pathnames[file_test("-f", pathnames)]
  
    if (length(pathnames) == 0) {
      mdebug("Future scripts identified: <none>")
      return()
    }
    mdebug("Future scripts identified: %s", paste(sQuote(pathnames), collapse=", "))
    pathname <- pathnames[1]
    mdebug("Future script to load: %s", sQuote(pathname))
    tryCatch({
      source(pathname, chdir=FALSE, echo=FALSE, local=FALSE)
    }, error = function(ex) {
      msg <- sprintf("Failed to source %s file while attaching the future package. Will ignore this error, but please investigate. The error message was: %s", sQuote(pathname), sQuote(ex$message))
      mdebug(msg)
      warning(msg)
    })
  }
} ## .onAttach()
