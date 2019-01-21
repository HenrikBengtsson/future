#' @param FUN A \link[base]{function} to be evaluated.
#'
#' @param args A \link[base]{list} of arguments passed to function \code{FUN}.
#'
#' @return
#' \code{f <- futureCall(FUN, args)} creates a \link{Future} \code{f} that calls function \code{FUN} with arguments \code{args}, where the value of the future is retrieved using \code{x <- value(f)}.
#'
#' @example incl/futureCall.R
#'
#' @details
#' The \code{futureCall()} function works analogously to
#' \code{\link[base]{do.call}()}, which calls a function with a set of
#' arguments.  The difference is that \code{do.call()} returns the value of
#' the call whereas \code{futureCall()} returns a future.
#'
#' @rdname future
#' @importFrom utils capture.output str
#' @export
futureCall <- function(FUN, args = list(), envir = parent.frame(), lazy = FALSE, seed = NULL, globals = TRUE, packages = NULL, evaluator = plan("next"), ...) {
  stop_if_not(is.function(FUN))
  stop_if_not(is.list(args))

  debug <- getOption("future.debug", FALSE)  
  if (debug) mdebug("futureCall() ...")
  
  ## NOTE TO SELF: We'd ideally have an 'envir' argument also for
  ## futureCall(), cf. future().  However, it's not yet clear to me how
  ## to do this, because we need to have globalsOf() to search for globals
  ## from the current environment in order to identify the globals of 
  ## arguments 'FUN' and 'args', cf. future.apply::future_lapply().
  ## /HB 2018-03-06
  envir <- environment()
#  envir <- new.env(parent = envir)

  expr <- quote(do.call(what = FUN, args = args))
  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 1. Global variables
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.logical(globals)) {
    ## Gather all globals?
    if (globals) {
      if (debug) mdebug("Finding globals ...")

#      expr <- do.call(call, args = c(list("FUN"), list(...)))
      gp <- getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression, globals = TRUE)
      globals <- gp$globals
      packages <- unique(c(packages, gp$packages))
      gp <- NULL
      
      if (debug) {
        mdebug(" - globals found: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
        mdebug(" - needed namespaces: [%d] %s", length(packages), hpaste(sQuote(packages)))
        mdebug("Finding globals ... DONE")
      }
    } else {
      ## globals = FALSE
      globals <- c("FUN", "args")
      globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
    }
  } else if (is.character(globals)) {
    globals <- unique(c(globals, "FUN", "args"))
    globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
  } else if (is.list(globals)) {
    names <- names(globals)
    if (length(globals) > 0 && is.null(names)) {
      stop(FutureError("Invalid argument 'globals'. All globals must be named."))
    }
  } else {
    stop(FutureError("Invalid argument 'globals': ", mode(globals)))
  }
  globals <- as.FutureGlobals(globals)
  stop_if_not(inherits(globals, "FutureGlobals"))

  ## Make sure to clean out globals not found
  globals <- cleanup(globals, drop = "missing")

  names <- names(globals)
  if (!is.element("FUN", names)) globals$FUN <- FUN
  if (!is.element("args", names)) globals$args <- args

  names <- setdiff(names(globals), c("FUN", "args"))
  if (length(names) > 0) {
    env <- environment(globals$FUN)
    env <- new.env(parent = env)
    environment(globals$FUN) <- env
    for (name in names) {
      env[[name]] <- globals[[name]]
    }
  }
  
  if (debug) {
    mdebug("Globals to be used in the future:")
    mdebug(paste(capture.output(str(globals)), collapse = "\n"))
  }

  f <- future(expr, substitute = FALSE, envir = envir, lazy = lazy, seed = seed, globals = globals, packages = packages, ..., evaluator = evaluator)

  if (debug) mdebug("futureCall() ... DONE")
  
  f
}
