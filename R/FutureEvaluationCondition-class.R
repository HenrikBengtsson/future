#' A condition (message, warning, or error) that occurred while evaluation a future
#'
#' @param message A message.
#' 
#' @param call The call stack that led up to the condition.
#' 
#' @param future The \link{Future} involved.
#' 
#' @param output Output captured when condition occurred.
#'
#' @return An object of class FutureEvaluationCondition which inherits from class
#' \link[base:conditions]{condition} and FutureEvaluationMessage, FutureEvaluationWarning,
#' and FutureEvaluationError all inherits from FutureEvaluationCondition.
#' Moreover, a FutureEvaluationError inherits from \link[base:conditions]{error},
#' a FutureEvaluationWarning from \link[base:conditions]{warning}, and
#' a FutureEvaluationMessage from \link[base:conditions]{message}.
#'
#' @aliases getOutput
#' @export
#' @keywords internal
FutureEvaluationCondition <- function(message, call = NULL, future = NULL, output = NULL) {
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
            class = c("FutureEvaluationCondition", "condition"),
            future = future, output = output)
}


#' @export
print.FutureEvaluationCondition <- function(x, ...) {
  NextMethod("print")

  future <- attr(x, "future")
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
getOutput.FutureEvaluationCondition <- function(x, collapse = NULL, head = NULL, tail = NULL, ...) {
  output <- attr(x, "output")

  ## Return "as is"?
  if (is.null(collapse) && is.null(head) && is.null(tail)) return(output)

  ## Truncate?
  if (!is.null(head) && !is.null(tail)) {
    idxs <- seq_along(output)
    idxs <- sort(unique(c(head(idxs, n = head), tail(idxs, n = tail))))
    output <- output[idxs]
    idxs
  } else if (!is.null(head)) {
    output <- head(output, n = head)
  } else if (!is.null(tail)) {
    output <- tail(output, n = tail)
  }

  ## Collapse? (add line endings)
  if (!is.null(collapse)) output <- paste(output, collapse = collapse)

  output
} ## getOutput()


#' @export
getOutput <- function(...) UseMethod("getOutput")


#' @rdname FutureEvaluationCondition
#' @export
FutureEvaluationMessage <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureEvaluationCondition(message = message, call = call,
                          future = future, output = output)
  class(cond) <- c("FutureEvaluationMessage", "message", class(cond))
  cond
}

#' @rdname FutureEvaluationCondition
#' @export
FutureEvaluationWarning <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureEvaluationCondition(message = message, call = call,
                          future = future, output = output)
  class(cond) <- c("FutureEvaluationWarning", "warning", class(cond))
  cond
}

#' @rdname FutureEvaluationCondition
#' @export
FutureEvaluationError <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureEvaluationCondition(message = message, call = call,
                          future = future, output = output)
  ## TODO: Remove usage of 'FutureError'. Various packages' tests use this.
  ## TODO: Remove usage of 'simpleError'. Various packages' tests use this.
  class(cond) <- c("FutureEvaluationError",
                   "FutureError", ## to be removed in a later release
                   "simpleError", ## to be removed in a later release
                   "error", class(cond))
  cond
}
