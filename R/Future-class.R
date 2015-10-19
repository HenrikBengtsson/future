#' A future represents a value that will be available at some point in the future
#'
#' A \emph{future} is an abstraction for a \emph{value} that may
#' available at some point in the future.  A future can either be
#' \code{unresolved} or \code{resolved}, a state which can be checked
#' with \code{\link{resolved}()}.  As long as it is \emph{unresolved}, the
#' value is not available.  As soon as it is \emph{resolved}, the value
#' is available via \code{\link{value}()}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{Future}.
#'
#' @details
#' A Future object is itself an \link{environment}.
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
Future <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  args <- list(...)

  core <- new.env(parent=emptyenv())
  core$expr <- expr
  core$envir <- envir

  ## The current state of the future, e.g.
  ## 'created', 'running', 'finished', 'failed', 'interrupted'.
  core$state <- 'created'

  ## Additional named arguments
  for (key in names(args)) core[[key]] <- args[[key]]

  structure(core, class=c("Future", class(core)))
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
#' and re-thrown.  If instead \code{"return"}, they are
#' \emph{returned} as is.
#' @param \dots Not used.
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
#' @export
value.Future <- function(future, onError=c("signal", "return"), ...) {
  onError <- match.arg(onError)

  if (!future$state %in% c('finished', 'failed', 'interrupted')) {
    stop("Internal error: value() called on a non-finished future: ", class(future)[1])
  }

  value <- future$value
  if (future$state == 'failed' && onError == "signal") stop(value)

  value
}

value <- function(...) UseMethod("value")


#' Check whether a future is resolved or not
#'
#' @param future A \link{Future}.
#' @param \dots Not used
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
  future$state %in% c('finished', 'failed', 'interrupted')
}

resolved <- function(...) UseMethod("resolved")
