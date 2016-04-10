#' A future with a constant value
#'
#' A constant future is a future whose expression is a constant
#' and therefore already resolved upon creation
#'
#' @param value An R value.
#' @param \dots Not used.
#'
#' @return An object of class \code{ConstantFuture}.
#'
#' @export
#' @name ConstantFuture-class
#' @keywords internal
ConstantFuture <- function(value=NULL, ...) {
  value <- force(value)
  f <- Future(expr=value, envir=emptyenv(), substitute=FALSE, local=FALSE, ...)
  f$value <- value
  f$state <- "finished"
  f
}
