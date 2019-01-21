#' Create a multisession future whose value will be resolved asynchronously in a parallel \R session
#'
#' A multisession future is a future that uses multisession evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another \R session}.
#'
#' @inheritParams multiprocess
#' @inheritParams cluster
#' @inheritParams Future-class
#' @inheritParams future
#'
#' @return A \link{MultisessionFuture}.
#' If \code{workers == 1}, then all processing using done in the
#' current/main \R session and we therefore fall back to using
#' a lazy future.
#'
## FIXME: It seem that multisession futures in examples gives errors
##        with R CMD check, e.g. "cannot open file 'future-Ex.Rout':
##        Permission denied".  Because of this we use \donttest{}.
#'@example incl/multisession.R
#'
#' @details
#' The background \R sessions (the "workers") are created using
#' \code{\link{makeClusterPSOCK}()}.
#' 
#' The \code{multisession()} function will block if all available
#' \R session are occupied
#' and will be unblocked as soon as one of the already running
#' multisession futures is resolved.  For the total number of
#' \R sessions available including the current/main \R process, see
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
#' @seealso
#' For processing in multiple forked \R sessions, see
#' \link{multicore} futures.
#' For multicore processing with fallback to multisession where
#' the former is not supported, see \link{multiprocess} futures.
#'
#' Use \code{\link{availableCores}()} to see the total number of
#' cores that are available for the current \R session.
#'
#' @export
multisession <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, persistent = FALSE, workers = availableCores(), gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)
  if (is.function(workers)) workers <- workers()
  workers <- as.integer(workers)
  stop_if_not(length(workers) == 1, is.finite(workers), workers >= 1)

  ## Fall back to lazy sequential futures if only a single R session can be used,
  ## that is, then use the current main R process.
  if (workers == 1L) {
    ## FIXME: How to handle argument 'persistent'? /HB 2016-03-19
    return(sequential(expr, envir = envir, substitute = FALSE, lazy = TRUE, seed = seed, globals = globals, local = TRUE, label = label, ...))
  }

  workers <- ClusterRegistry("start", workers = workers)

  future <- MultisessionFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, persistent = persistent, workers = workers, gc = gc, earlySignal = earlySignal, label = label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(multisession) <- c("multisession", "cluster", "multiprocess", "future", "function")
attr(multisession, "init") <- TRUE
