#' Create a cluster future whose value will be resolved asynchronously in a parallel process
#'
#' A cluster future is a future that uses cluster evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @param persistent If FALSE, the evaluation environment is cleared
#' from objects prior to the evaluation of the future.
#' @param workers A cluster object created by
#' \code{\link[parallel]{makeCluster}()}.
#' @param revtunnel If TRUE, reverse SSH tunneling is used for the
#' PSOCK cluster nodes to connect back to the master R process.  This
#' avoids the hassle of firewalls, port forwarding and having to know
#' the internal / public IP address of the master R session.
#' @param user (optional) The user name to be used when communicating
#' with another host.
#' @param homogeneous If TRUE, all cluster nodes is assumed to use the
#' same path to \file{Rscript} as the main R session.  If FALSE, the
#' it is assumed to be on the PATH for each node.
#'
#' @return A \link{ClusterFuture}.
#'
#' @example incl/cluster.R
#'
#' @details
#' This function will block if all available R cluster nodes are
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
  if ("cluster" %in% names(list(...))) {
    .Defunct(msg = "Argument 'cluster' has been renamed to 'workers'. Please update your script/code that uses the future package.")
  }

  if (substitute) expr <- substitute(expr)

  future <- ClusterFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, persistent = persistent, workers = workers, user = user, revtunnel = revtunnel, homogeneous = homogeneous, gc = gc, earlySignal = earlySignal, label = label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(cluster) <- c("cluster", "multiprocess", "future", "function")
attr(cluster, "init") <- TRUE
