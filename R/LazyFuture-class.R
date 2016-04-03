#' A lazy future is a future whose value will be resolved at the time when it is requested
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param \dots Additional named elements of the future.
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
LazyFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, local=local, ...)
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

#' @export
value.LazyFuture <- function(future, signal=TRUE, ...) {
  future <- evaluate(future)

  value <- future$value
  if (signal && future$state == 'failed') {
    mdebug("Future state: %s", sQuote(value))
    stop(value)
  }

  value
}
