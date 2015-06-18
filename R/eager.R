#' Create an eager future whose value will be resolved immediately
#'
#' An eager future is a future that uses eager evaluation, which means
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
#' @return An \link{EagerFuture}.
#'
#' @example incl/eager.R
#'
#' @details
#' The preferred way to create an eager future is not to call this function
#' directly, but to register it via \code{\link{plan}(eager)} such that it
#' becomes the default mechanism for all futures.  After this
#' \code{\link{future}()} and \code{\link{\%<=\%}} will create
#' \emph{eager futures}.
#'
#' @export
eager <- function(expr, envir=parent.frame(), substitute=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  future <- EagerFuture(expr=expr, envir=envir, local=local)
  evaluate(future)
}
