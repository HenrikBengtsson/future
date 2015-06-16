#' A future represents a value that will be available at some point in the future
#'
#' A \emph{future} is an abstraction for a \emph{value} that may
#' available at some point in the future.  A future can either be
#' \code{unresolved} or \code{resolved}, a state which can be checked
#' with \code{\link{resolved}()}.  As long as it is \emph{unresolved}, the
#' value is not available.  As soon as it is \emph{resolved}, the value
#' is available via \code{\link{value}()}.
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
#' assignment operator, which creates a future from the
#' right-hand-side (RHS) R expression and assigns its future value
#' to a variable as a \emph{\link[base]{promise}}.
#'
#' @export
#' @name Future-class
Future <- function(object, ...) {
  structure(object, class=c(class(object), "Future"))
}




#' The value of a future
#'
#' Gets the value of a future.  If the future is unresolved, then
#' the evaluation blocks until the future is resolved.
#'
#' @param future A \link{Future}.
#' @param onError A character string specifying how errors
#' (\link[base]{conditions}) should be handled in case they occur.
#' If \code{"signal"}, the error is signalled, e.g. captured
#' errors and re-thrown.  If instead \code{"return"}, they are
#' \emph{returned} as is.
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
value.Future <- function(future, onError=c("signal", "return"), ...) {
  stop(sprintf("value() is not implemented for objects of class ", paste(sQuote(class(future)), collapse=", ")))
}

value <- function(...) UseMethod("value")


#' Check whether a future is resolved or not
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
#' e.g. \code{while (!resolved(future)) Sys.sleep(5)}.
#'
#' @export
#' @export resolved
#' @aliases resolved
resolved.Future <- function(future, ...) {
  stop(sprintf("resolved() is not implemented for objects of class ", paste(sQuote(class(future)), collapse=", ")))
}

resolved <- function(...) UseMethod("resolved")
