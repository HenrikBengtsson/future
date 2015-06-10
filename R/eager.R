#' An eager future represents a future whose value will be resolved immediately
#'
#' A eager future is a future that uses eager evaluation, which means
#' that its \emph{value is computed and resolved immediately}, which is
#' how regular expressions are evaluated in R.  This type of future 
#' exists mainly for the purpose of troubleshooting code that fails
#' with other types of futures.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param ... Not used.
#'
#' @return A \link{EagerFuture}.
#'
#' @example incl/eager.R
#'
#' @details
#' This function can be registered as the default \link{future} evaluator,
#' i.e. \code{options(future=eager)}.
#'
#' @export
eager <- function(expr, envir=parent.frame(), substitute=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    expr <- substitute(local(a), list(a=expr))
  }

  future <- EagerFuture()
  assign("value", eval(expr, envir=envir), envir=future, inherits=FALSE)

  future
}
