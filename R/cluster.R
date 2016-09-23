#' Create a cluster future whose value will be resolved asynchroneously in a parallel process
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
#' @param reverseTunnel If TRUE, reverse SSH tunneling is used for the
#' PSOCK cluster nodes to connect back to the master R process.  This
#' avoids the hassle of firewalls, port forwarding and having to know
#' the internal / public IP address of the master R session.
#' @param user (optional) The user name to be used when communicating with another host.
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
cluster <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, persistent=FALSE, workers=NULL, user=NULL, reverseTunnel=TRUE, gc=FALSE, earlySignal=FALSE, ...) {
  ## BACKWARD COMPATIBILITY
  args <- list(...)
  if ("cluster" %in% names(args)) {
    workers <- args$cluster
    .Deprecated(msg="Argument 'cluster' has been renamed to 'workers'. Please update your script/code that uses the future package.")
  }

  if (substitute) expr <- substitute(expr)

  future <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, persistent=persistent, workers=workers, user=user, reverseTunnel=reverseTunnel, gc=gc, earlySignal=earlySignal, ...)
  run(future)
}
class(cluster) <- c("cluster", "multiprocess", "future", "function")
