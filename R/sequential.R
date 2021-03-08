#' Create a sequential future whose value will be in the current \R session
#'
#' A sequential future is a future that is evaluated sequentially in the
#' current \R session similarly to how \R expressions are evaluated in \R.
#' The only difference to \R itself is that globals are validated
#' by default just as for all other types of futures in this package.
#'
#' @details
#' This function is _not_ meant to be called directly.  Instead, the
#' typical usages are:
#'
#' ```r
#' # Evaluate futures sequentially in the current R process
#' plan(sequential)
#' ```
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
#'
#' @section transparent futures (troubleshooting only):
#' Transparent futures are sequential futures configured to emulate how R
#' evaluates expressions as far as possible.  For instance, errors and
#' warnings are signaled immediately and assignments are done to the
#' calling environment (without `local()` as default for all other
#' types of futures).  This makes transparent futures ideal for
#' troubleshooting, especially when there are errors.
#' _WARNING: Transparent futures should only be used for debugging and
#'  troubleshooting.  They should not be used for production pipelines
#'  and must not be set within another package.  This is especially
#'  important since 'transparent' futures might be deprecated and replaced
#'  by better means of debugging in future releases._
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
  future <- TransparentFuture(..., envir = envir)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(transparent) <- c("transparent", "sequential", "uniprocess", "future", "function")
