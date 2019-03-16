#' An uniprocess future is a future whose value will be resolved synchronously in the current process
#'
#' @inheritParams Future-class
#' 
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
UniprocessFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, globals = TRUE, packages = NULL, lazy = FALSE, local = TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  if (lazy && !local && (!is.logical(globals) || globals)) {
    stop("Non-supported use of lazy uniprocess futures: Whenever argument 'local' is FALSE, then argument 'globals' must also be FALSE. Lazy uniprocess future evaluation in the calling environment (local = FALSE) can only be done if global objects are resolved at the same time.")
  }

  ## Global objects?
  gp <- getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression, globals = globals)
  globals <- gp$globals

  ## Record packages?
  if (length(packages) > 0 || (length(gp$packages) > 0 && lazy)) {
    packages <- unique(c(gp$packages, packages))
  }
  
  gp <- NULL
 
  f <- Future(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, asynchronous = FALSE, local = local, globals = globals, packages = packages, version = "1.8", ...)
  f$.callResult <- TRUE
  structure(f, class = c("UniprocessFuture", class(f)))
}


#' @export
run.UniprocessFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
  if (future$state != 'created') {
    label <- future$label
    if (is.null(label)) label <- "<none>"
    stop(FutureError(sprintf("A future ('%s') can only be launched once.", label), future = future))
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  expr <- getExpression(future)
  envir <- future$envir

  ## Assign globals to separate "globals" enclosure environment?
  globals <- future$globals
  if (length(globals) > 0) {
    if (future$local) {
      envir <- new.env(parent = envir)
    }
    for (name in names(globals)) {
      envir[[name]] <- globals[[name]]
    }
  }

  ## Run future
  future$state <- 'running'
  future$result <- eval(expr, envir = envir, enclos = baseenv())
  future$state <- 'finished'

  if (debug) mdebugf("%s started (and completed)", class(future)[1])
  
  ## Signal conditions early, iff specified for the given future
  signalEarly(future, collect = FALSE)
  
  invisible(future)
}


#' @export
result.UniprocessFuture <- function(future, ...) {
  ## Has the result already been collected?
  result <- future$result
  if (!is.null(result)) {
    if (inherits(result, "FutureError")) stop(result)
    return(result)
  }
  
  if (future$state == "created") {
    ## Make sure that run() does not signal errors
    earlySignal <- future$earlySignal
    future$earlySignal <- FALSE
    run(future)
    future$earlySignal <- earlySignal
  }

  result <- future$result
  if (inherits(result, "FutureResult")) return(result)

  ex <- UnexpectedFutureResultError(future)
  future$result <- ex
  stop(ex)
}


#' @export
resolved.UniprocessFuture <- function(x, ...) {
  if (x$lazy) {
    ## resolved() for lazy uniprocess futures must force result()
    ## such that the future gets resolved.  The reason for this
    ## is so that polling is always possible, e.g.
    ## while(!resolved(f)) Sys.sleep(5);
    result(x)
  }
  NextMethod()
}


#' @rdname UniprocessFuture-class
#' @export
SequentialFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, lazy = FALSE, globals = TRUE, local = TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, globals = globals, local = local, ...)
  structure(f, class = c("SequentialFuture", class(f)))
}
