#' Create a multiprocess future whose value will be resolved asynchronously using multicore or a multisession evaluation
#'
#' A multiprocess future is a future that uses [multicore] evaluation
#' if supported, otherwise it uses [multisession] evaluation.
#' Regardless, its _value is computed and resolved in
#' parallel in another process_.\cr
#' \cr
#' _WARNING: Consider the 'multiprocess' future plan deprecated.
#' Instead, explicitly specify 'multisession' or 'multicore'.  The former works
#' everywhere and is the recommended one between the two. _Forked processing_,
#' which 'multicore' uses, is unstable in various environment and setups.
#' The 'multiprocess' alias is therefore being phased out._
#'
#' @inheritParams ClusterFuture-class
#' @inheritParams future
#' @inheritParams Future-class
#' 
#' @param workers A positive numeric scalar or a function specifying the
#' maximum number of parallel futures that can be active at the same time
#' before blocking.
#' If a function, it is called without arguments _when the future
#' is created_ and its value is used to configure the workers.
#' The function should return a numeric scalar.
#' 
#' @param \dots Additional arguments passed to [Future()].
#'
#' @return
#' A [MultiprocessFuture] implemented as either a
#' [MulticoreFuture] or a [MultisessionFuture].
#'
#' @example incl/multiprocess.R
#'
#' @seealso
#' Internally [multicore()] and [multisession()]
#' are used.
#'
#' @keywords internal
#'
#' @export
multiprocess <- function(..., workers = availableCores(), envir = parent.frame()) {
  fun <- if (supportsMulticore(warn = TRUE)) multicore else multisession
  fun(..., workers = workers, envir = envir)
}
class(multiprocess) <- c("multiprocess", "future", "function")
attr(multiprocess, "init") <- NA ## Set to FALSE/TRUE in .onLoad()
