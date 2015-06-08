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
#' Any function may return a Future.
#' One such function is \code{\link{future}()}, which asynchroneously
#' evaluates an R expression and returns a future, which the can be
#' inspected for being resolved or not and when resolved can have its
#' value retrieved.
#' %% An alternative approach is to use the \code{\link{\%<=\%}} infix
#' %% operator, which asynchroneously evaluates an R expression and returns
#' %% a \emph{\link[base]{promise}} to assign the value to a variable, if
#' %% requested.
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


#' Asynchroneously evaluates an expression whose value should be available at some point in the future
#'
#' Asynchroneously evaluates an R expression and returns a future,
#' which the can be inspected for being resolved or not and when
#' resolved can have its value retrieved.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} from where global
#' objects should be identified.  Depending on "evaluator",
#' it may also be the environment in which the expression
#' is evaluated.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param ... Additional arguments passed to the "evaluator".
#' @param evaluator The actual function that evaluates
#' \code{expr} and returns a future.  The evaluator function
#' should accept all the same arguments as this function
#' (except \code{evaluator}).
#'
#' @return A \link{Future}.
#'
#' @example incl/future.R
#'
#' @seealso
#' It is recommended that the evaluator is \emph{non-blocking}
#' (returns immediately), but it is not required.
#
#' The default evaluator function is \code{\link{lazy}()},
#' but can be changed via option \code{"future"}.
#'
#' @export
#' @name future
future <- function(expr, envir=parent.frame(), substitute=TRUE, ..., evaluator=getOption("future", lazy)) {
  if (substitute) expr <- substitute(expr)

  if (!is.function(evaluator)) {
    stop("Argument 'evaluator' must be a function: ", typeof(evaluator))
  }

  future <- evaluator(expr, envir=envir, substitute=FALSE, ...)

  ## Assert that a future was returned
  if (!inherits(future, "Future")) {
    stop("Argument 'evaluator' specifies a function that does not return a Future object: ", paste(sQuote(class(future)), collapse=", "))
  }

  future
}
