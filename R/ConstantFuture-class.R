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
ConstantFuture <- function(..., globals = TRUE, envir = emptyenv()) {
  future <- Future(..., globals = list(), envir = envir)
  future$result <- FutureResult(value = eval(future$expr, envir = envir))
  future$state <- "finished"
  future <- structure(future, class = c("ConstantFuture", class(future)))
  future
}


#' @export
result.ConstantFuture <- function(future, ...) {
  future$result
}