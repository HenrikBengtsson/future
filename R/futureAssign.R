#' Create a future and assign its value to a variable as a promise
#'
#' Method and infix operators for creating futures and assigning
#' their values as variables using \link[base]{promise}s.  Trying
#' to access such a "future variable" will correspond to requesting
#' the value of the underlying future.  If the the future is already
#' resolved at this time, then the value will be available
#' instantaneously and the future variable will appear as any other
#' variable.  If the future is unresolved, then the current process
#' will block until the future is resolved and the value is available.
#'
#' @param name the name of the variable (and the future) to assign.
#' @param value the expression to be evaluated in the future and
#' whose value will be assigned to the variable.
#' @param envir The environment from which global variables used by
#' the expression should be search for.
#' @param assign.env The environment to which the variable should
#' be assigned.
#' @param substitute Controls whether \code{expr} should be
#' \code{substitute()}:d or not.
#'
#' @return A \link{Future} invisibly.
#'
#' @example incl/futureAssign_OP.R
#'
#' @details
#' This function creates a future and a corresponding
#' \emph{\link[base]{promise}}, which hold the future's value.
#' Both the future and the promise are assigned to environment
#' \code{assign.env}.  The name of the promise is given by \code{name}
#' and the name of the future is \code{.future_<name>}.
#' The future is also returned invisibly.
#'
#' @seealso
#' The \code{\link{futureOf}()} function can be used to get the
#' Future object of a future variable.
#'
#' @aliases %<-% %->% %<=% %=>%
#' @export
#' @export %<-% %->% %<=% %=>%
futureAssign <- function(name, value, envir=parent.frame(), assign.env=envir, substitute=TRUE) {
  stopifnot(is.character(name), !is.na(name), nzchar(name))
  if (substitute) value <- substitute(value)

  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## (1) Create future
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Name of "future" saved in parallel with the "promise"
  future_name <- sprintf(".future_%s", name)
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
  delayedAssign(name, local({
    value <- value(future)
    ## Remove internal future variable
    rm(list=future_name, envir=assign.env)
    value
  }), eval.env=env, assign.env=assign.env)

  invisible(future)
}
