#' A cluster future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the global environment of the cluster node.
#' @param persistent If FALSE, the evaluation environment is cleared
#' from objects prior to the evaluation of the future.
#' @param cluster A \code{\link[parallel:makeCluster]{cluster}}.
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{ClusterFuture}.
#'
#' @seealso
#' To evaluate an expression using "cluster future", see function
#' \code{\link{cluster}()}.
#'
#' @aliases MultisessionFuture MultisessionFuture-class
#' @export
#' @export MultisessionFuture
#' @importFrom digest digest
#' @name ClusterFuture-class
#' @keywords internal
ClusterFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=!persistent, persistent=FALSE, cluster=NULL, ...) {
  defaultCluster <- importCluster("defaultCluster")
  if (substitute) expr <- substitute(expr)
  if (is.null(cluster)) cluster <- defaultCluster()
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

  gp <- getGlobalsAndPackages(expr, envir=envir, persistent=persistent)

  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    gp$expr <- substitute(local(a), list(a=gp$expr))
  }

  f <- MultiprocessFuture(expr=gp$expr, envir=envir, substitute=FALSE, persistent=persistent, globals=gp$globals, packages=gp$packages, cluster=cluster, node=NA_integer_, ...)
  structure(f, class=c("ClusterFuture", class(f)))
}



## We are currently importing the following non-exported functions:
## * parallel:::defaultCluster()
## * parallel:::recvResult()
## * parallel:::sendCall()
importCluster <- function(name=NULL) {
  ns <- getNamespace("parallel")
  if (!exists(name, mode="function", envir=ns, inherits=FALSE)) {
    ## covr: skip=3
    msg <- sprintf("Cluster processing is not supported on this system: %s",
                   sQuote(.Platform$OS))
    mdebug(msg)
    stop(msg, call.=FALSE)
  }
  get(name, mode="function", envir=ns, inherits=FALSE)
}

#' @importFrom parallel clusterCall clusterExport
run.ClusterFuture <- function(future, ...) {
  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  sendCall <- importCluster("sendCall")
  cluster <- future$cluster
  expr <- getExpression(future)
  persistent <- future$persistent

  ## FutureRegistry to use
  reg <- sprintf("cluster-%s", attr(cluster, "name"))


  ## Next available cluster node
  node <- requestNode(await=function() {
    mdebug("Waiting for free cluster node ...")
    FutureRegistry(reg, action="collect-first")
    mdebug("Waiting for free cluster node ... DONE")
  }, cluster=cluster)
  future$node <- node

  ## Cluster node to use
  cl <- cluster[node]


  ## WORKAROUND: When running covr::package_coverage(), the
  ## package being tested may actually not be installed in
  ## library path used by covr.  We here add that path iff
  ## covr is being used. /HB 2016-01-15
  if (is.element("covr", loadedNamespaces())) {
    mdebug("covr::package_coverage() workaround ...")
    libPath <- .libPaths()[1]
    clusterCall(cl, fun=function() .libPaths(c(libPath, .libPaths())))
    mdebug("covr::package_coverage() workaround ... DONE")
  }


  ## (i) Reset global environment of cluster node such that
  ##     previous futures are not affecting this one, which
  ##     may happen even if the future is evaluated inside a
  ##     local, e.g. local({ a <<- 1 }).
  if (!persistent) {
    clusterCall(cl, fun=grmall)
  }


  ## (ii) Attach packages that needs to be attached
  packages <- future$packages
  if (length(packages) > 0) {
    mdebug("Attaching %d packages (%s) on cluster node #%d ...",
                    length(packages), hpaste(sQuote(packages)), node)

    clusterCall(cl, fun=requirePackages, packages)

    mdebug("Attaching %d packages (%s) on cluster node #%d ... DONE",
                    length(packages), hpaste(sQuote(packages)), node)
  }


  ## (iii) Export globals
  globals <- future$globals
  if (length(globals) > 0) {
    for (name in names(globals)) {
      ## For instance sendData.SOCKnode(...) may generate warnings
      ## on packages not being available after serialization, e.g.
      ##  In serialize(data, node$con) :
      ## package:future' may not be available when loading
      ## Here we'll suppress any such warnings.
      mdebug("Exported %s to cluster node #%d ...", sQuote(name), node)
      suppressWarnings({
        clusterCall(cl, fun=gassign, name, globals[[name]])
      })
      mdebug("Exported %s to cluster node #%d ... DONE", sQuote(name), node)
    }
  }
  ## Not needed anymore
  globals <- NULL


  ## Add to registry
  FutureRegistry(reg, action="add", future=future, earlySignal=FALSE)

  ## (iv) Launch future
  sendCall(cl[[1L]], fun=geval, args=list(expr))

  future$state <- 'running'

  invisible(future)
}

#' @export
resolved.ClusterFuture <- function(x, timeout=0.2, ...) {
  ## Is future even launched?
  if (x$state == 'created') return(FALSE)

  ## Is value already collected?
  if (x$state %in% c('finished', 'failed', 'interrupted')) return(TRUE)

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(x)

  cluster <- x$cluster
  node <- x$node
  cl <- cluster[node]

  ## Check if cluster socket connection is available for reading
  con <- cl[[1]]$con
  res <- socketSelect(list(con), write=FALSE, timeout=timeout)

  ## Signal conditions early? (happens only iff requested)
  if (res) signalEarly(x)

  res
}

#' @export
value.ClusterFuture <- function(future, ...) {
  ## Has the value already been collected?
  if (future$state %in% c('finished', 'failed', 'interrupted')) {
    return(NextMethod("value"))
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  recvResult <- importCluster("recvResult")

  cluster <- future$cluster
  node <- future$node
  cl <- cluster[node]

  ## If not, wait for process to finish, and
  ## then collect and record the value
  ack <- tryCatch({
    res <- recvResult(cl[[1]])
    TRUE
  }, simpleError = function(ex) ex)

  if (inherits(ack, "simpleError")) {
    msg <- sprintf("Failed to retrieve the value of %s (%s) from cluster node #%d on %s.  The reason reported was %s", class(future)[1], hexpr(future$expr), node, cl$host, sQuote(ack$message))
    stop(msg)
  }
  stopifnot(isTRUE(ack))

  ## An error?
  if (inherits(res, "try-error")) {
    msg <- simpleError(res)
    mdebug("Received error on future: %s", sQuote(msg))
    attr(res, "condition") <- msg
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
  FutureRegistry(reg, action="remove", future=future, earlySignal=FALSE)

  NextMethod("value")
}


requestNode <- function(await, cluster, maxTries=getOption("future.maxTries", trim(Sys.getenv("R_FUTURE_MAXTRIES", 600L))), delta=getOption("future.interval", 0.001), alpha=getOption("future.alpha", 1.01)) {
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
    length(FutureRegistry(reg, action="list", earlySignal=FALSE))
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
    msg <- sprintf("TIMEOUT: All %d cores are still occupied", total)
    mdebug(msg)
    stop(msg)
  }

  ## Find which node is available
  avail <- rep(TRUE, times=length(cluster))
  futures <- FutureRegistry(reg, action="list", earlySignal=FALSE)
  nodes <- unlist(lapply(futures, FUN=function(f) f$node))
  avail[nodes] <- FALSE

  ## Sanity check
  stopifnot(any(avail))

  node <- which(avail)[1L]
  stopifnot(is.numeric(node), is.finite(node), node >= 1)

  node
}
