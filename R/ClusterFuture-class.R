#' An cluster future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the global environment of the cluster node.
#' @param cluster A \code{\link[parallel:makeCluster]{cluster}}.
#' @param \dots Additional named elements of the future.
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
ClusterFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=TRUE, cluster=NULL, ...) {
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

  gp <- getGlobalsAndPackages(expr, envir=envir)

  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    expr <- substitute(local(a), list(a=expr))
  }

  f <- Future(expr=gp$expr, envir=envir, globals=gp$globals, packages=gp$packages, cluster=cluster, node=NA_integer_, ...)
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

  ## Inject code to prevent that nested cluster futures
  ## are spawned off recursively by mistake.
  expr <- substitute({
    options(mc.cores=1L)
    future::plan(future::eager)
    e
  }, list(e=expr))

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


  ## Reset global environment of cluster node such that
  ## previous futures are not affecting this one, which
  ## may happen even if the future is evaluated inside a
  ## local, e.g. local({ a <<- 1 }).
  clusterCall(cl, fun=grmall)
  mdebug("Cleared global environment of cluster node #%d", node)

  ## Export globals
  globals <- future$globals
  if (length(globals) > 0) {
    for (name in names(globals)) {
      ## For instance sendData.SOCKnode(...) may generate warnings
      ## on packages not being available after serialization, e.g.
      ##  In serialize(data, node$con) :
      ## package:future' may not be available when loading
      ## Here we'll suppress any such warnings.
      suppressWarnings({
        clusterCall(cl, fun=gassign, name, globals[[name]])
      })
      mdebug("Exported %s to cluster node #%d", sQuote(name), node)
    }
  }
  ## Not needed anymore
  globals <- NULL

  ## Attach packages that needs to be attached
  packages <- future$packages
  if (length(packages) > 0) {
    clusterCall(cl, fun=lapply, X=packages, FUN=library, character.only=TRUE)
    mdebug("Attaching %d packages (%s) on cluster node #%d",
                    length(packages), hpaste(sQuote(packages)), node)
  }

  ## Add to registry
  FutureRegistry(reg, action="add", future=future)

  future$state <- 'running'

  ## Launch future
  sendCall(cl[[1]], fun=geval, args=list(expr))

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
