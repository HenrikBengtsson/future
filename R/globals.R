#' @importFrom globals globalsOf packagesOf cleanup
#' @importFrom utils packageVersion
exportGlobals <- function(expr, envir, target=envir, tweak=NULL, resolve=getOption("future.globals.resolve", FALSE), persistent=FALSE) {
  gp <- getGlobalsAndPackages(expr, envir=envir, tweak=tweak, resolve=resolve, persistent=persistent)
  globals <- gp$globals

  ## Inject global objects?
  if (!is.null(target)) {
    for (name in names(globals)) {
      target[[name]] <- globals[[name]]
    }
  }

  invisible(globals)
} # exportGlobals()



#' @importFrom globals globalsOf packagesOf cleanup
#' @importFrom utils object.size
getGlobalsAndPackages <- function(expr, envir=parent.frame(), tweak=tweakExpression, resolve=getOption("future.globals.resolve", FALSE), persistent=FALSE, ...) {
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


  ## Default maximum export size is 500 MiB for now. /HB 2016-01-11
  maxSizeOfGlobals <- 500*1024^2
  maxSizeOfGlobals <- Sys.getenv("FUTURE_MAXSIZE_GLOBALS", maxSizeOfGlobals)
  maxSizeOfGlobals <- getOption("future.maxSizeOfGlobals", maxSizeOfGlobals)
  maxSizeOfGlobals <- as.numeric(maxSizeOfGlobals)
  stopifnot(!is.na(maxSizeOfGlobals), maxSizeOfGlobals > 0)

  mustExist <- getOption("future.globalsMustExist", TRUE)

  ## If future relies on persistent storage, then the globals may
  ## already exist in the environment that the future is evaluated in.
  mustExist <- mustExist && !persistent

  exprOrg <- expr

  ## Identify globals
  globals <- globalsOf(expr, envir=envir, substitute=FALSE,
               tweak=tweak,
               dotdotdot="return",
               primitive=FALSE, base=FALSE,
               unlist=TRUE,
               ## Only for debugging/development; do not rely on this elsewhere!
               mustExist=mustExist,
               method=getOption("future.globalsMethod", "ordered")
             )

  ## Tweak expression to be called with global ... arguments?
  if (inherits(globals$`...`, "DotDotDotList")) {
    ## Missing global '...'?
    if (!is.list(globals$`...`)) {
      msg <- sprintf("Did you mean to create the future within a function?  Invalid future expression tries to use global '...' variables that do not exist: %s", hexpr(exprOrg))
      mdebug(msg)
      stop(msg)
    }

    globals$`future.call.arguments` <- globals$`...`
    globals$`...` <- NULL

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
    mdebug("Resolving globals that are futures ...")
    idxs <- which(unlist(lapply(globals, FUN=inherits, "Future")))
    mdebug("Number of global futures: %d", length(idxs))
    if (length(idxs) > 0) {
      mdebug("Global futures: %s", hpaste(sQuote(names(globals[idxs]))))
      valuesF <- values(globals[idxs])
      globals[idxs] <- lapply(valuesF, FUN=ConstantFuture)
      valuesF <- NULL  ## Not needed anymore
    }
    idxs <- NULL ## Not needed anymore
    mdebug("Resolving global that are futures ... DONE")
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
  }


  ## Resolve all remaing globals
  ## FIXME: Should we resolve package names spaces too? Should
  ## We assume they can contain futures?  We do it for now, but
  ## if this turns out to be too expensive, maybe we should
  ## only dive into such environments if they have a certain flag
  ## set.  /HB 2016-02-04
  if (resolve && length(globals) > 0L) {
    mdebug("Resolving futures part of globals (recursively) ...")
    globals <- resolve(globals, value=TRUE, recursive=TRUE)
    mdebug("Resolving futures part of globals (recursively) ... DONE")
  }


  ## Protect against user error exporting too large objects?
  if (length(globals) > 0L && is.finite(maxSizeOfGlobals)) {
    sizes <- lapply(globals, FUN=object.size)
    sizes <- unlist(sizes, use.names=TRUE)
    totalExportSize <- sum(sizes, na.rm=TRUE)
    if (totalExportSize > maxSizeOfGlobals) {
      o <- order(sizes, decreasing=TRUE)[1:3]
      o <- o[is.finite(o)]
      sizes <- sizes[o]
      classes <- lapply(globals[o], FUN=mode)
      classes <- unlist(classes, use.names=FALSE)
      largest <- sprintf("%s (%s of class %s)", sQuote(names(sizes)), asIEC(sizes), sQuote(classes))
      msg <- sprintf("The total size of all global objects that need to be exported for the future expression (%s) is %s. This exceeds the maximum allowed size of %s (option 'future.maxSizeOfGlobals').", sQuote(hexpr(exprOrg)), asIEC(totalExportSize), asIEC(maxSizeOfGlobals))
      n <- length(largest)
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
      mdebug(msg)
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

  list(expr=expr, globals=globals, packages=pkgs)
} ## getGlobalsAndPackages()
