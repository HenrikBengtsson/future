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
cluster <- function(expr, envir=parent.frame(), substitute=TRUE, cluster, ...) {
  if (substitute) expr <- substitute(expr)
  if (!inherits(cluster, "cluster")) {
    stop("Argument 'cluster' is not of class 'cluster': ", class(cluster)[1])
  }

  future <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, cluster=cluster)
  run(future)
}

