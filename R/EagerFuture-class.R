#' An eager future is a future whose value will be resolved immediately
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param ... Additional named elements of the future.
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
EagerFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    expr <- substitute(local(a), list(a=expr))
  }
  f <- Future(expr=expr, envir=envir, local=local, ...)
  structure(f, class=c("EagerFuture", class(f)))
}

evaluate <- function(...) UseMethod("evaluate")

evaluate.EagerFuture <- function(future, skip=TRUE, ...) {
 if (!skip || !exists("value", envir=future, inherits=FALSE)) {
   tryCatch({
     future$value <- eval(future$expr, envir=future$envir)
     future$errored <- FALSE
   }, simpleError = function(ex) {
     future$errored <- TRUE
     future$value <- ex
   })
 }
 invisible(future)
}


#' @export
value.EagerFuture <- function(future, onError=c("signal", "return"), ...) {
  onError <- match.arg(onError)

  value <- future$value
  if (future$errored && onError == "signal") {
    stop(value)
  }
  value
}


#' @export
resolved.EagerFuture <- function(future, ...) {
  TRUE
}
