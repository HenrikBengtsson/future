#' A future represents a value which may become available in the future
#'
#' A \emph{future} is an abstraction for a \emph{value} that may
#' available at some point in the future.  A future can either be
#' \code{unresolved} or \code{resolved}, which can be checked with
#' \code{isResolved()}.  As long as it is \emph{unresolved}, the value
#' is not available.  As soon as it is \emph{resolved}, the value is
#' available, which can take the form of an object of any data type
#' or a \link[base]{condition}.
#'
#' @param object An R object of a class that implements the Future API.
#' @param ... Not used.
#'
#' @return An object of class \code{Future}.
#'
#' @seealso
#' One function that creates a Future is \code{\link{future}()}.
#' It returns a Future that evaluates an R expression in the future.
#' An alternative approach is to use the \code{\link{\%<=\%}} infix
#' operator, which asynchroneously evaluates an R expression and returns
#' a \emph{\link[base]{promise}} to assign the value to a variable, if
#' requested.
#'
#' @export
#' @name Future-class
Future <- function(object, ...) {
  structure(object, class=c(class(object), "Future"))
}




#' Gets the value of a future
#'
#' Gets the value of a future.  If the future is unresolved, then
#' the evaluation blocks until the future is resolved.
#'
#' @param future A \link{Future}.
#' @param onCondition A character string specifying how
#' \link[base]{conditions} should be handled in case they occur.
#' If \code{"signal"}, the condition is generated, e.g. captured
#' errors and warnings are \emph{"signaled"} (re-thrown).
#' If \code{"return"}, they are instead \emph{returned} as is.
#' @param ... Not used.
#'
#' @return An R object of any data type.
#'
#' @details
#' This method needs to be implemented by the class that implement
#' the Future API.
#'
#' @export
#' @export value
#' @aliases value
value.Future <- function(future, onCondition=c("signal", "return"), ...) {
  stop(sprintf("value() is not implemented for objects of class ", paste(sQuote(class(future)), collapse=", ")))
}

value <- function(...) UseMethod("value")


#' Checks whether a future is resolved or not
#'
#' @param future A \link{Future}.
#' @param ... Not used
#'
#' @return TRUE if future is resolved and FALSE if unresolved.
#'
#' @details
#' This method needs to be implemented by the class that implement
#' the Future API.  The implementation must never throw an error,
#' but only return either TRUE or FALSE.
#' It should also be possible to use the method for polling the
#' future until it is resolved (without having to wait infinitly long),
#' e.g. \code{while (!isResolved(future)) Sys.sleep(5)}.
#'
#' @export
#' @export isResolved
#' @aliases isResolved
isResolved.Future <- function(future, ...) {
  stop(sprintf("isResolved() is not implemented for objects of class ", paste(sQuote(class(future)), collapse=", ")))
}

isResolved <- function(...) UseMethod("isResolved")
