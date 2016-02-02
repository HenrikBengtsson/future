#' An uniprocess future is a future whose value will be resolved synchroneously in the current process
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{UniprocessFuture}.
#'
#' @seealso
#' To evaluate an expression using "uniprocess future", see functions
#' \code{\link{eager}()} and \code{\link{lazy}()}.
#'
#' @export
#' @name UniprocessFuture-class
#' @keywords internal
UniprocessFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, ...) {
  if (substitute) expr <- substitute(expr)

  f <- Future(expr=expr, envir=envir, ...)
  structure(f, class=c("UniprocessFuture", class(f)))
}
