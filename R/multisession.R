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
#' @param persistent If FALSE, the evaluation environment is cleared
#' from objects prior to the evaluation of the future.
#' @param maxCores The maximum number of multisession futures that
#' can be active at the same time before blocking.
#' @param earlySignal Specified whether conditions should be signaled as soon as possible or not.
#' @param \dots Not used.
#'
#' @return A \link{MultisessionFuture}.
#' If \code{maxCores == 1}, then all processing using done in the
#' current/main R session and we therefore fall back to using
#' a lazy future.
#'
## FIXME: It seem that multisession futures in examples gives errors
##        with R CMD check, e.g. "cannot open file 'future-Ex.Rout':
##        Permission denied".  Because of this we use \donttest{}.
#'@example incl/multisession.R
#'
#' @details
#' This function will block if all available R session are occupied
#' and will be unblocked as soon as one of the already running
#' multisession futures is resolved.  For the total number of
#' R sessions available including the current/main R process, see
#' \code{\link{availableCores}()}.
#'
#' A multisession future is a special type of cluster future.
#'
#' The preferred way to create an multisession future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(multisession)} such that it becomes the default
#' mechanism for all futures.  After this \code{\link{future}()}
#' and \code{\link{\%<=\%}} will create \emph{multisession futures}.
#'
#' @section Known issues:
#' In the current implementation, \emph{all} background R sessions
#' are allocated and launched in the background \emph{as soon as the
#' first multisession future is created}. This means that more R
#' sessions may be running than what will ever be used.
#' The reason for this is that background sessions are currently
#' created using \code{\link[parallel:makeCluster]{makeCluster}()},
#' which requires that all R sessions are created at once.
#'
#' @seealso
#' For processing in multiple forked R sessions, see
#' \link{multicore} futures.
#' For multicore processing with fallback to multisession where
#' the former is not supported, see \link{multiprocess} futures.
#'
#' Use \code{\link{availableCores}()} to see the total number of
#' cores that are available for the current R session.
#'
#' @export
multisession <- function(expr, envir=parent.frame(), substitute=TRUE, persistent=FALSE, maxCores=availableCores(), earlySignal=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  maxCores <- as.integer(maxCores)
  stopifnot(length(maxCores) == 1, is.finite(maxCores), maxCores >= 1)

  ## Fall back to eager futures if only a single R session can be used,
  ## i.e. the use the current main R process.
  if (maxCores == 1L) {
    ## FIXME: How to handle argument 'persistent'? /HB 2016-03-19
    return(lazy(expr, envir=envir, substitute=FALSE, globals=TRUE, local=TRUE))
  }

  ## IMPORTANT: When we setup a multisession cluster, we need to
  ## account for the main R process as well, i.e. we should setup
  ## a cluster with one less process.
  cluster <- sessions("start", n=maxCores-1L)

  future <- MultisessionFuture(expr=expr, envir=envir, substitute=FALSE, persistent=persistent, cluster=cluster, earlySignal=earlySignal, ...)
  run(future)
}
class(multisession) <- c("multisession", "cluster", "multiprocess", "future", "function")


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

  function(action=c("get", "start", "stop"), n=availableCores()-1L) {
    action <- match.arg(action)
    n <- as.integer(n)
    stopifnot(length(n) == 1, is.finite(n))

    if (is.null(cluster) && action != "stop") {
      cluster <<- .makeCluster(n)
    }

    if (action == "get") {
      return(cluster)
    } else if (action == "start") {
      stopifnot(n >= 1)
      if (length(cluster) != n) {
        sessions(action="stop")
        cluster <<- .makeCluster(n)
      }
    } else if (action == "stop") {
      if (!is.null(cluster)) try(stopCluster(cluster), silent=TRUE)
      cons <- NULL
      cluster <<- NULL
    }

    invisible(cluster)
  }
})
