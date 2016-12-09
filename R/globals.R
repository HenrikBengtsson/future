#' Retrieves global variables of an expression and their associated packages 
#'
#' @param expr An R expression whose globals should be found.
#' @param envir The environment from which globals should be searched.
#' @param tweak (optional) A function that takes an expression and returned a modified one.
#' @param globals (optional) a logical, a character vector, a named list, or a \link[globals]{Globals} object.  If TRUE, globals are identified by code inspection based on \code{expr} and \code{tweak} searching from environment \code{envir}.  If FALSE, no globals are used.  If a character vector, then globals are identified by lookup based their names \code{globals} searching from environment \code{envir}.  If a named list or a Globals object, the globals are used as is.
#' @param resolve If TRUE, any future that is a global variables (or part of one) is resolved and replaced by a "constant" future.
#' persistent If TRUE, non-existing globals (= identified in expression but not found in memory) are always silently ignored and assumed to be existing in the evaluation environment.  If FALSE, non-existing globals are by default ignored, but may also trigger an informative error if option \code{future.globals.onMissing == "error"}.
#' @param \dots Not used.
#'
#' @return A named list with elements \code{expr} (the tweaked expression), \code{globals} (a named list) and \code{packages} (a character string).
#'
#' @seealso Internally, \code{\link[globals]{globalsOf}()} is used to identify globals and associated packages from the expression.
#'
#' @importFrom globals globalsOf globalsByName as.Globals packagesOf cleanup
#'
#' @keywords internal
getGlobalsAndPackages <- function(expr, envir=parent.frame(), tweak=tweakExpression, globals=TRUE, resolve=getOption("future.globals.resolve", FALSE), persistent=FALSE, ...) {
  ## Nothing to do?
  if (is.logical(globals) && !globals) {
    return(list(expr=expr, globals=list(), packages=character(0)))
  }

  debug <- getOption("future.debug", FALSE)
  
  ## Assert that all identified globals exists when future is created?
  if (persistent) {
    ## If future relies on persistent storage, then the globals may
    ## already exist in the environment that the future is evaluated in.
    mustExist <- FALSE
  } else {
    ## Default for 'future.globals.onMissing':
    ## Note: It's possible to switch between 'ignore' and 'error'
    ##       at any time. Tests handles both cases. /HB 2016-06-18
    globals.onMissing <- getOption("future.globals.onMissing", "ignore")
    globals.onMissing <- match.arg(globals.onMissing, choices=c("error", "ignore"))
    mustExist <- is.element(globals.onMissing, "error")
  }


  ## Alt 1. Identify globals based on expr, envir and tweak
  if (is.logical(globals)) {
    stopifnot(length(globals) == 1, !is.na(globals))
    ## Algorithm for identifying globals
    globals.method <- getOption("future.globals.method", "ordered")
    globals <- globalsOf(
                 ## Passed to globals::findGlobals()
                 expr, envir=envir, substitute=FALSE, tweak=tweak,
                 ## Passed to globals::findGlobals() via '...'
                 dotdotdot="return",
                 method=globals.method,
                 unlist=TRUE,
                 ## Passed to globals::globalsByName()
                 mustExist=mustExist
               )
  } else if (is.character(globals)) {
    globals <- globalsByName(globals, envir=envir, mustExist=mustExist)
  } else if (inherits(globals, "Globals")) {
    ## Keep as is
  } else if (is.list(globals)) {
    globals <- as.Globals(globals)
  } else {
    stop("Argument 'globals' must be either a logical scalar or a character vector: ", mode(globals))
  }
  stopifnot(inherits(globals, "Globals"))

  ## Nothing more to do?
  if (length(globals) == 0) {
    return(list(expr=expr, globals=list(), packages=character(0)))
  }
  
  exprOrg <- expr

  ## Tweak expression to be called with global ... arguments?
  if (length(globals) > 0 && inherits(globals$`...`, "DotDotDotList")) {
    ## Missing global '...'?
    if (!is.list(globals$`...`)) {
      msg <- sprintf("Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: %s", hexpr(exprOrg))
      if (debug) mdebug(msg)
      stop(msg)
    }

    names <- names(globals)
    names[names == "..."] <- "future.call.arguments"
    names(globals) <- names
    names <- NULL

    ## To please R CMD check
    a <- `future.call.arguments` <- NULL
    rm(list=c("a", "future.call.arguments"))
    expr <- substitute({
      ## covr: skip=1
      do.call(function(...) a, args=`future.call.arguments`)
    }, list(a=expr))
  }

  ## Resolve futures and turn into already-resolved "constant" futures
  ## We restrict ourselves to this here in order to avoid having to
  ## recursively try to resolve everything in every global which may
  ## or may not point to packages (include base R package)
  if (resolve && length(globals) > 0L) {
    if (debug) mdebug("Resolving globals that are futures ...")
    idxs <- which(unlist(lapply(globals, FUN=inherits, "Future"), use.names=FALSE))
    if (debug) mdebug("Number of global futures: %d", length(idxs))
    if (length(idxs) > 0) {
      if (debug) mdebug("Global futures: %s", hpaste(sQuote(names(globals[idxs]))))
      valuesF <- values(globals[idxs])
      globals[idxs] <- lapply(valuesF, FUN=ConstantFuture)
      valuesF <- NULL  ## Not needed anymore
    }
    idxs <- NULL ## Not needed anymore
    if (debug) mdebug("Resolving globals that are futures ... DONE")
  }


  pkgs <- NULL
  if (length(globals) > 0L) {
    asPkgEnvironment <- function(pkg) {
      name <- sprintf("package:%s", pkg)
      if (!name %in% search()) return(emptyenv())
      as.environment(name)
    } ## asPkgEnvironment()

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
      pkg <- gsub("^package:", "", pkg)
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

    ## Nothing more to do?
    if (length(globals) == 0) {
      return(list(expr=expr, globals=list(), packages=pkgs))
    }
  }


  ## Resolve all remaing globals
  ## FIXME: Should we resolve package names spaces too? Should
  ## We assume they can contain futures?  We do it for now, but
  ## if this turns out to be too expensive, maybe we should
  ## only dive into such environments if they have a certain flag
  ## set.  /HB 2016-02-04
  if (resolve && length(globals) > 0L) {
    if (debug) mdebug("Resolving futures part of globals (recursively) ...")
    globals <- resolve(globals, value=TRUE, recursive=TRUE)
    if (debug) mdebug("Resolving futures part of globals (recursively) ... DONE")
  }


  ## Protect against user error exporting too large objects?
  if (length(globals) > 0L) {
    ## Maximum size of globals (to prevent too large exports) = 500 MiB
    maxSizeOfGlobals <- getOption("future.globals.maxSize", 500*1024^2)
    maxSizeOfGlobals <- as.numeric(maxSizeOfGlobals)
    stopifnot(!is.na(maxSizeOfGlobals), maxSizeOfGlobals > 0)
    
    if (is.finite(maxSizeOfGlobals) || debug) {
      sizes <- lapply(globals, FUN=objectSize)
      sizes <- unlist(sizes, use.names=TRUE)
      totalExportSize <- sum(sizes, na.rm=TRUE)
      if (debug) mdebug("%d global objects identified with a total size of %s (%s bytes)", length(globals), asIEC(totalExportSize), totalExportSize)
  
      if (totalExportSize > maxSizeOfGlobals) {
        n <- length(sizes)
        o <- order(sizes, decreasing=TRUE)[1:3]
        o <- o[is.finite(o)]
        sizes <- sizes[o]
        classes <- lapply(globals[o], FUN=mode)
        classes <- unlist(classes, use.names=FALSE)
        largest <- sprintf("%s (%s of class %s)", sQuote(names(sizes)), asIEC(sizes), sQuote(classes))
        msg <- sprintf("The total size of all global objects that need to be exported for the future expression (%s) is %s. This exceeds the maximum allowed size of %s (option 'future.globals.maxSize').", sQuote(hexpr(exprOrg)), asIEC(totalExportSize), asIEC(maxSizeOfGlobals))
        if (n == 1) {
          fmt <- "%s There is one global: %s."
        } else if (n == 2) {
          fmt <- "%s There are two globals: %s."
        } else if (n == 3) {
          fmt <- "%s There are three globals: %s."
        } else {
          fmt <- "%s The three largest globals are %s."
        }
        msg <- sprintf(fmt, msg, hpaste(largest, lastCollapse=" and "))
        if (debug) mdebug(msg)
        stop(msg)
      } ## if (totalExportSize > ...)
    }
  } ## if (length(globals) > 0)


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Any packages to export?
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Never attach the 'base' package, because that is always
  ## available for all R sessions / implementations.
  pkgs <- setdiff(pkgs, "base")
  if (length(pkgs) > 0L) {
    ## Local functions
    attachedPackages <- function() {
      pkgs <- search()
      pkgs <- grep("^package:", pkgs, value=TRUE)
      pkgs <- gsub("^package:", "", pkgs)
      pkgs
    }
    
    ## Record which packages in 'pkgs' that are loaded and
    ## which of them are attached (at this point in time).
    ## isLoaded <- is.element(pkgs, loadedNamespaces())
    isAttached <- is.element(pkgs, attachedPackages())
    pkgs <- pkgs[isAttached]
  }

  list(expr=expr, globals=globals, packages=pkgs)
} ## getGlobalsAndPackages()
