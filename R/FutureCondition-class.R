#' A condition (message, warning, or error) that occurred while orchestrating a future
#'
#' While \emph{orchestrating} (creating, launching, querying, collection)
#' futures, unexpected run-time errors (and other types of conditions) may
#' occur.  Such conditions are coerced to a corresponding FutureCondition
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
    result <- future$result
    if (inherits(result, "FutureResult")) {
      cond <- result$condition
    } else {
      ## BACKWARD COMPATIBILITY
      cond <- future$value
    }
    stop_if_not(inherits(cond, "condition"))
    message <- conditionMessage(cond)
  } else if (inherits(message, "condition")) {
    cond <- message
    message <- conditionMessage(cond)
  }
  
  if (is.null(message)) {
    stop("INTERNAL ERROR: Trying to set up a FutureCondition with message = NULL")
  }
  message <- as.character(message)
  if (length(message) != 1L) {
    stop("INTERNAL ERROR: Trying to set up a FutureCondition with length(message) != 1L: ", length(message))
  }
  
  ## Create a condition object
  structure(list(message = message, call = call), 
            class = c("FutureCondition", "condition"),
            future = future)
}


#' @importFrom utils tail
#' @export
print.FutureCondition <- function(x, ...) {
  NextMethod()

  future <- attr(x, "future", exact = TRUE)

  ## DEPRECATED / BACKWARD COMPATIBILITY: FutureError(..., output)
  output <- attr(x, "output", exact = TRUE)
  
  if (!is.null(future) || !is.null(output)) {
    cat("\n\nDEBUG: BEGIN TROUBLESHOOTING HELP\n")

    if (!is.null(future)) {
      cat("Future involved:\n")
      print(future)
      cat("\n")
    }

    result <- future$result
    if (inherits(result, "FutureResult")) {
      cond <- result$condition
    } else {
      ## BACKWARD COMPATIBILITY
      cond <- future$value
    }
    if (inherits(cond, "condition")) {
      fcalls <- result$calls
      if (is.null(fcalls)) fcalls <- cond$traceback ## BACKWARD COMPATIBILITY
      if (!is.null(fcalls)) {
        cat("Future call stack:\n")
        print(fcalls)
        cat("\n")
      }
    }

    ## DEPRECATED / BACKWARD COMPATIBILITY: FutureError(..., output)
    if (!is.null(output)) {
      cat("Captured output:\n")
      cat(tail(output, n = 30L), sep = "\n")
      cat("\n\n")
    }

    cat("DEBUG: END TROUBLESHOOTING HELP\n")
  }

  invisible(x)
} ## print()



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


#' @param output (DEPRECATED - don't use!) only for backward compatibility
#' 
#' @rdname FutureCondition
#' @export
FutureError <- function(message, call = NULL, future = NULL, output = NULL) {
  cond <- FutureCondition(message = message, call = call, future = future)
  ## TODO: Remove usage of 'simpleError'. Various packages' tests use this.
  class(cond) <- c("FutureError", "simpleError", "error", class(cond))

  ## DEPREACTED
  if (!is.null(output)) {
    .Deprecated(msg = "Argument 'output' of FutureError is deprecated")
    attr(cond, "output") <- output
  }
  
  cond
}


#' @rdname FutureCondition
#' @export
UnexpectedFutureResultError <- function(future) {
  label <- future$label
  if (is.null(label)) label <- "<none>"
  expr <- hexpr(future$expr)
  result <- future$result
  result_string <- hpaste(as.character(result))
  if (length(result_string) == 0L)
    result_string <- ""
  else if (nchar(result_string) > 512L)
    result_string <- paste(substr(result_string, start = 1L, stop = 512L),
                           "...")
  msg <- sprintf("Unexpected result (of class %s != %s) retrieved for %s future (label = %s, expression = %s): %s",
                 sQuote(class(result)[1]), sQuote("FutureResult"),
                 class(future)[1], sQuote(label), sQuote(expr),
                 result_string)
  cond <- FutureError(msg, future = future)
  class(cond) <- c("UnexpectedFutureResultError", class(cond))
  cond
}
