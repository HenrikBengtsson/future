#' An error occurred while trying to evaluate a future
#'
#' @param message The error message.
#' @param call The call stack that led up to the error.
#' @param future The \link{Future} involved.
#' @param output Output captured when error occurred.
#'
#' @return An \link[base:conditions]{error} object of class FutureError.
#'
#' @aliases getOutput
#' @export
#' @keywords internal
FutureError <- function(message, call = NULL, future = NULL, output = NULL) {
  ## Support different types of input
  ## NOTE: We could turn this into an S3 method. /HB 2016-07-01
  if (inherits(message, "Future")) {
    future <- message
    value <- future$value
    stopifnot(inherits(value, "condition"), inherits(value, "error"))
    cond <- value
    message <- conditionMessage(cond)
  } else if (inherits(message, "condition")) {
    cond <- message
    message <- conditionMessage(cond)
  }

  ## Create a basic error object
  cond <- simpleError(message, call = call)

  ## Record Future object and optional output messages
  attr(cond, "future") <- future
  attr(cond, "output") <- output
  
  class(cond) <- unique(c("FutureError", class(cond)))
  
  cond
}


#' @export
print.FutureError <- function(x, ...) {
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
getOutput.FutureError <- function(x, collapse = NULL, head = NULL, tail = NULL, ...) {
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
