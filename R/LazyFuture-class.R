#' A lazy future is a future whose value will be resolved at the time when it is requested
#'
#' @inheritParams UniprocessFuture-class
#'
#' @return An object of class \code{LazyFuture}.
#'
#' @seealso
#' To evaluate an expression using "lazy future", see function
#' \code{\link{lazy}()}.
#'
#' @export
#' @name LazyFuture-class
#' @keywords internal
LazyFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, lazy=TRUE, ...)
  structure(f, class=c("LazyFuture", class(f)))
}

#' @export
resolved.LazyFuture <- function(x, ...) {
  ## resolved() for LazyFuture must force value() such that
  ## the future gets resolved.  The reason for this is so
  ## that polling is always possible, e.g.
  ## while(!resolved(f)) Sys.sleep(5);
  value(x, signal=FALSE)
  NextMethod("resolved")
}
