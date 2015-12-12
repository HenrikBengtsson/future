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
#' @param globals If TRUE, global objects are validated at the point
#' in time when the future is created (always before it is resolved),
#' that is, they identified and located.  If some globals fail to be
#' located, an informative error is generated.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param \dots Not used.
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
eager <- function(expr, envir=parent.frame(), substitute=TRUE, globals=FALSE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  globals <- as.logical(globals)
  local <- as.logical(local)

  ## Validate globals at this point in time?
  if (globals) {
    exportGlobals(expr, envir=envir, target=NULL, tweak=tweakExpression)
  }

  future <- EagerFuture(expr=expr, envir=envir, local=local)
  evaluate(future)
}
