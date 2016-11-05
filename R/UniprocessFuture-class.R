#' An uniprocess future is a future whose value will be resolved synchroneously in the current process
#'
#' @inheritParams Future-class
#' @param lazy If \code{FALSE} (default), then the setup and validation of
#' global variables are done for eager evaluation, otherwise not.
#' @param \dots Additional named elements passed to \code{\link{Future}()}.
#'
#' @return An object of class \code{UniprocessFuture}.
#'
#' @seealso
#' To evaluate an expression using "uniprocess future", see functions
#' \code{\link{uniprocess}()}.
#'
#' @export
#' @name UniprocessFuture-class
#' @keywords internal
UniprocessFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)

  if (lazy) {
    ## Evaluate in a local environment?
    if (local) {
      envir <- new.env(parent=envir)
    } else {
      if (!is.logical(globals) || globals) {
        stop("Non-supported use of lazy uniprocess futures: Whenever argument 'local' is FALSE, then argument 'globals' must also be FALSE. Lazy uniprocess future evaluation in the calling environment (local=FALSE) can only be done if global objects are resolved at the same time.")
      }
    }
  }

  ## Global objects
  assignToTarget <- (is.list(globals) || inherits(globals, "Globals"))
  gp <- getGlobalsAndPackages(expr, envir=envir, tweak=tweakExpression, globals=globals, resolve=TRUE)

  ## Assign?
  if (length(gp) > 0 && (lazy || assignToTarget)) {
    target <- new.env(parent=envir)
    globalsT <- gp$globals
    for (name in names(globalsT)) {
      target[[name]] <- globalsT[[name]]
    }
    globalsT <- NULL
    envir <- target
  }
  gp <- NULL

  f <- Future(expr=expr, envir=envir, substitute=FALSE, local=local, lazy=lazy, ...)
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



#' @export
resolved.UniprocessFuture <- function(x, ...) {
  if (x$lazy) {
    ## resolved() for lazy uniprocess futures must force value()
    ## such that the future gets resolved.  The reason for this
    ## is so that polling is always possible, e.g.
    ## while(!resolved(f)) Sys.sleep(5);
    value(x, signal=FALSE)
  }
  NextMethod("resolved")
}


#' @rdname UniprocessFuture-class
#' @export
EagerFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, lazy=FALSE, ...)
  structure(f, class=c("EagerFuture", class(f)))
}


#' @rdname UniprocessFuture-class
#' @export
LazyFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, lazy=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, globals=globals, local=local, lazy=TRUE, ...)
  structure(f, class=c("LazyFuture", class(f)))
}
