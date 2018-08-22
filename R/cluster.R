#' Create a cluster future whose value will be resolved asynchronously in a parallel process
#'
#' A cluster future is a future that uses cluster evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @inheritParams ClusterFuture-class
#' @inheritParams multiprocess
#' @inheritParams Future-class
#' @inheritParams future
#'
#' @param \dots Additional named elements passed to \code{\link{ClusterFuture}()}.
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
#' mechanism for all futures.  After this \code{\link{future}()}
#' and \code{\link{\%<-\%}} will create \emph{cluster futures}.
#'
#' @export
cluster <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, persistent = FALSE, workers = availableWorkers(), user = NULL, revtunnel = TRUE, homogeneous = TRUE, gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)

  future <- ClusterFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, persistent = persistent, workers = workers, user = user, revtunnel = revtunnel, homogeneous = homogeneous, gc = gc, earlySignal = earlySignal, label = label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(cluster) <- c("cluster", "multiprocess", "future", "function")
attr(cluster, "init") <- TRUE
