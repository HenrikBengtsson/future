#' A condition (message, warning, or error) that occurred while orchestrating a future
#'
#' While \emph{orchestrating} (creating, launching, querying, collection)
#' futures, unexpected run-time errors (and other types of conditions) may
#' occur.  Such conditions are coerced to a corresponding FutureConditions
#' class to help distinguish them from conditions that occur due to the
#' \emph{evaluation} of the future.
#' 
#' @param message A message.
#' 
#' @param call The call stack that led up to the condition.
#' 
#' @param future The \link{Future} involved.
#' 
#' @return An object of class FutureCondition which inherits from class
#' \link[base:conditions]{condition} and FutureMessage, FutureWarning,
#' and FutureError all inherits from FutureCondition.
#' Moreover, a FutureError inherits from \link[base:conditions]{error},
#' a FutureWarning from \link[base:conditions]{warning}, and
#' a FutureMessage from \link[base:conditions]{message}.
#'
#' @export
#' @keywords internal
FutureCondition <- function(message, call = NULL, future = NULL) {
  ## Support different types of input
  ## NOTE: We could turn this into an S3 method. /HB 2016-07-01
  if (inherits(message, "Future")) {
    future <- message
    value <- future$value
    stopifnot(inherits(value, "condition"))
    cond <- value
    message <- conditionMessage(cond)
  } else if (inherits(message, "condition")) {
    cond <- message
    message <- conditionMessage(cond)
  }

  ## Create a condition object
  structure(list(message = as.character(message), call = call), 
            class = c("FutureCondition", "condition"),
            future = future)
}


#' @export
print.FutureCondition <- function(x, ...) {
  NextMethod("print")

  future <- attr(x, "future")

  ## DEPRECATED / BACKWARD COMPATIBILITY: FutureError(..., output)
  output <- attr(x, "output")
  
  if (!is.null(future) || !is.null(output)) {
    cat("\n\nDEBUG: BEGIN TROUBLESHOOTING HELP\n")

    if (!is.null(future)) {
      cat("Future involved:\n")
      print(future)
      cat("\n")
    }

    cond <- future$value
    if (inherits(cond, "condition")) {
      fcalls <- cond$traceback
      if (!is.null(fcalls)) {
        cat("Future call stack:\n")
        print(fcalls)
        cat("\n")
      }
    }

    ## DEPRECATED / BACKWARD COMPATIBILITY: FutureError(..., output)
    if (!is.null(output)) {
      cat("Captured output:\n")
      cat(getOutput(x, tail = 30L, collapse = "\n"))
      cat("\n\n")
    }

    cat("DEBUG: END TROUBLESHOOTING HELP\n")
  }

  invisible(x)
} ## print()


#' @export
getOutput.FutureError <- function(x, ...) {
  ## TODO: Deprecated/for backward compatibility only. /HB 2018-02-03
  getOutput.FutureEvaluationCondition(x, ...)
}
                                                
#' @rdname FutureCondition
#' @export
FutureMessage <- function(message, call = NULL, future = NULL) {
  cond <- FutureCondition(message = message, call = call, future = future)
  class(cond) <- c("FutureMessage", "message", class(cond))
  cond
}

#' @rdname FutureCondition
#' @export
FutureWarning <- function(message, call = NULL, future = NULL) {
  cond <- FutureCondition(message = message, call = call, future = future)
  class(cond) <- c("FutureWarning", "warning", class(cond))
  cond
}

#' @param output (Don't use!) only for backward compatibility
#' 
#' @rdname FutureCondition
#' @export
FutureError <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureCondition(message = message, call = call, future = future)
  ## TODO: Remove usage of 'simpleError'. Various packages' tests use this.
  class(cond) <- c("FutureError", "simpleError", "error", class(cond))

  ## TODO: Deprecate
  if (!is.null(output)) {
    attr(cond, "output") <- output
  }
  
  cond
}
