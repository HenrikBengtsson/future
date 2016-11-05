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
