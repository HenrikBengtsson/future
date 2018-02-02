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
#' @export
#'
#' @keywords internal
getGlobalsAndPackages <- function(expr, envir = parent.frame(), tweak = tweakExpression, globals = TRUE, resolve = getOption("future.globals.resolve", FALSE), persistent = FALSE, ...) {
  ## Nothing to do?
  if (is.logical(globals) && !globals) {
    return(list(expr = expr, globals = list(), packages = character(0)))
  }
  
  debug <- getOption("future.debug", FALSE)
  if (debug) mdebug("getGlobalsAndPackages() ...")
  
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
    globals.onMissing <- match.arg(globals.onMissing, choices = c("error", "ignore"))
    mustExist <- is.element(globals.onMissing, "error")
  }


  ## Alt 1. Identify globals based on expr, envir and tweak
  if (is.logical(globals)) {
    stopifnot(length(globals) == 1, !is.na(globals))
    if (debug) mdebug("Searching for globals ...")
    ## Algorithm for identifying globals
    globals.method <- getOption("future.globals.method", "ordered")
    globals <- globalsOf(
                 ## Passed to globals::findGlobals()
                 expr, envir = envir, substitute = FALSE, tweak = tweak,
                 ## Passed to globals::findGlobals() via '...'
                 dotdotdot = "return",
                 method = globals.method,
                 unlist = TRUE,
                 ## Passed to globals::globalsByName()
                 mustExist = mustExist,
                 recursive = TRUE
               )
    if (debug) mdebug("- globals found: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
    if (debug) mdebug("Searching for globals ... DONE")
  } else if (is.character(globals)) {
    if (debug) mdebug("Retrieving globals ...")
    globals <- globalsByName(globals, envir = envir, mustExist = mustExist)
    if (debug) mdebug("- globals retrieved: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
    if (debug) mdebug("Retrieving globals ... DONE")
  } else if (inherits(globals, "Globals")) {
    if (debug) mdebug("- globals passed as-is: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
  } else if (is.list(globals)) {
    if (debug) mdebug("- globals passed as-list: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
  } else {
    stop("Argument 'globals' must be either a logical scalar or a character vector: ", mode(globals))
  }
  ## Make sure to preserve 'resolved' attribute
  globals <- as.FutureGlobals(globals)
  stopifnot(inherits(globals, "FutureGlobals"))

  ## Nothing more to do?
  if (length(globals) == 0) {
    if (debug) {
      mdebug("- globals: [0] <none>")
      mdebug("getGlobalsAndPackages() ... DONE")
    }
    return(list(expr = expr, globals = list(), packages = character(0)))
  }

  ## Are globals already resolved?
  t <- attr(globals, "resolved")
  if (isTRUE(t)) {
    resolve <- FALSE
    if (debug) mdebug("Resolving globals: %s (because already done)", resolve)
  } else {
    if (debug) mdebug("Resolving globals: %s", resolve)
  }
  stopifnot(is.logical(resolve), length(resolve) == 1L, !is.na(resolve))

  exprOrg <- expr

  ## Tweak expression to be called with global ... arguments?
  if (length(globals) > 0 && inherits(globals[["..."]], "DotDotDotList")) {
    if (debug) mdebug("Tweak future expression to call with '...' arguments ...")
    ## Missing global '...'?
    if (!is.list(globals[["..."]])) {
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
    rm(list = c("a", "future.call.arguments"))
    expr <- substitute({
      ## covr: skip=1
      do.call(function(...) a, args = `future.call.arguments`)
    }, list(a = expr))
    if (debug) mdebug("Tweak future expression to call with '...' arguments ... DONE")
  }

  ## Resolve futures and turn into already-resolved "constant" futures
  ## We restrict ourselves to this here in order to avoid having to
  ## recursively try to resolve everything in every global which may
  ## or may not point to packages (include base R package)
  if (resolve && length(globals) > 0L) {
    if (debug) mdebug("Resolving any globals that are futures ...")
    globals <- as.FutureGlobals(globals)

    ## Unless already resolved, perform a shallow resolve
    if (attr(globals, "resolved")) {
      idxs <- which(unlist(lapply(globals, FUN = inherits, "Future"), use.names = FALSE))
      if (debug) mdebug("Number of global futures: %d", length(idxs))
      
      ## Nothing to do?
      if (length(idxs) > 0) {
        if (debug) mdebug("Global futures (not constant): %s", hpaste(sQuote(names(globals[idxs]))))
        valuesF <- values(globals[idxs])
        globals[idxs] <- lapply(valuesF, FUN = ConstantFuture)
      }
    }

    if (debug) {
      mdebug("- globals: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
      mdebug("Resolving any globals that are futures ... DONE")
    }
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
    keep <- rep(TRUE, times = length(globals))
    names(keep) <- names
    for (name in names) {
      pkg <- environmentName(where[[name]])
      pkg <- gsub("^package:", "", pkg)
      if (pkg %in% pkgs) {
        ## Only drop exported objects
        if (exists(name, envir = asPkgEnvironment(pkg)))
          keep[name] <- FALSE
      }
    }

    if (!all(keep)) globals <- globals[keep]

    ## Now drop globals that are primitive functions or
    ## that are part of the base packages, which now are
    ## part of 'pkgs' if needed.
    globals <- cleanup(globals)
  }


  ## Resolve all remaing globals
  ## FIXME: Should we resolve package names spaces too? Should
  ## We assume they can contain futures?  We do it for now, but
  ## if this turns out to be too expensive, maybe we should
  ## only dive into such environments if they have a certain flag
  ## set.  /HB 2016-02-04
  if (resolve && length(globals) > 0L) {
    if (debug) mdebug("Resolving futures part of globals (recursively) ...")
    globals <- resolve(globals, value = TRUE, recursive = TRUE)
    if (debug) {
      mdebug("- globals: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
      mdebug("Resolving futures part of globals (recursively) ... DONE")
    }
  }


  ## Protect against references?
  if (length(globals) > 0L) {
    action <- getOption("future.globals.onReference", "ignore")
    if (action != "ignore") {
      if (debug) {
        mdebug("Checking for globals with references (future.globals.onReference = \"%s\") ...", action, appendLF = FALSE)
      }
      t <- system.time({
        assert_no_references(globals, action = action)
      }, gcFirst = FALSE)
      if (debug) mdebug("[%.3f s]", t[3])
    }
  }
  
  ## Protect against user error exporting too large objects?
  if (length(globals) > 0L) {
    ## Maximum size of globals (to prevent too large exports) = 500 MiB
    maxSizeOfGlobals <- getOption("future.globals.maxSize", 500 * 1024 ^ 2)
    maxSizeOfGlobals <- as.numeric(maxSizeOfGlobals)
    stopifnot(!is.na(maxSizeOfGlobals), maxSizeOfGlobals > 0)
    
    if (is.finite(maxSizeOfGlobals)) {
      sizes <- lapply(globals, FUN = objectSize)
      sizes <- unlist(sizes, use.names = TRUE)
      total_size <- sum(sizes, na.rm = TRUE)
      attr(globals, "total_size") <- total_size
      if (debug) mdebug("The total size of the %d globals is %s (%s bytes)", length(globals), asIEC(total_size), total_size)
  
      if (total_size > maxSizeOfGlobals) {
        n <- length(sizes)
        o <- order(sizes, decreasing = TRUE)[1:3]
        o <- o[is.finite(o)]
        sizes <- sizes[o]
        classes <- lapply(globals[o], FUN = mode)
        classes <- unlist(classes, use.names = FALSE)
        largest <- sprintf("%s (%s of class %s)", sQuote(names(sizes)), asIEC(sizes), sQuote(classes))
        msg <- sprintf("The total size of the %d globals that need to be exported for the future expression (%s) is %s. This exceeds the maximum allowed size of %s (option 'future.globals.maxSize').", length(globals), sQuote(hexpr(exprOrg)), asIEC(total_size), asIEC(maxSizeOfGlobals))
        if (n == 1) {
          fmt <- "%s There is one global: %s."
        } else if (n == 2) {
          fmt <- "%s There are two globals: %s."
        } else if (n == 3) {
          fmt <- "%s There are three globals: %s."
        } else {
          fmt <- "%s The three largest globals are %s."
        }
        msg <- sprintf(fmt, msg, hpaste(largest, lastCollapse = " and "))
        if (debug) mdebug(msg)
        stop(msg)
      } ## if (total_size > ...)
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
      pkgs <- grep("^package:", pkgs, value = TRUE)
      pkgs <- gsub("^package:", "", pkgs)
      pkgs
    }
    
    ## Record which packages in 'pkgs' that are loaded and
    ## which of them are attached (at this point in time).
    ## isLoaded <- is.element(pkgs, loadedNamespaces())
    isAttached <- is.element(pkgs, attachedPackages())
    pkgs <- pkgs[isAttached]
  }

  if (debug) {
    mdebug("- globals: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
    mdebug("- packages: [%d] %s", length(pkgs), hpaste(sQuote(pkgs)))
    mdebug("getGlobalsAndPackages() ... DONE")
  }

  stopifnot(inherits(globals, "FutureGlobals"))
  
  list(expr = expr, globals = globals, packages = pkgs)
} ## getGlobalsAndPackages()
