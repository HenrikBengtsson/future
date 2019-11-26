## covr: skip=all
.onLoad <- function(libname, pkgname) {
  debug <- isTRUE(as.logical(Sys.getenv("R_FUTURE_DEBUG", FALSE)))
  if (debug) options(future.debug = TRUE)
  debug <- getOption("future.debug", debug)
  
  ## Automatically play nice when 'R CMD check' runs?
  if (isTRUE(as.logical(Sys.getenv("R_FUTURE_R_CMD_CHECK_NICE", TRUE))) && inRCmdCheck()) {
    if (debug) mdebug("Detected 'R CMD check':\n - adjusting defaults to be a good citizen")
    ## To be nicer to test environments (e.g. CRAN, Travis CI and AppVeyor CI),
    ## timeout much earlier than the default 30 days. This will also give a more
    ## informative error message produced by R itself, rather than whatever the
    ## test environment produces.
    ## NOTE: By using environment variables, instead of R options, we can make
    ## sure these settings are also passed down to child processes, including
    ## nested ones.
    Sys.setenv(R_FUTURE_MAKENODEPSOCK_CONNECTTIMEOUT = 2 * 60)
    Sys.setenv(R_FUTURE_MAKENODEPSOCK_TIMEOUT = 2 * 60)
    Sys.setenv(R_FUTURE_WAIT_INTERVAL = 0.01) ## 0.01s (instead of default 0.2s)
    
    ## Collect more session details from workers to helps troubleshooting on
    ## remote servers, e.g. CRAN servers
    Sys.setenv(R_FUTURE_MAKENODEPSOCK_SESSIONINFO_PKGS = TRUE)

    ## Automatically kill stray cluster workers, if possible
    Sys.setenv(R_FUTURE_MAKENODEPSOCK_AUTOKILL = TRUE)

    ## Label cluster workers, if possible
    Sys.setenv(R_FUTURE_MAKENODEPSOCK_RSCRIPT_LABEL = TRUE)

    ## Lower the risk for port clashes by using a large pool of random ports.
    ## The default 11000:11999 tend to fail occassionally on CRAN but also
    ## locally.
    Sys.setenv(R_FUTURE_RANDOM_PORTS = "20000:39999")
  }
  
  if (debug) {
    envs <- Sys.getenv()
    envs <- envs[grep("R_FUTURE_", names(envs), fixed = TRUE)]
    envs <- sprintf("- %s=%s", names(envs), sQuote(envs))
    mdebug(paste(c("Future-specific environment variables:", envs), collapse = "\n"))
  }

  ## Does multiprocess resolve to multisession? If so, then
  ## plan(multiprocess) should initiate the workers.
  if (is.na(attr(multiprocess, "init", exact = TRUE))) {
    attr(multiprocess, "init") <<- !supportsMulticore()
  }
  
  ## Initiate the R session UUID, which will also set/update
  ## .GlobalEnv$.Random.seed.
  session_uuid(attributes = FALSE)
  
  ## Unless already set, set option 'future.availableCores.fallback'
  ## according to environment variable 'R_FUTURE_AVAILABLECORES_FALLBACK'.
  ncores <- getOption("future.availableCores.fallback")
  if (is.null(ncores)) {
    ncores <- trim(Sys.getenv("R_FUTURE_AVAILABLECORES_FALLBACK"))
    if (nzchar(ncores)) {
      if (debug) mdebugf("R_FUTURE_AVAILABLECORES_FALLBACK=%s", sQuote(ncores))
      if (is.element(ncores, c("NA_integer_", "NA"))) {
        ncores <- NA_integer_
      } else {
        ncores <- as.integer(ncores)
      }
      if (debug) mdebugf(" => options(future.availableCores.fallback = %d)", ncores)
      options(future.availableCores.fallback = ncores)
    }
    ncores <- getOption("future.availableCores.fallback")
  }
  if (!is.null(ncores)) {
    if (debug) mdebugf("Option 'future.availableCores.fallback = %d", ncores)
  }
  
  ## Unless already set, set option 'future.availableCores.system'
  ## according to environment variable 'R_FUTURE_AVAILABLECORES_SYSTEM'.
  ncores <- getOption("future.availableCores.system")
  if (is.null(ncores)) {
    ncores <- trim(Sys.getenv("R_FUTURE_AVAILABLECORES_SYSTEM"))
    if (nzchar(ncores)) {
      if (debug) mdebugf("R_FUTURE_AVAILABLECORES_SYSTEM=%s", sQuote(ncores))
      if (is.element(ncores, c("NA_integer_", "NA"))) {
        ncores <- NA_integer_
      } else {
        ncores <- as.integer(ncores)
      }
      if (debug) mdebugf(" => options(future.availableCores.system = %d)", ncores)
      options(future.availableCores.system = ncores)
    }
    ncores <- getOption("future.availableCores.system")
  }
  if (!is.null(ncores)) {
    if (debug) mdebugf("Option 'future.availableCores.system = %d", ncores)
  }

  ## Unless already set, set option 'future.plan' according to
  ## system environment variable 'R_FUTURE_PLAN'.
  strategy <- getOption("future.plan")
  if (is.null(strategy)) {
    strategy <- trim(Sys.getenv("R_FUTURE_PLAN"))
    if (nzchar(strategy)) {
      if (debug) {
        mdebugf("R_FUTURE_PLAN=%s", sQuote(strategy))
        mdebugf(" => options(future.plan = '%s')", strategy)
      }
      options(future.plan = strategy)
    }
    strategy <- getOption("future.plan")
  }
  if (!is.null(strategy)) {
    if (debug) {
      if (is.character(strategy)) {
        mdebugf("Option 'future.plan' = %s", sQuote(strategy))
      } else {
        mdebugf("Option 'future.plan' of type %s", sQuote(mode(strategy)))
      }
    }
  }

  args <- parseCmdArgs()
  p <- args$p
  if (!is.null(p)) {
    if (debug) mdebugf("R command-line argument: -p %s", p)
    
    ## Apply
    options(mc.cores = p)
    ## options(Ncpus = p) ## FIXME: Does it make sense? /HB 2016-04-02

    ## Set 'future.plan' option?
    if (!is.null(strategy)) {
      if (debug) mdebug(" => 'future.plan' already set.")
    } else if (p == 1L) {
      if (debug) mdebug(" => options(future.plan = sequential)")
      options(future.plan = sequential)
    } else {
      if (debug) mdebugf(" => options(future.plan = tweak(multiprocess, workers = %s))", p)
      options(future.plan = tweak(multiprocess, workers = p))
    }
  }

  ## Create UUID for this process
  id <- session_uuid()

  if (debug) {
    mdebugf("R process uuid: %s", id)
    mdebug("Setting plan('default')")
  }
  
  ## NOTE: Don't initiate during startup - it might hang / give an error
  plan("default", .init = FALSE)
} ## .onLoad()


