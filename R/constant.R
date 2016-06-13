## Used only internally
constant <- function(value, ...) {
  future <- ConstantFuture(value=value, ...)
  evaluate(future)
}
class(constant) <- c("constant", "uniprocess", "future", "function")
