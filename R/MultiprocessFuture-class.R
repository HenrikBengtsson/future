#' An multiprocess future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @inheritParams Future-class
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done to the global environment of the \R process
#' evaluating the future.
#' @param \dots Additional named elements passed to \code{\link{Future}()}.
#'
#' @return An object of class \code{MultiprocessFuture}.
#'
#' @seealso
#' To evaluate an expression using "multiprocess future", see function
#' \code{\link{multiprocess}()}.
#'
#' @export
#' @name MultiprocessFuture-class
#' @keywords internal
MultiprocessFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, ...) {
  if (substitute) expr <- substitute(expr)

  f <- Future(expr=expr, envir=envir, substitute=FALSE, ...)
  structure(f, class=c("MultiprocessFuture", class(f)))
}
