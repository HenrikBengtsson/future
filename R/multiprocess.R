#' Create a multiprocess future whose value will be resolved asynchronously using multicore or a multisession evaluation
#'
#' A multiprocess future is a future that uses \link{multicore} evaluation
#' if supported, otherwise it uses \link{multisession} evaluation.
#' Regardless, its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @inheritParams ClusterFuture-class
#' @inheritParams future
#' @inheritParams Future-class
#' 
#' @param workers A positive numeric scalar or a function specifying the
#' maximum number of parallel futures that can be active at the same time
#' before blocking.
#' If a function, it is called without arguments \emph{when the future
#' is created} and its value is used to configure the workers.
#' The function should return a numeric scalar.
#' 
#' @param \dots Additional named elements passed to \code{\link{Future}()}.
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
attr(multiprocess, "init") <- NA ## Set to FALSE/TRUE in .onLoad()
