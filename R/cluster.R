#' Create a cluster future whose value will be resolved asynchronously in a parallel process
#'
#' A cluster future is a future that uses cluster evaluation,
#' which means that its _value is computed and resolved in
#' parallel in another process_.
#'
#' @inheritParams ClusterFuture-class
#' @inheritParams multiprocess
#' @inheritParams Future-class
#' @inheritParams future
#'
#' @param \dots Additional named elements passed to [ClusterFuture()].
#'
#' @return A \link{ClusterFuture}.
#'
#' @example incl/cluster.R
#'
#' @details
#' This function will block if all available \R cluster nodes are
#' occupied and will be unblocked as soon as one of the already
#' running cluster futures is resolved.
#'
#' The preferred way to create an cluster future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(cluster)} such that it becomes the default
#' mechanism for all futures.  After this [future()]
#' and \code{\link{\%<-\%}} will create _cluster futures_.
#'
#' @export
cluster <- function(..., workers = availableWorkers(), envir = parent.frame()) {
  future <- ClusterFuture(..., workers = workers, envir = envir)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(cluster) <- c("cluster", "multiprocess", "future", "function")
attr(cluster, "init") <- TRUE
attr(cluster, "tweakable") <- quote(makeClusterPSOCK_args())
