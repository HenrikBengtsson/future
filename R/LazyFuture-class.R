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
  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    expr <- substitute(local(a), list(a=expr))
  }
  f <- Future(expr=expr, envir=envir, local=local, ...)
  structure(f, class=c("LazyFuture", class(f)))
}


evaluate.LazyFuture <- evaluate.EagerFuture

#' @export
resolved.LazyFuture <- function(future, ...) {
  ## resolved() for LazyFuture must force value() such that
  ## the future gets resolved.  The reason for this is so
  ## that polling is always possible, e.g.
  ## while(!resolved(f)) Sys.sleep(5);
  value(future, onError="return")
  NextMethod("resolved")
}

#' @export
value.LazyFuture <- function(future, onError=c("signal", "return"), ...) {
  onError <- match.arg(onError)

  future <- evaluate(future)

  value <- future$value
  if (future$state == 'failed' && onError == "signal") stop(value)

  value
}
