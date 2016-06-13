#' Create a remote future whose value will be resolved asynchroneously in a remote process
#'
#' A remote future is a future that uses remote cluster evaluation,
#' which means that its \emph{value is computed and resolved
#' remotely in another process}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done and from which globals are obtained.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param persistent If FALSE, the evaluation environment is cleared
#' from objects prior to the evaluation of the future.
#' @param workers A cluster object created by
#' \code{\link[parallel]{makeCluster}()}.
#' @param gc If TRUE, the garbage collector run after the future
#' is resolved (in the process that evaluated the future).
#' @param earlySignal Specified whether conditions should be signaled as soon as possible or not.
#' @param myip The external IP address of this machine.
#' If NULL, then it is inferred using an online service (default).
#' @param \dots Not used.
#'
#' @return A \link{ClusterFuture}.
#'
#' @example incl/remote.R
#'
#' @details
#' Note that remote futures use \code{persistent=TRUE} by default.
#'
#' @export
remote <- function(expr, envir=parent.frame(), substitute=TRUE, persistent=TRUE, workers=NULL, gc=FALSE, earlySignal=FALSE, myip=NULL, ...) {
  if (substitute) expr <- substitute(expr)

  stopifnot(length(workers) >= 1L, is.character(workers), !anyNA(workers))

  if (is.character(workers)) {
    if (is.null(myip)) {
      if (all(workers %in% c("localhost", "127.0.0.1"))) {
        ## Just for conveniency, if all workers are on the localhost,
	## then we can use localhost as the response IP too.
        myip <- workers[1]
      } else {
        ## FIXME: The identification of the external IP number relies on
        ## a single third-party server.  This could be improved by falling
        ## back to other servers, cf. https://github.com/phoemur/ipgetter
        myip <- readLines("http://myexternalip.com/raw")
      }
    }
    workers <- ClusterRegistry("start", workers=workers,
                               master=myip, homogeneous=FALSE)
  } else if (!inherits(workers, "cluster")) {
    stop("Argument 'workers' is not of class 'cluster': ", class(workers)[1])
  }

  future <- ClusterFuture(expr=expr, envir=envir, substitute=FALSE, persistent=persistent, workers=workers, gc=gc, earlySignal=earlySignal, ...)
  run(future)
}
class(remote) <- c("remote", "multiprocess", "future", "function")
