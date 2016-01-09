#' An cluster future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @param object An R \link[base]{environment}.
#' @param \dots Not used.
#'
#' @return An object of class \code{ClusterFuture}.
#'
#' @seealso
#' To evaluate an expression using "cluster future", see function
#' \code{\link{cluster}()}.
#'
#' @export
#' @importFrom digest digest
#' @name ClusterFuture-class
#' @keywords internal
ClusterFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, cluster, ...) {
  if (substitute) expr <- substitute(expr)
  if (!inherits(cluster, "cluster")) {
    stop("Argument 'cluster' is not of class 'cluster': ", class(cluster)[1])
  }
  stopifnot(length(cluster) > 0)

  ## Attach name to cluster?
  name <- attr(cluster, "name")
  if (is.null(name)) {
    name <- digest(cluster)
    stopifnot(length(name) > 0, nzchar(name))
    attr(cluster, "name") <- name
  }

  gp <- getGlobalsAndPackages(expr, envir=envir)
  f <- Future(expr=expr, envir=envir, globals=gp$globals, packages=gp$packages, cluster=cluster, node=NA_integer_, ...)
  structure(f, class=c("ClusterFuture", class(f)))
}


importCluster <- function(name=NULL) {
  ns <- getNamespace("parallel")
  if (!exists(name, mode="function", envir=ns, inherits=FALSE)) {
    ## covr: skip=2
    stop("Cluster processing is not supported on this system: ",
         sQuote(.Platform$OS), call.=FALSE)
  }
  get(name, mode="function", envir=ns, inherits=FALSE)
}




#' @importFrom parallel clusterExport
run.ClusterFuture <- function(future, ...) {
  sendCall <- importCluster("sendCall")
  cluster <- future$cluster
  expr <- future$expr

  ## Inject plan(eager) to prevent that nested cluster futures
  ## are spawned off recursively by mistake.
  expr <- substitute({ future::plan(future::eager); e }, list(e=expr))

  ## FutureRegistry to use
  reg <- sprintf("cluster-%s", attr(cluster, "name"))

  ## Next available cluster node
  node <- requestNode(await=function() {
##    message("Waiting for free cluster node ...")
    FutureRegistry(reg, action="collect-first")
##    message("Waiting for free cluster node ... DONE")
  }, cluster=cluster)
  future$node <- node

  ## Cluster node to use
  cl <- cluster[node]

  ## Export globals
  globals <- future$globals
  if (length(globals) > 0) {
    globalAssign <- function(name, value, envir=.GlobalEnv) {
      assign(name, value=value, envir=envir)
      NULL
    }
    for (name in names(globals)) {
      ## For instance sendData.SOCKnode(...) may generate warnings
      ## on packages not being available after serialization, e.g.
      ##  In serialize(data, node$con) :
      ## package:future' may not be available when loading
      ## Here we'll suppress any such warnings.
      suppressWarnings({
        clusterCall(cl, fun=globalAssign, name, globals[[name]])
      })
    }
  }
  ## Not needed anymore
  globals <- NULL

  ## Attach packages that needs to be attached
  packages <- future$packages
  if (length(packages) > 0) {
    clusterCall(cl, fun=lapply, X=packages, FUN=library, character.only=TRUE)
  }

  ## Add to registry
  FutureRegistry(reg, action="add", future=future)

  future$state <- 'running'

  ## Launch future
  sendCall(cl[[1]], fun=eval, args=list(expr))

  invisible(future)
}

#' @export
resolved.ClusterFuture <- function(x, timeout=0.2, ...) {
  ## Is value already collected?
  if (x$state %in% c('finished', 'failed', 'interrupted')) return(TRUE)

  ## Check if cluster socket connection is available for reading
  cluster <- x$cluster
  node <- x$node
  con <- cluster[[node]]$con
  res <- socketSelect(list(con), write=FALSE, timeout=timeout)

  res
}

#' @export
value.ClusterFuture <- function(future, onError=c("signal", "return"), ...) {
  recvResult <- importCluster("recvResult")

  ## Has the value already been collected?
  if (future$state %in% c('finished', 'failed', 'interrupted')) {
    return(NextMethod("value"))
  }

  ## If not, wait for process to finish, and
  ## then collect and record the value
  cluster <- future$cluster
  node <- future$node
  res <- recvResult(cluster[[node]])

  ## An error?
  if (inherits(res, "try-error")) {
    msg <- res
    attr(res, "condition") <- simpleError(msg)
  }

  ## Update value and state
  condition <- attr(res, "condition")
  if (inherits(condition, "simpleError")) {
    future$state <- 'failed'
    future$value <- condition
  } else {
    future$value <- res
    future$state <- 'finished'
  }
  res <- NULL ## Not needed anymore

  ## FutureRegistry to use
  reg <- sprintf("cluster-%s", attr(cluster, "name"))

  ## Remove from registry
  FutureRegistry(reg, action="remove", future=future)

  NextMethod("value")
}


requestNode <- function(await, cluster, maxTries=getOption("future::maxTries", trim(Sys.getenv("R_FUTURE_MAXTRIES", 1000))), delta=getOption("future::interval", 1.0), alpha=1.01) {
  stopifnot(is.function(await))
  stopifnot(inherits(cluster, "cluster"))
  maxTries <- as.integer(maxTries)
  stopifnot(is.finite(maxTries), maxTries > 0)
  stopifnot(is.finite(alpha), alpha > 0)

  ## Maximum number of nodes available
  total <- length(cluster)

  ## FutureRegistry to use
  reg <- sprintf("cluster-%s", attr(cluster, "name"))

  usedNodes <- function() {
    ## Number of unresolved cluster futures
    length(FutureRegistry(reg, action="list"))
  }


  tries <- 1L
  interval <- delta
  finished <- FALSE
  while (tries <= maxTries) {
    finished <- (usedNodes() < total)
    if (finished) break

    ## Wait
    Sys.sleep(interval)

    ## Finish/close cores, iff possible
    await()

    interval <- alpha*interval
    tries <- tries + 1L
  }

  if (!finished) {
    stop(sprintf("TIMEOUT: All %d cores are still occupied", total))
  }

  ## Find which node is available
  avail <- rep(TRUE, times=length(cluster))
  futures <- FutureRegistry(reg, action="list")
  nodes <- unlist(lapply(futures, FUN=function(f) f$node))
  avail[nodes] <- FALSE

  ## Sanity check
  stopifnot(any(avail))

  node <- which(avail)[1L]
  stopifnot(is.numeric(node), is.finite(node), node >= 1)

  node
}


attachedPackages <- function() {
  pkgs <- search()
  pkgs <- grep("^package:", pkgs, value=TRUE)
  pkgs <- gsub("^package:", "", pkgs)
  pkgs
}

#' @importFrom globals globalsOf packagesOf cleanup
#' @importFrom utils head object.size
#' @importFrom parallel clusterCall
getGlobalsAndPackages <- function(expr, envir=parent.frame(), ...) {
  ## Local functions
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
  globals <- globalsOf(expr, envir=envir, substitute=FALSE, tweak=tweakExpression, dotdotdot="return", primitive=FALSE, base=FALSE, unlist=TRUE)

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