## covr: skip=all
#' @importFrom utils file_test
.onAttach <- function(libname, pkgname) {
  ## Source .future.R script, if one exists
  sourceFutureStartupScript()
}


sourceFutureStartupScript <- function(default = c(".future.R", "~/.future.R"), debug = getOption("future.debug", FALSE)) {
  ## Get default from env var?
  pathnames <- Sys.getenv("R_FUTURE_STARTUP_SCRIPT")
  if (nchar(pathnames) == 0L) {
    pathnames <- TRUE
  } else {
    if (debug) mdebug("R_FUTURE_STARTUP_SCRIPT: ", sQuote(pathnames))
    pathnames <- strsplit(pathnames, split = "[:;]", fixed = FALSE)[[1]]
    if (identical(toupper(pathnames), "TRUE")) {
      pathnames <- TRUE
    } else if (identical(toupper(pathnames), "FALSE")) {
      pathnames <- FALSE
    }
  }

  ## Get default from R option?
  pathnames <- getOption("future.startup.script", pathnames)
  
  ## BACKWARD COMPATIBILITY
  if (is.logical(pathnames)) {
    if (debug) mdebug("Option 'future.startup.script': ", paste(pathnames, collapse = ", "))
    stop_if_not(length(pathnames) == 1L, !is.na(pathnames))
    ## Nothing to do?
    if (!pathnames) {
      if (debug) mdebug("Future startup scripts disabled")
      return(character(0L))
    }
    pathnames <- default
  }
  
  stop_if_not(is.character(pathnames), !anyNA(pathnames))

  ## Nothing to do?
  if (length(pathnames) == 0L) {
    if (debug) mdebug("No future startup scripts specified")
    return(character(0L))
  }
  
  if (debug) mdebug("Future startup scripts considered: ", paste(sQuote(pathnames), collapse = ", "))
  pathnames <- pathnames[file_test("-f", pathnames)]

  ## Nothing to do?
  if (length(pathnames) == 0L) {
    if (debug) mdebug("Future startup scripts found: <none>")
    return(character(0L))
  }
  
  pathname <- pathnames[1]
  if (debug) {
    mdebugf("Future startup scripts found: %s", paste(sQuote(pathnames), collapse = ", "))
    mdebugf("Future startup script to load: %s", sQuote(pathname))
  }
  
  tryCatch({
    source(pathname, chdir = FALSE, echo = FALSE, local = FALSE)
  }, error = function(ex) {
    msg <- sprintf("Failed to source %s file while attaching the future package. Will ignore this error, but please investigate. The error message was: %s", sQuote(pathname), sQuote(ex$message))
    if (debug) mdebug(msg)
    warning(msg)
  })

  pathname
} ## sourceFutureStartupScript()
