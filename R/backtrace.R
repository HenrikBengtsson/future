#' Back trace the expression evaluated when a condition was caught
#'
#' @param future A future with a caught condition.
#' @param envir the environment where to locate the future.
#' @param \dots Not used.
#'
#' @return A list with one call.
#'
#' @section Known limitations:
#' It is currently \emph{not} possible to infer the full call stack prior to
#' when an error occurred.  It is only possible to get the call that produced
#' the call.
#' This is a limitation of \code{\link[base:tryCatch]{tryCatch()}} used
#' internally for evaluating the future expression.
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

  call <- conditionCall(condition)
  if (is.null(call)) {
    stop("No call was recorded for this future: ", sQuote(expr))
  }

  list(call)
} ## backtrace()
