#' Create an eager future whose value will be resolved immediately
#'
#' An eager future is a future that uses eager evaluation, which means
#' that its \emph{value is computed and resolved immediately}, which is
#' how regular expressions are evaluated in R.
#' The only difference to R itself is that globals are validated
#' by default just as for all other types of futures in this package.
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#'
#' @return An \link{EagerFuture}.
#'
#' @example incl/eager.R
#'
#' @details
#' The preferred way to create an eager future is not to call this function
#' directly, but to register it via \code{\link{plan}(eager)} such that it
#' becomes the default mechanism for all futures.  After this
#' \code{\link{future}()} and \code{\link{\%<-\%}} will create
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
eager <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, earlySignal=FALSE, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  local <- as.logical(local)

  future <- EagerFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, earlySignal=earlySignal, label=label)
  run(future)
}
class(eager) <- c("eager", "uniprocess", "future", "function")


transparent <- function(expr, envir=parent.frame(), substitute=TRUE, globals=FALSE, local=FALSE, earlySignal=TRUE, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  future <- eager(expr, envir=envir, substitute=FALSE, globals=globals, local=local, earlySignal=earlySignal, label=label)
  invisible(future)
}
class(transparent) <- c("transparent", "eager", "uniprocess", "future", "function")
