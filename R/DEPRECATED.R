#' @rdname sequential
#' @export
eager <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, local = TRUE, earlySignal = FALSE, label = NULL, ...) {
  .Defunct(msg = "Future strategy 'eager' is defunct. Instead, use 'sequential', which works identically.")
}
class(eager) <- c("eager", "uniprocess", "future", "function")

#' @rdname sequential
#' @export
lazy <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = TRUE, seed = NULL, globals = TRUE, local = TRUE, earlySignal = FALSE, label = NULL, ...) {
  .Defunct(msg = "Future strategy 'lazy' is defunct. Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.")
}
class(lazy) <- c("lazy", "uniprocess", "future", "function")

## WORKAROUND:
## Avoid lazyeval::print.lazy() being called with print(lazy())
## https://github.com/HenrikBengtsson/future/issues/52
class(lazy) <- c("function", class(lazy))


#' @rdname UniprocessFuture-class
#' @export
EagerFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, lazy = FALSE, globals = TRUE, local = TRUE, ...) {
  .Defunct(msg = "EagerFuture is defunct. Instead, use SequentialFuture")
}


#' @rdname UniprocessFuture-class
#' @export
LazyFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, lazy=TRUE, globals=TRUE, local=TRUE, ...) {
  .Defunct(msg = "LazyFuture is defunct. Instead, use f <- SequentialFuture(..., lazy = TRUE)")
}
