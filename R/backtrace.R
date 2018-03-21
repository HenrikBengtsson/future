#' Back trace the expressions evaluated before a condition was caught
#'
#' @param future The future with a caught condition.
#' @param envir the environment where to locate the future.
#' @param \dots Not used.
#'
#' @return A list of calls.
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
    stopifnot(inherits(future, "Future"))    
  }

  if (!resolved(future)) {
    stop("No condition has been caught because the future is unresolved: ", sQuote(expr))
  }

  result <- result(future)
  condition <- result$condition
  if (!inherits(condition, "condition")) {
    stop("No condition was caught for this future: ", sQuote(expr))
  }

  calls <- result$calls
  if (is.null(calls)) {
    stop("No call trace was recorded for this future: ", sQuote(expr))
  }

  calls
} ## backtrace()
