#' Create a lazy future whose value will be resolved at the time when requested
#'
#' A lazy future is a future that uses lazy evaluation, which means
#' that its \emph{value is only computed and resolved at the time when the
#' value is requested}.  This means that the future will not be resolved
#' if the value is never requested.
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param globals If TRUE, global objects are resolved ("frozen") at
#' the point of time when the future is created, otherwise they are
#' resolved when the future is resolved.
#'
#' @return A \link{LazyFuture}.
#'
#' @example incl/lazy.R
#'
#' @details
#' The preferred way to create a lazy future is not to call this function
#' directly, but to register it via \code{\link{plan}(lazy)} such that it
#' becomes the default mechanism for all futures.  After this
#' \code{\link{future}()} and \code{\link{\%<-\%}} will create
#' \emph{lazy futures}.
#'
#' @export
lazy <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, earlySignal=FALSE, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  local <- as.logical(local)

  LazyFuture(expr=expr, envir=envir, local=local, globals=globals, earlySignal=earlySignal, label=label)
}
class(lazy) <- c("lazy", "uniprocess", "future", "function")

## WORKAROUND:
## Avoid lazyeval::print.lazy() being called with print(lazy())
## https://github.com/HenrikBengtsson/future/issues/52
class(lazy) <- c("function", class(lazy))

