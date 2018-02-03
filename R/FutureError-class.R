#' A condition (message, warning, or error) related to a future
#'
#' @param message A message.
#' @param call The call stack that led up to the condition.
#' @param future The \link{Future} involved.
#' @param output Output captured when condition occurred.
#'
#' @return An object of class FutureCondition which inherits from class
#' \link[base:conditions]{condition} and FutureMessage, FutureWarning,
#' and FutureError all inherits from FutureCondition.
#' Moreover, a FutureError inherits from \link[base:conditions]{error},
#' a FutureWarning from \link[base:conditions]{warning}, and
#' a FutureMessage from \link[base:conditions]{warning}.
#'
#' @aliases getOutput
#' @export
#' @keywords internal
FutureCondition <- function(message, call = NULL, future = NULL, output = NULL) {
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
            future = future, output = output)
}


#' @export
print.FutureCondition <- function(x, ...) {
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
getOutput.FutureCondition <- function(x, collapse = NULL, head = NULL, tail = NULL, ...) {
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

#' @rdname FutureCondition
#' @export
FutureMessage <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureCondition(message = message, call = call,
                          future = future, output = output)
  class(cond) <- c("FutureMessage", "message", class(cond))
  cond
}

#' @rdname FutureCondition
#' @export
FutureWarning <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureCondition(message = message, call = call,
                          future = future, output = output)
  class(cond) <- c("FutureWarning", "warning", class(cond))
  cond
}

#' @rdname FutureCondition
#' @export
FutureError <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureCondition(message = message, call = call,
                          future = future, output = output)
  ## TODO: Remove usage of 'simpleError'. Various packages' tests use this.
  class(cond) <- c("FutureError", "simpleError", "error", class(cond))
  cond
}

