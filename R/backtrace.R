#' Back trace the expressions evaluated when an error was caught
#'
#' @param future A future with a caught error.
#'
#' @param envir the environment where to locate the future.
#'
#' @param \dots Not used.
#'
#' @return A @list with the future's call stack that led up to the error.
#'
#' @example incl/backtrace.R
#'
#' @export
backtrace <- function(future, envir = parent.frame(), ...) {
  ## Argument 'expr':
  expr <- substitute(future)

  if (!is.null(expr)) {
    future <- tryCatch({
      target <- parse_env_subset(expr, envir = envir, substitute = FALSE)
      get_future(target, mustExist = TRUE)
    }, simpleError = function(ex) {
      eval(expr, envir = envir, enclos = baseenv())
    })
    stop_if_not(inherits(future, "Future"))    
  }

  if (!resolved(future)) {
    stop("No error has been caught because the future is unresolved: ", sQuote(expr))
  }

  result <- result(future)
  conditions <- result$conditions
  
  ## BACKWARD COMPATIBILITY: future (< 1.11.0)
  if (!is.list(conditions)) conditions <- list(list(condition = result$condition))

  ## Find 'error' condition
  error <- NULL
  for (kk in seq_along(conditions)) {
    c <- conditions[[kk]]
    if (inherits(c$condition, "error")) {
      error <- c
      break
    }
  }

  if (is.null(error)) {
    stop("No error was caught for this future: ", sQuote(expr))
  }

  calls <- error$calls

  ## BACKWARD COMPATIBILITY: future (< 1.11.0)
  if (is.null(calls)) calls <- result$calls
  
  if (is.null(calls)) {
    stop("The error call stack was not recorded for this future: ", sQuote(expr))
  }

  ## Recreate the full call stack
  calls <- c(future$calls, calls)
  
  calls
} ## backtrace()
