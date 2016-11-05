#' An eager future is a future whose value will be resolved immediately
#'
#' @inheritParams UniprocessFuture-class
#'
#' @return An object of class \code{EagerFuture}.
#'
#' @seealso
#' To evaluate an expression using "eager future", see function
#' \code{\link{eager}()}.
#'
#' @export
#' @name EagerFuture-class
#' @keywords internal
EagerFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, lazy=FALSE, ...)
  structure(f, class=c("EagerFuture", class(f)))
}
