## Used only internally
constant <- function(value, ...) {
  future <- ConstantFuture(value=value, ...)
  run(future)
}
class(constant) <- c("constant", "uniprocess", "future", "function")
