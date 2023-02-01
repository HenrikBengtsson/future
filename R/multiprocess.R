#' Create a multiprocess future whose value will be resolved asynchronously using multicore or a multisession evaluation
#'
#' **WARNING: The 'multiprocess' future plan is deprecated.
#' Instead, explicitly specify 'multisession' or 'multicore'.  The former works
#' everywhere and is the recommended one between the two. _Forked processing_,
#' which 'multicore' uses, is unstable in various environment and setups.
#' The 'multiprocess' alias is therefore being phased out, and is now
#' equal to using 'sequential' (sic!)**
#'
#' @inheritParams ClusterFuture-class
#' @inheritParams future
#' @inheritParams Future-class
#' 
#' @param workers Ignored in **future** (>= 1.31.0).
#' 
#' @param \dots Additional arguments passed to [Future()].
#'
#' @return
#' A [SequentialFuture] (sic!) since **future** 1.31.0.
#'
#' @keywords internal
#'
#' @export
multiprocess <- function(..., workers = availableCores(), envir = parent.frame()) {
  .Deprecated(msg = sprintf("Detected creation of a 'multiprocess' future. Strategy 'multiprocess' is deprecated in future (>= 1.20.0) [2020-10-30]. Instead, explicitly specify either 'multisession' (recommended) or 'multicore'. Starting with future 1.31.0 [2023-01-31], 'multiprocess' is the same as 'sequential'."))
  sequential(..., envir = envir)
}
class(multiprocess) <- c("sequential", "uniprocess", "future", "function")
## future (> 1.30.0): 'multiprocess' always resolves to 'sequential'
attr(multiprocess, "init") <- FALSE
