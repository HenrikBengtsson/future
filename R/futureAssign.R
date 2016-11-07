#' @param x the name of a future variable.
#' @param value the \R \link[base]{expression} to be evaluated in
#' the future and whose value will be assigned to the variable.
#' @param assign.env The \link[base]{environment} to which the variable
#' should be assigned.
#'
#' @rdname future
#' @export
futureAssign <- function(x, value, envir=parent.frame(), assign.env=envir, substitute=TRUE) {
  stopifnot(is.character(x), !is.na(x), nzchar(x))
  if (substitute) value <- substitute(value)

  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## (1) Create future
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Name of "future" saved in parallel with the "promise"
  future_name <- sprintf(".future_%s", x)
  if (exists(future_name, envir=envir)) {
    msg <- sprintf("A future with name %s already exists in environment %s: %s", sQuote(future_name), sQuote(environmentName(envir)), hpaste(ls(envir=envir, all.names=TRUE)))
##    warning(msg)
  }

  ## Evaluate expression/value as a "future" and assign its value to
  ## a variable as a "promise".
  ## NOTE: We make sure to pass 'envir' in order for globals to
  ## be located properly.
  future.args <- list(value, envir=envir)
  future <- do.call(future::future, args=future.args, envir=assign.env)

  ## Assign future to assignment environment
  future_without_gc <- future
  future_without_gc$.gcenv <- NULL
  assign(future_name, future_without_gc, envir=assign.env)


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## (2) Create promise holding the future's value
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Here value may throw an error causing the assign value to be a
  ## "delayed" error, which will be thrown each time the variable is
  ## retrieved.
  env <- new.env()
  env$job <- future
  delayedAssign(x, local({
    value <- value(future)
    ## Remove internal future variable
    rm(list=future_name, envir=assign.env)
    value
  }), eval.env=env, assign.env=assign.env)

  invisible(future)
}
