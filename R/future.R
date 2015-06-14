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
#' The default evaluator function is \code{\link{eager}()},
#' but can be changed via \code{"plan"} function.
#'
#' @export
#' @name future
future <- function(expr, envir=parent.frame(), substitute=TRUE, ..., evaluator=plan()) {
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
