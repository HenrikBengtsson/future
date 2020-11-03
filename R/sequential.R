#' Create a sequential future whose value will be in the current \R session
#'
#' A sequential future is a future that is evaluated sequentially in the
#' current \R session similarly to how \R expressions are evaluated in \R.
#' The only difference to \R itself is that globals are validated
#' by default just as for all other types of futures in this package.
#'
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @inheritParams Future-class
#' 
#' @return A \link{SequentialFuture}.
#'
#' @example incl/sequential.R
#'
#' @details
#' The preferred way to create a sequential future is not to call these functions
#' directly, but to register them via \code{\link{plan}(sequential)} such that
#' it becomes the default mechanism for all futures.  After this
#' [future()] and \code{\link{\%<-\%}} will create
#' _sequential futures_.
#'
#' @section transparent futures:
#' Transparent futures are sequential futures configured to emulate how R
#' evaluates expressions as far as possible.  For instance, errors and
#' warnings are signaled immediately and assignments are done to the
#' calling environment (without `local()` as default for all other
#' types of futures).  This makes transparent futures ideal for
#' troubleshooting, especially when there are errors.
#'
#' @aliases uniprocess
#' @export
sequential <- function(..., envir = parent.frame()) {
  future <- SequentialFuture(..., envir = envir)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(sequential) <- c("sequential", "uniprocess", "future", "function")

#' @rdname sequential
#' @export
transparent <- function(..., envir = parent.frame()) {
  sequential(..., local = FALSE, envir = envir)
}
class(transparent) <- c("transparent", "sequential", "uniprocess", "future", "function")
