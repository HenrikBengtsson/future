#' Create a multisession future whose value will be resolved asynchroneously in a parallel R session
#'
#' A multisession future is a future that uses multisession evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another R session}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done and from which globals are obtained.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param maxSessions The maximum number of multisession future that
#' can be active at the same time before blocking.
#' @param \dots Not used.
#'
#' @return A \link{ClusterFuture}.
#'
## @example incl/multisession.R
#'
#' @details
#' This function will block if all available R session are occupied
#' and will be unblocked as soon as one of the already running
#' multisession futures is resolved.  For the total number of
#' R sessions available to the current R process, see
#' \code{\link{availableSessions}()}.
#'
#' The preferred way to create an multisession future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(multisession)} such that it becomes the default
#' mechanism for all futures.  After this \code{\link{future}()}
#' and \code{\link{\%<=\%}} will create \emph{multisession futures}.
#'
#' @export
multisession <- function(expr, envir=parent.frame(), substitute=TRUE, maxSessions=availableSessions(), ...) {
  if (substitute) expr <- substitute(expr)
  maxSessions <- as.integer(maxSessions)
  stopifnot(length(maxSessions) == 1, is.finite(maxSessions), maxSessions >= 1)
  if (maxSessions == 1L) {
    return(lazy(expr, envir=envir, substitute=FALSE, globals=TRUE, local=TRUE))
  }

  cluster <- sessions("start", n=maxSessions)

  future <- MultisessionFuture(expr=expr, envir=envir, substitute=FALSE, cluster=cluster, ...)
  run(future)
}


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
