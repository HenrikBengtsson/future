#' Create a multisession future whose value will be resolved asynchronously in a parallel R session
#'
#' A multisession future is a future that uses multisession evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another R session}.
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @inheritParams cluster
#' @param workers The maximum number of multisession futures that
#' can be active at the same time before blocking.
#'
#' @return A \link{MultisessionFuture}.
#' If \code{workers == 1}, then all processing using done in the
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
#' and \code{\link{\%<-\%}} will create \emph{multisession futures}.
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
multisession <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, persistent = FALSE, workers = availableCores(), gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if ("maxCores" %in% names(list(...))) {
    .Defunct(msg = "Argument 'maxCores' has been renamed to 'workers'. Please update you script/code that uses the future package.")
  }

  if (substitute) expr <- substitute(expr)
  workers <- as.integer(workers)
  stopifnot(length(workers) == 1, is.finite(workers), workers >= 1)

  ## Fall back to lazy sequential futures if only a single R session can be used,
  ## i.e. the use the current main R process.
  if (workers == 1L) {
    ## FIXME: How to handle argument 'persistent'? /HB 2016-03-19
    return(sequential(expr, envir = envir, substitute = FALSE, lazy = TRUE, seed = seed, globals = globals, local = TRUE, label = label))
  }

  workers <- ClusterRegistry("start", workers = workers)

  future <- MultisessionFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, persistent = persistent, workers = workers, gc = gc, earlySignal = earlySignal, label = label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(multisession) <- c("multisession", "cluster", "multiprocess", "future", "function")
attr(multisession, "init") <- TRUE
