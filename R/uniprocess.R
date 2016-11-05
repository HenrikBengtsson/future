#' Create a uniprocess future whose value will be in the current R session
#'
#' A uniprocess future is a future that is evaluated sequentially in the
#' current R session.  The default is to resolve it eagerly, which means
#' that its \emph{value is computed and resolved immediately}, which is
#' how regular expressions are evaluated in R.
#' The only difference to R itself is that globals are validated
#' by default just as for all other types of futures in this package.
#'
#'
#' @inheritParams future
#' @inheritParams multiprocess
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param lazy If \code{FALSE} (default), the future is resolved eagerly
#' (immediately), otherwise not.
#'
#' @return A \link{UniprocessFuture}.
#'
#' @example incl/uniprocess.R
#'
#' @details
#' The preferred way to create a uniprocess future is not to call these functions
#' directly, but to register them via \code{\link{plan}(eager)} such that it
#' becomes the default mechanism for all futures.  After this
#' \code{\link{future}()} and \code{\link{\%<-\%}} will create
#' \emph{eager uniprocess futures}.
#'
#' @section transparent futures:
#' Transparent futures are eager uniprocess futures configured to emulate how R
#' evaluates expressions as far as possible.  For instance, errors and
#' warnings are signaled immediately and assignments are done to the
#' calling environment (without \code{local()} as default for all other
#' types of futures).  This makes transparent futures ideal for
#' troubleshooting, especially when there are errors.
#'
#' @aliases uniprocess
#' @export
eager <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, earlySignal=FALSE, label=NULL, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  local <- as.logical(local)

  future <- EagerFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, earlySignal=earlySignal, label=label, lazy=lazy, ...)
  run(future)
}
class(eager) <- c("eager", "uniprocess", "future", "function")

#' @rdname eager
#' @export
transparent <- function(expr, envir=parent.frame(), substitute=TRUE, globals=FALSE, local=FALSE, earlySignal=TRUE, label=NULL, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  uniprocess(expr, envir=envir, substitute=FALSE, globals=globals, local=local, earlySignal=earlySignal, label=label, lazy=lazy, ...)
}
class(transparent) <- c("transparent", "uniprocess", "future", "function")

#' @rdname eager
#' @export
lazy <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, earlySignal=FALSE, label=NULL, lazy=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  local <- as.logical(local)

  LazyFuture(expr=expr, envir=envir, local=local, globals=globals, earlySignal=earlySignal, label=label, lazy=lazy, ...)
}
class(lazy) <- c("lazy", "uniprocess", "future", "function")

## WORKAROUND:
## Avoid lazyeval::print.lazy() being called with print(lazy())
## https://github.com/HenrikBengtsson/future/issues/52
class(lazy) <- c("function", class(lazy))


## Keep private for now until name has been decided, cf.
## https://github.com/HenrikBengtsson/future/issues/109
uniprocess <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, earlySignal=FALSE, label=NULL, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  future <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, earlySignal=earlySignal, label=label, lazy=lazy, ...)
  if (!lazy) future <- run(future)
  invisible(future)
}
class(uniprocess) <- c("uniprocess", "future", "function")
