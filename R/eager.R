#' Create an eager future whose value will be resolved immediately
#'
#' An eager future is a future that uses eager evaluation, which means
#' that its \emph{value is computed and resolved immediately}, which is
#' how regular expressions are evaluated in R.
#' The only difference to R itself is that globals are validated
#' by default just as for all other types of futures in this package.
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
#' @param earlySignal Specified whether conditions should be signaled as soon as possible or not.
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
#' @section transparent futures:
#' Transparent futures are eager futures configured to emulate how R
#' evaluates expressions as far as possible.  For instance, errors and
#' warnings are signaled immediately and assignments are done to the
#' calling environment (without \code{local()} as default for all other
#' types of futures).  This makes transparent futures ideal for
#' troubleshooting, especially when there are errors.
#'
#' @aliases transparent
#' @export transparent
#' @export
eager <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, earlySignal=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  globals <- as.logical(globals)
  local <- as.logical(local)

  ## Validate globals at this point in time?
  if (globals) {
    exportGlobals(expr, envir=envir, target=NULL, tweak=tweakExpression, resolve=TRUE)
  }

  future <- EagerFuture(expr=expr, envir=envir, substitute=FALSE, local=local, earlySignal=earlySignal)
  evaluate(future)
}
class(eager) <- c("eager", "uniprocess", "future", "function")


transparent <- function(expr, envir=parent.frame(), substitute=TRUE, globals=FALSE, local=FALSE, earlySignal=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  future <- eager(expr, envir=envir, substitute=FALSE, globals=globals, local=local, earlySignal=earlySignal)
  invisible(future)
}
class(transparent) <- c("transparent", "eager", "uniprocess", "future", "function")


## Used only internally
constant <- function(value, ...) {
  eager(value, envir=emptyenv(), substitute=FALSE, globals=FALSE, local=FALSE, earlySignal=TRUE)
}
class(constant) <- c("constant", "eager", "uniprocess", "future", "function")
