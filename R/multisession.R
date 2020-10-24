#' Create a multisession future whose value will be resolved asynchronously in a parallel \R session
#'
#' A multisession future is a future that uses multisession evaluation,
#' which means that its _value is computed and resolved in
#' parallel in another \R session_.
#'
#' @inheritParams multiprocess
#' @inheritParams cluster
#' @inheritParams Future-class
#' @inheritParams future
#'
#' @param rscript_libs A character vector of \R package library folders that
#' the workers should use.  The default is `.libPaths()` so that multisession
#' workers inherits the same library path as the main \R session.
#' To avoid this, use `plan(multisession, ..., rscript_libs = NULL)`.
#' _Important: Note that the library path is set on the workers when they are
#' created, i.e. when `plan(multisession)` is called.  Any changes to
#' `.libPaths()` in the main R session after the workers have been created
#' will have no effect._
#' This is passed down as-is to [parallelly::makeClusterPSOCK()].
#'
#' @return A \link{MultisessionFuture}.
#' If `workers == 1`, then all processing using done in the
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
#' [makeClusterPSOCK()].
#' 
#' The `multisession()` function will block if all available
#' \R session are occupied
#' and will be unblocked as soon as one of the already running
#' multisession futures is resolved.  For the total number of
#' \R sessions available including the current/main \R process, see
#' [parallelly::availableCores()].
#'
#' A multisession future is a special type of cluster future.
#'
#' The preferred way to create an multisession future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(multisession)} such that it becomes the default
#' mechanism for all futures.  After this [future()]
#' and \code{\link{\%<-\%}} will create _multisession futures_.
#'
#' @seealso
#' For processing in multiple forked \R sessions, see
#' [multicore] futures.
#'
#' Use [parallelly::availableCores()] to see the total number of
#' cores that are available for the current \R session.
#'
#' @export
multisession <- function(..., workers = availableCores(), lazy = FALSE, rscript_libs = .libPaths(), envir = parent.frame()) {
  if (is.function(workers)) workers <- workers()
  workers <- as.integer(workers)
  stop_if_not(length(workers) == 1, is.finite(workers), workers >= 1)

  ## Fall back to lazy sequential futures if only a single R session can be used,
  ## that is, then use the current main R process.
  if (workers == 1L) {
    return(sequential(..., lazy = TRUE, envir = envir))
  }

  future <- MultisessionFuture(..., workers = workers, lazy = lazy, rscript_libs = rscript_libs, envir = envir)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(multisession) <- c("multisession", "cluster", "multiprocess", "future", "function")
attr(multisession, "init") <- TRUE
