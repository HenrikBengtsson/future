#' @importFrom globals globalsOf packagesOf cleanup
#' @importFrom utils packageVersion
exportGlobals <- function(expr, envir, target=envir, tweak=NULL) {
  ## Identify and retrieve globals
  defaultMethod <- "ordered"
  if (packageVersion("globals") <= "0.5.0") defaultMethod <- "conservative"
  globals <- globalsOf(expr, envir=envir,
               tweak=tweak,
               dotdotdot="return",
               primitive=FALSE, base=FALSE,
               unlist=TRUE,
               ## Only for debugging/development; do not rely on this elsewhere!
               mustExist=getOption("future::globalsMustExist", TRUE),
               method=getOption("future::globalsMethod", defaultMethod)
             )

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## Tweak expression to be called with global ... arguments?
  if (inherits(globals$`...`, "DotDotDotList")) {
    ## Missing global '...'?
    if (!is.list(globals$`...`)) {
      stop("Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: ", paste(deparse(expr), collapse="; "))
    }
   globals$`<future-call-arguments>` <- globals$`...`
   globals$`...` <- NULL
   ## To please R CMD check
    a <- `<future-call-arguments>` <- NULL
    rm(list=c("a", "<future-call-arguments>"))
   expr <- substitute({
      do.call(function(...) a, args=`<future-call-arguments>`)
    }, list(a=expr))
  }

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## Drop all globals which are located in one of
  ## the packages in 'pkgs'.  They will be available
  ## since those packages are attached.
  pkgs <- packagesOf(globals)
  where <- attr(globals, "where")

  names <- names(globals)
  keep <- rep(TRUE, times=length(globals))
  names(keep) <- names
  for (name in names) {
    pkg <- environmentName(where[[name]])
    if (pkg %in% pkgs) keep[name] <- FALSE
  }
  if (!all(keep)) globals <- globals[keep]
  keep <- NULL ## Not needed anymore

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## ROBUSTNESS: Drop globals that already live in one of
  ## the loaded packages/namespaces.  Should have been
  ## taken care of above, but in case there are any mistakes
  ## we take of it below
  keep <- rep(TRUE, times=length(globals))
  names <- names(globals)
  for (kk in seq_along(globals)) {
    name <- names[kk]
    obj <- globals[[kk]]
    mode <- mode(obj)
    envir <- environment(obj)

    ## Not part of a loaded package / namespace?
    if (is.null(envir)) next
    if (!environmentName(envir) %in% loadedNamespaces()) next

    ## Before deciding to drop, make sure the object with the
    ## the same name truly exist in the environment that it
    ## claims to according to environment().  This will prevent
    ## copies such as FUN <- base::sample from being dropped.
    if (!exists(name, mode=mode, envir=envir, inherits=FALSE)) next
    pkgObj <- get(name, mode=mode, envir=envir, inherits=FALSE)
    if (!identical(pkgObj, obj)) next

    ## Drop - should really not happen with globals (> 0.8.1)
    keep[kk] <- FALSE
  }

  if (!all(keep)) globals <- globals[keep]
  keep <- NULL ## Not needed anymore

  ## Now drop globals that are primitive functions or
  ## that are part of the base packages, which now are
  ## part of 'pkgs' if needed.
  globals <- cleanup(globals)

  ## Nothing do to?
  if (length(globals) == 0) return(invisible(globals))


  ## Inject global objects?
  if (!is.null(target)) {
    for (name in names(globals)) {
      target[[name]] <- globals[[name]]
    }
  }

  invisible(globals)
} # exportGlobals()
