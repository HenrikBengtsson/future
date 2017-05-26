#' An uniprocess future is a future whose value will be resolved synchronously in the current process
#'
#' @inheritParams Future-class
#' 
#' @param lazy If \code{FALSE} (default), then the setup and validation of
#'        global variables are done for eager evaluation, otherwise not.
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

  if (lazy) {
    ## Evaluate in a local environment?
    if (local) {
      envir <- new.env(parent = envir)
    } else {
      if (!is.logical(globals) || globals) {
        stop("Non-supported use of lazy uniprocess futures: Whenever argument 'local' is FALSE, then argument 'globals' must also be FALSE. Lazy uniprocess future evaluation in the calling environment (local = FALSE) can only be done if global objects are resolved at the same time.")
      }
    }
  }

  ## Global objects
  assignToTarget <- (is.list(globals) || inherits(globals, "Globals"))
  gp <- getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression, globals = globals)

  ## Assign globals to "target" environment?
  if (length(gp$globals) > 0 && (lazy || assignToTarget)) {
    target <- new.env(parent = envir)
    target[["...future_has_globals"]] <- TRUE
    globalsT <- gp$globals
    for (name in names(globalsT)) {
      target[[name]] <- globalsT[[name]]
    }
    globalsT <- NULL
    envir <- target
  }

  ## Record packages?
  if (length(packages) > 0 || (length(gp$packages) > 0 && lazy)) {
    packages <- unique(c(gp$packages, packages))
  }
  
  gp <- NULL

  f <- Future(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, asynchronous = FALSE, local = local, globals = NULL, packages = packages, ...)
  structure(f, class = c("UniprocessFuture", class(f)))
}


#' @export
run.UniprocessFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
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
      future$value <- eval(expr, envir = envir)
      future$state <- 'finished'
    }, error = function(ex) {
      calls <- sys.calls()
      ## Drop fluff added by withCallingHandlers()
      calls <- calls[seq_len(length(calls)-2L)]
      ## Drop fluff added by outer tryCatch()
      calls <- calls[-seq_len(current+7L)]
      ## Drop fluff added by outer local = TRUE
      if (future$local) calls <- calls[-seq_len(6L)]
      ex$traceback <- calls
      future$value <- ex
      future$state <- 'failed'
    })
  }, error = function(ex) {})

  if (debug) mdebug("%s started (and completed)", class(future)[1])
  
  ## Signal conditions early, iff specified for the given future
  signalEarly(future, collect = FALSE)
  
  invisible(future)
}



#' @export
resolved.UniprocessFuture <- function(x, ...) {
  if (x$lazy) {
    ## resolved() for lazy uniprocess futures must force value()
    ## such that the future gets resolved.  The reason for this
    ## is so that polling is always possible, e.g.
    ## while(!resolved(f)) Sys.sleep(5);
    value(x, signal = FALSE)
  }
  NextMethod("resolved")
}

globals.UniprocessFuture <- function(future, ...) {
  envir <- future$envir
  globals <- names(envir)
  if (!"...future_has_globals" %in% globals) return(NULL)
  globals <- setdiff(globals, "...future_has_globals")
  mget(globals, envir = envir, inherits = FALSE)
}


#' @rdname UniprocessFuture-class
#' @export
SequentialFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, lazy = FALSE, globals = TRUE, local = TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  f <- UniprocessFuture(expr = expr, envir = envir, substitute = FALSE, lazy = lazy, globals = globals, local = local, ...)
  structure(f, class = c("SequentialFuture", class(f)))
}
