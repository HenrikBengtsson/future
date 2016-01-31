#' Simplifies a list like object
#'
#' @param x A list or a list environment
#' @param ... Passed to \code{unlist(x)}.
#'
#' @return Returns a simplified object.
#'
#' @export
simplify <- function(x, ...) UseMethod("simplify")

#' @export
simplify.list <- function(x, ...) {
  ns <- sapply(x, FUN=length)
  if (any(ns != 1)) return(x)
  y <- unlist(x, ...)
  dim <- dim(x)
  if (!is.null(dim)) {
    dim(y) <- dim
    dimnames(y) <- dimnames(x)
  }
  y
}

#' @export
simplify.listenv <- function(x, ...) {
  ns <- sapply(x, FUN=length)
  if (any(ns != 1)) return(x)
  y <- unlist(x, ...)
  dim <- dim(x)
  if (!is.null(dim)) {
    dim(y) <- dim
    dimnames(y) <- dimnames(x)
  }
  y
}
