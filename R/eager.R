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
#' @param globals If TRUE, global objects are identified and located
#' at the point of time when the future is created and before it is
#' resolved.  If some globals cannot be located, an informative error
#' is generated, similar to how it is done with, say, \link{lazy}
#' futures.
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
eager <- function(expr, envir=parent.frame(), substitute=TRUE, globals=FALSE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  globals <- as.logical(globals)
  local <- as.logical(local)
  if (!local && globals) {
    stop("Non-supported call to eager(): Argument 'globals' must be FALSE whenever 'local' is FALSE. Eager future evaluation in the calling environment (local=FALSE) can only be done if global objects are resolved at the same time (globals=FALSE).")
  }

  ## Resolve globals at this point in time?  That is, validate them.
  if (globals) {
    exportGlobals(expr, envir=envir, target=NULL, tweak=tweakExpression)
  }

  future <- EagerFuture(expr=expr, envir=envir, local=local)
  evaluate(future)
}
