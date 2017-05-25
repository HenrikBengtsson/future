#' @rdname sequential
#' @export
eager <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = FALSE, seed = NULL, globals = TRUE, local = TRUE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)
  local <- as.logical(local)

  .Deprecated(msg = "Future strategy 'eager' is deprecated. Instead, use 'sequential', which works identically.")

  future <- EagerFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, local = local, earlySignal = earlySignal, label = label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(eager) <- c("eager", "uniprocess", "future", "function")

#' @rdname sequential
#' @export
lazy <- function(expr, envir = parent.frame(), substitute = TRUE, lazy = TRUE, seed = NULL, globals = TRUE, local = TRUE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)
  local <- as.logical(local)

  .Deprecated(msg = "Future strategy 'lazy' is deprecated. Instead, use f <- future(..., lazy = TRUE) or v %<-% { ... } %lazy% TRUE.")
  
  future <- LazyFuture(expr = expr, envir = envir, local = local, lazy = lazy, seed = seed, globals = globals, earlySignal = earlySignal, label = label, ...)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(lazy) <- c("lazy", "uniprocess", "future", "function")

## WORKAROUND:
## Avoid lazyeval::print.lazy() being called with print(lazy())
## https://github.com/HenrikBengtsson/future/issues/52
class(lazy) <- c("function", class(lazy))


#' @rdname UniprocessFuture-class
#' @export
EagerFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, lazy = FALSE, globals = TRUE, local = TRUE, ...) {
  if (substitute) expr <- substitute(expr)

##  .Deprecated(msg = "EagerFuture is deprecated. Instead, use SequentialFuture")

  f <- UniprocessFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, globals = globals, local = local, ...)
  structure(f, class = c("EagerFuture", class(f)))
}


#' @rdname UniprocessFuture-class
#' @export
LazyFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, lazy=TRUE, globals=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)

##  .Deprecated(msg = "LazyFuture is deprecated. Instead, use f <- SequentialFuture(..., lazy = TRUE)")

  f <- UniprocessFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, globals = globals, local = local, ...)
  structure(f, class=c("LazyFuture", class(f)))
}

## DEFUNCT
`%<=%` <- function(x, value) .Defunct("%<-%")
`%=>%` <- function(value, x) .Defunct("%->%")
