#' Create a multiprocess future whose value will be resolved asynchronously using multicore or a multisession evaluation
#'
#' A multiprocess future is a future that uses \link{multicore} evaluation
#' if supported, otherwise it uses \link{multisession} evaluation.
#' Regardless, its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @inheritParams Future-class
#' @inheritParams future
#' 
#' @param workers The maximum number of multiprocess futures that
#' can be active at the same time before blocking.
#' 
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
multiprocess <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, workers = availableCores(), gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)
  fun <- if (supportsMulticore()) multicore else multisession
  fun(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, workers = workers, gc = gc, earlySignal = earlySignal, label = label, ...)
}
class(multiprocess) <- c("multiprocess", "future", "function")
