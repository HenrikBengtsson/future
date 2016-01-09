#' Create a cluster future whose value will be resolved asynchroneously in a parallel process
#'
#' A cluster future is a future that uses cluster evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done and from which globals are obtained.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param cluster A cluster object created by
#' \code{\link[parallel]{makeCluster}()}.
#' be active at the same time before blocking.
#' @param \dots Not used.
#'
#' @return A \link{ClusterFuture}.
#'
## @example incl/cluster.R
#'
#' @details
#' The preferred way to create an cluster future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(cluster)} such that it becomes the default
#' mechanism for all futures.  After this \code{\link{future}()}
#' and \code{\link{\%<=\%}} will create \emph{cluster futures}.
#'
#' @export
cluster <- function(expr, envir=parent.frame(), substitute=TRUE, cluster=NULL, ...) {
  defaultCluster <- importCluster("defaultCluster")
  if (substitute) expr <- substitute(expr)
  if (is.null(cluster)) cluster <- defaultCluster()
  if (!inherits(cluster, "cluster")) {
    stop("Argument 'cluster' is not of class 'cluster': ", class(cluster)[1])
  }

  future <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, cluster=cluster)
  run(future)
}


#' @export
#' @importFrom parallel makeCluster stopCluster
#' @importFrom utils capture.output
sessions <- local({
  cluster <- NULL

  .makeCluster <- function(n) {
    capture.output({
      cluster <- makeCluster(n)
    })
    cluster
  }

  function(action=c("get", "start", "stop"), n=2L) {
    action <- match.arg(action)
    n <- as.integer(n)
    stopifnot(length(n) == 1, is.finite(n), n >= 1)

    if (is.null(cluster)) {
      cluster <<- .makeCluster(n)
    }

    if (action == "get") {
      return(cluster)
    } else if (action == "start") {
      if (length(cluster) != n) {
        sessions(action="stop")
        cluster <<- .makeCluster(n)
      }
    } else if (action == "stop") {
      try(stopCluster(cluster), silent=TRUE)
      cons <- NULL
      cluster <<- NULL
    }

    invisible(cluster)
  }
})


availableSessions <- function() {
  n <- min(.availableCores(), na.rm=TRUE)
  stopifnot(is.finite(n))
  n
} # availableSessions()


#' @export
multisession <- function(expr, envir=parent.frame(), substitute=TRUE, maxSessions=availableSessions(), ...) {
  if (substitute) expr <- substitute(expr)
  maxSessions <- as.integer(maxSessions)
  stopifnot(length(maxSessions) == 1, is.finite(maxSessions), maxSessions >= 1)
  if (maxSessions == 1L) {
    return(eager(expr, envir=envir, substitute=FALSE,
                 globals=globals, local=TRUE))
  }
  sessions("start", n=maxSessions)
  cluster(expr, envir=envir, substitute=FALSE, cluster=sessions(), ...)
}
