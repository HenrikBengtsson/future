#' Create a multiprocess future whose value will be resolved asynchronously using multicore or a multisession evaluation
#'
#' A multiprocess future is a future that uses \link{multicore} evaluation
#' if supported, otherwise it uses \link{multisession} evaluation.
#' Regardless, its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @inheritParams future
#' @param lazy If \code{FALSE} (default), the future is resolved eagerly
#' (immediately), otherwise not.
#' @param globals (optional) a logical, a character vector,
#' or a named list for controlling how globals are handled.
#' For details, see section 'Globals used by future expressions'
#' in the help for \code{\link{future}()}.
#' @param workers The maximum number of multiprocess futures that
#' can be active at the same time before blocking.
#' @param gc If TRUE, the garbage collector run (in the process that
#' evaluated the future) after the value of the future is collected.
#' @param earlySignal Specified whether conditions should be signaled
#' as soon as possible or not.
#' @param label An optional character string label attached to the future.
#' @param ... Not used.
#'
#' @return A \link{MultiprocessFuture} implemented as either a
#' \link{MulticoreFuture} or a \link{MultisessionFuture}.
#'
#' @example incl/multiprocess.R
#'
#' @seealso
#' Internally \code{\link{multicore}()} and \code{\link{multisession}()}
#' are used.
#'
#' @export
multiprocess <- function(expr, envir=parent.frame(), substitute=TRUE, lazy=FALSE, seed=NULL, globals=TRUE, workers=availableCores(), gc=FALSE, earlySignal=FALSE, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  fun <- if (supportsMulticore()) multicore else multisession
  fun(expr=expr, envir=envir, substitute=FALSE, lazy=lazy, seed=seed, globals=globals, workers=workers, gc=gc, earlySignal=earlySignal, label=label, ...)
}
class(multiprocess) <- c("multiprocess", "future", "function")


