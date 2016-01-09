#' @importFrom globals globalsOf packagesOf cleanup
#' @importFrom utils packageVersion
exportGlobals <- function(expr, envir, target=envir, tweak=NULL) {
  ## Identify and retrieve globals
  globals <- globalsOf(expr, envir=envir, substitute=FALSE,
               tweak=tweak,
               dotdotdot="return",
               primitive=FALSE, base=FALSE,
               unlist=TRUE,
               ## Only for debugging/development; do not rely on this elsewhere!
               mustExist=getOption("future::globalsMustExist", TRUE),
               method=getOption("future::globalsMethod", "ordered")
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



#' @importFrom globals globalsOf packagesOf cleanup
#' @importFrom utils head object.size
#' @importFrom parallel clusterCall
getGlobalsAndPackages <- function(expr, envir=parent.frame(), tweak=tweakExpression, ...) {
  ## Local functions
  attachedPackages <- function() {
    pkgs <- search()
    pkgs <- grep("^package:", pkgs, value=TRUE)
    pkgs <- gsub("^package:", "", pkgs)
    pkgs
  }

  asPkgEnvironment <- function(pkg) {
    name <- sprintf("package:%s", pkg)
    if (!name %in% search()) return(emptyenv())
    as.environment(name)
  } ## asPkgEnvironment()


  ## Default maximum export size is 100 MiB for now. /HB 2015-04-25
  maxSizeOfGlobals <- Sys.getenv("FUTURE_MAXSIZE_GLOBALS", "104857600")
  maxSizeOfGlobals <- getOption("future::maxSizeOfGlobals", maxSizeOfGlobals)
  maxSizeOfGlobals <- as.numeric(maxSizeOfGlobals)
  stopifnot(!is.na(maxSizeOfGlobals), maxSizeOfGlobals > 0)


  ## Identify globals
  globals <- globalsOf(expr, envir=envir, substitute=FALSE,
               tweak=tweak,
               dotdotdot="return",
               primitive=FALSE, base=FALSE,
               unlist=TRUE,
               ## Only for debugging/development; do not rely on this elsewhere!
               mustExist=getOption("future::globalsMustExist", TRUE),
               method=getOption("future::globalsMethod", "ordered")
             )

  ## Tweak expression to be called with global ... arguments?
  if (inherits(globals$`...`, "DotDotDotList")) {
    ## Missing global '...'?
    if (!is.list(globals$`...`)) {
      stop("Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: ", paste(deparse(expr), collapse="; "))
    }

    globals$`future.call.arguments` <- globals$`...`

    ## To please R CMD check
    a <- `future.call.arguments` <- NULL
    rm(list=c("a", "future.call.arguments"))
    expr <- substitute({
      do.call(function(...) a, args=`future.call.arguments`)
    }, list(a=expr))
  }

  pkgs <- NULL
  if (length(globals) > 0L) {
    ## Append packages associated with globals
    pkgs <- packagesOf(globals)

    ## Drop all globals which are located in one of
    ## the packages in 'pkgs'.  They will be available
    ## since those packages are attached.
    where <- attr(globals, "where")

    names <- names(globals)
    keep <- rep(TRUE, times=length(globals))
    names(keep) <- names
    for (name in names) {
      pkg <- environmentName(where[[name]])
      if (pkg %in% pkgs) {
        ## Only drop exported objects
        if (exists(name, envir=asPkgEnvironment(pkg)))
          keep[name] <- FALSE
      }
    }
    if (!all(keep)) globals <- globals[keep]

    ## Now drop globals that are primitive functions or
    ## that are part of the base packages, which now are
    ## part of 'pkgs' if needed.
    globals <- cleanup(globals)
  }

  ## Protect against user error exporting too large objects?
  if (length(globals) > 0L && is.finite(maxSizeOfGlobals)) {
    sizes <- lapply(globals, FUN=object.size)
    sizes <- unlist(sizes, use.names=TRUE)
    totalExportSize <- sum(sizes, na.rm=TRUE)
    if (totalExportSize > maxSizeOfGlobals) {
      sizes <- sort(sizes, decreasing=TRUE)
      sizes <- head(sizes, n=3L)
      largest <- sprintf("%s (%g Mb)", sQuote(names(sizes)), sizes/1024^2)
      msg <- sprintf("The total size of all global objects that need to be exported for the asynchronous expression is %g Mb. This exceeds the maximum allowed size of %g Mb (option 'async::maxSizeOfGlobals'). The top largest objects are %s", totalExportSize/1024^2, maxSizeOfGlobals/1024^2, hpaste(largest, lastCollapse=" and "))
      stop(msg)
    }
  }


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Any packages to export?
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Never attach the 'base' package, because that is always
  ## available for all R sessions / implementations.
  pkgs <- setdiff(pkgs, "base")
  if (length(pkgs) > 0L) {
    ## Record which packages in 'pkgs' that are loaded and
    ## which of them are attached (at this point in time).
    isLoaded <- is.element(pkgs, loadedNamespaces())
    isAttached <- is.element(pkgs, attachedPackages())
    pkgs <- pkgs[isAttached]
  }

  list(globals=globals, packages=pkgs)
} ## getGlobalsAndPackages()
