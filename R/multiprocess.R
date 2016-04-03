#' Create a multiprocess future whose value will be resolved asynchroneously using multicore or a multisession evaluation
#'
#' A multiprocess future is a future that uses \link{multicore} evaluation
#' if supported, otherwise it uses \link{multisession} evaluation.
#' Regardless, its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done and from which globals are obtained.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param globals If TRUE, global objects are validated at the point
#' in time when the future is created (always before it is resolved),
#' that is, they identified and located.  If some globals fail to be
#' located, an informative error is generated.
#' @param maxCores The maximum number of multiprocess futures that
#' can be active at the same time before blocking.
#' @param earlySignal Specified whether conditions should be signaled as soon as possible or not.
#' @param \dots Not used.
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
multiprocess <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, maxCores=availableCores(), earlySignal=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  fun <- if (supportsMulticore()) multicore else multisession
  fun(expr=expr, envir=envir, substitute=FALSE, globals=globals, maxCores=maxCores, earlySignal=earlySignal, ...)
}
class(multiprocess) <- c("multiprocess", "future", "function")
