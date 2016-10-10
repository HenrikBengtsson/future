#' A lazy future is a future whose value will be resolved at the time when it is requested
#'
#' @inheritParams UniprocessFuture-class
#'
#' @return An object of class \code{LazyFuture}.
#'
#' @seealso
#' To evaluate an expression using "lazy future", see function
#' \code{\link{lazy}()}.
#'
#' @export
#' @name LazyFuture-class
#' @keywords internal
LazyFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  ## Evaluate in a local environment?
  if (local) {
    envir <- new.env(parent=envir)
  } else {
    if (!is.logical(globals) || globals) {
      stop("Non-supported use of lazy futures: Whenever argument 'local' is FALSE, then argument 'globals' must also be FALSE. Lazy future evaluation in the calling environment (local=FALSE) can only be done if global objects are resolved at the same time.")
    }
  }

  ## Global objects
  gp <- getGlobalsAndPackages(expr, envir=envir, tweak=tweakExpression, globals=globals, resolve=TRUE)

  ## Assign?
  if (length(gp) > 0) {
    target <- new.env(parent=envir)
    globalsT <- gp$globals
    for (name in names(globalsT)) {
      target[[name]] <- globalsT[[name]]
    }
    globalsT <- NULL
    envir <- target
  }
  gp <- NULL

  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, local=local, ...)
  structure(f, class=c("LazyFuture", class(f)))
}

#' @export
resolved.LazyFuture <- function(x, ...) {
  ## resolved() for LazyFuture must force value() such that
  ## the future gets resolved.  The reason for this is so
  ## that polling is always possible, e.g.
  ## while(!resolved(f)) Sys.sleep(5);
  value(x, signal=FALSE)
  NextMethod("resolved")
}

#' @export
value.LazyFuture <- function(future, signal=TRUE, ...) {
  if (future$state == 'created') {
    future <- run(future)
  }

  value <- future$value
  if (signal && future$state == 'failed') {
    mdebug("Future state: %s", sQuote(value))
    stop(FutureError(value, future=future))
  }

  value
}
