#' An uniprocess future is a future whose value will be resolved synchroneously in the current process
#'
#' @inheritParams Future-class
#' @param \dots Additional named elements passed to \code{\link{Future}()}.
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
  f <- Future(expr=expr, envir=envir, substitute=FALSE, local=local, ...)
  structure(f, class=c("UniprocessFuture", class(f)))
}


#' @export
run.UniprocessFuture <- function(future, ...) {
  if (future$state != 'created') {
    stop("A future can only be launched once.")
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
