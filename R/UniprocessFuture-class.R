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
  f <- Future(expr=expr, envir=envir, substitute=FALSE, local=local, ...)
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

  expr <- getExpression(future)
  envir <- future$envir

  ## Run future
  future$state <- 'running'


  ## WORKAROUND: tryCatch() does not record the traceback and
  ## it is too late to infer it when the error has been caught.
  ## Because of this with we use withCallingHandlers() to
  ## capture errors and if they occur we record the call trace.
  current <- sys.nframe()
  tryCatch({
    withCallingHandlers({
      future$value <- eval(expr, envir=envir)
      future$state <- 'finished'
    }, error = function(ex) {
      calls <- sys.calls()
      ## Drop fluff added by withCallingHandlers()
      calls <- calls[seq_len(length(calls)-2L)]
      ## Drop fluff added by outer tryCatch()
      calls <- calls[-seq_len(current+7L)]
      ## Drop fluff added by outer local=TRUE
      if (future$local) calls <- calls[-seq_len(6L)]
      ex$traceback <- calls
      future$value <- ex
      future$state <- 'failed'
    })
  }, error = function(ex) {})

  ## Signal conditions early, iff specified for the given future
  signalEarly(future, collect=FALSE)

  invisible(future)
}
