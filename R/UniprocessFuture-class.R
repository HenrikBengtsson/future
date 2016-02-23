#' An uniprocess future is a future whose value will be resolved synchroneously in the current process
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{UniprocessFuture}.
#'
#' @seealso
#' To evaluate an expression using "uniprocess future", see functions
#' \code{\link{eager}()} and \code{\link{lazy}()}.
#'
#' @export
#' @name UniprocessFuture-class
#' @keywords internal
UniprocessFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    expr <- substitute(local(a), list(a=expr))
  }
  f <- Future(expr=expr, envir=envir, substitute=FALSE, ...)
  structure(f, class=c("UniprocessFuture", class(f)))
}


evaluate <- function(...) UseMethod("evaluate")

evaluate.UniprocessFuture <- function(future, ...) {
  if (future$state %in% c('finished', 'failed', 'interrupted')) {
    return(invisible(future))
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  ## Run future
  future$state <- 'running'

  tryCatch({
    future$value <- eval(future$expr, envir=future$envir)
    future$state <- 'finished'
  }, simpleError = function(ex) {
    future$state <- 'failed'
    future$value <- ex
  })

  invisible(future)
}
