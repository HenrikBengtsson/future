#' A future with a constant value
#'
#' A constant future is a future whose expression is a constant
#' and therefore already resolved upon creation
#'
#' @param expr An R value.
#' @param \dots Not used.
#'
#' @return An object of class \code{ConstantFuture}.
#'
#' @export
#' @name ConstantFuture-class
#' @keywords internal
ConstantFuture <- function(expr=NULL, envir=emptyenv(), substitute=FALSE, local=FALSE, gc=FALSE, ...) {
  expr <- force(expr)
  f <- Future(expr=expr, envir=emptyenv(), substitute=FALSE, local=FALSE, gc=FALSE, ...)
  f$value <- expr
  f$state <- "finished"
  structure(f, class=c("ConstantFuture", class(f)))
  f
}

evaluate.ConstantFuture <- function(future, ...) future
