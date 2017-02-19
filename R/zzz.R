## covr: skip=all
.onLoad <- function(libname, pkgname) {
  ## Unless already set, set option 'future.availableCores.fallback'
  ## according to environment variable 'R_FUTURE_AVAILABLECORES_FALLBACK'.
  ncores <- getOption("future.availableCores.fallback")
  if (is.null(ncores)) {
    ncores <- trim(Sys.getenv("R_FUTURE_AVAILABLECORES_FALLBACK"))
    if (nzchar(ncores)) {
      mdebug("R_FUTURE_AVAILABLECORES_FALLBACK=%s", sQuote(ncores))
      if (is.element(ncores, c("NA_integer_", "NA"))) {
        ncores <- NA_integer_
      } else {
        ncores <- as.integer(ncores)
      }
      mdebug("=> options(future.availableCores.fallback=%d)", ncores)
      options(future.availableCores.fallback=ncores)
    }
    ncores <- getOption("future.availableCores.fallback")
  }
  if (!is.null(ncores)) {
    mdebug("Option 'future.availableCores.fallback=%d", ncores)
  }
  
  ## Unless already set, set option 'future.availableCores.system'
  ## according to environment variable 'R_FUTURE_AVAILABLECORES_SYSTEM'.
  ncores <- getOption("future.availableCores.system")
  if (is.null(ncores)) {
    ncores <- trim(Sys.getenv("R_FUTURE_AVAILABLECORES_SYSTEM"))
    if (nzchar(ncores)) {
      mdebug("R_FUTURE_AVAILABLECORES_SYSTEM=%s", sQuote(ncores))
      if (is.element(ncores, c("NA_integer_", "NA"))) {
        ncores <- NA_integer_
      } else {
        ncores <- as.integer(ncores)
      }
      mdebug("=> options(future.availableCores.system=%d)", ncores)
      options(future.availableCores.system=ncores)
    }
    ncores <- getOption("future.availableCores.system")
  }
  if (!is.null(ncores)) {
    mdebug("Option 'future.availableCores.system=%d", ncores)
  }

  ## Unless already set, set option 'future.plan' according to
  ## system environment variable 'R_FUTURE_PLAN'.
  strategy <- getOption("future.plan")
  if (is.null(strategy)) {
    strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
    if (nzchar(strategy)) {
      mdebug("R_FUTURE_PLAN=%s", sQuote(strategy))
      mdebug("=> options(future.plan='%s')", strategy)
      options(future.plan=strategy)
    }
    strategy <- getOption("future.plan")
  }
  if (!is.null(strategy)) {
    if (is.character(strategy)) {
      mdebug("Option 'future.plan'=%s", sQuote(strategy))
    } else {
      mdebug("Option 'future.plan' of type %s", sQuote(mode(strategy)))
    }
  }

  args <- parseCmdArgs()
  p <- args$p
  if (!is.null(p)) {
    mdebug("R command-line argument: -p %s", p)
    
    ## Apply
    options(mc.cores=p-1L)
    ## options(Ncpus=p-1L) ## FIXME: Does it make sense? /HB 2016-04-02

    ## Set 'future.plan' option?
    if (!is.null(strategy)) {
      mdebug("=> 'future.plan' already set.")
    } else if (p == 1L) {
      mdebug("=> options(future.plan=sequential)")
      options(future.plan=sequential)
    } else {
      mdebug("=> options(future.plan=tweak(multiprocess, workers=%s))", p)
      options(future.plan=tweak(multiprocess, workers=p))
    }
  }

  ## Create UUID for this process
  id <- session_uuid(attributes = TRUE)
  mdebug("R process uuid: %s", id)

  mdebug("Setting plan('default')")
  
  ## NOTE: Don't initiate during startup - it might hang / give an error
  plan("default", .init=FALSE)
} ## .onLoad()


## covr: skip=all
#' @importFrom utils file_test
.onAttach <- function(libname, pkgname) {
  ## Load .future.R script?
  loadDotFuture <- getOption("future.startup.loadScript", TRUE)
  if (isTRUE(loadDotFuture)) {
    pathnames <- c(".future.R", "~/.future.R")
    pathnames <- pathnames[file_test("-f", pathnames)]
  
    if (length(pathnames) == 0) {
      mdebug("Future startup scripts identified: <none>")
      return()
    }
    mdebug("Future startup scripts identified: %s", paste(sQuote(pathnames), collapse=", "))
    pathname <- pathnames[1]
    mdebug("Future startup script to load: %s", sQuote(pathname))
    tryCatch({
      source(pathname, chdir=FALSE, echo=FALSE, local=FALSE)
    }, error = function(ex) {
      msg <- sprintf("Failed to source %s file while attaching the future package. Will ignore this error, but please investigate. The error message was: %s", sQuote(pathname), sQuote(ex$message))
      mdebug(msg)
      warning(msg)
    })
  }
} ## .onAttach()
