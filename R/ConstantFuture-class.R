#' A future with a constant value
#'
#' A constant future is a future whose expression is a constant
#' and therefore by definition is already resolved upon creation.
#'
#' @inheritParams Future-class
#' 
#' @return An object of class `ConstantFuture`.
#'
#' @export
#' @name ConstantFuture-class
#' @keywords internal
ConstantFuture <- function(expr = NULL, ..., envir = emptyenv()) {
  expr <- force(expr)
  future <- Future(expr = expr, ..., envir = emptyenv())
  future$result <- FutureResult(value = expr)
  future$state <- "finished"
  future <- structure(future, class = c("ConstantFuture", class(future)))
  future
}


#' @export
result.ConstantFuture <- function(future, ...) {
  future$result
}