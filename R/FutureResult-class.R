#' Results from resolving a future
#'
#' @param value The value of the future expression.
#' If the expression was not fully resolved (e.g. an error) occurred,
#' the the value is `NULL`.
#' 
#' @param condition A [[base::condition]] captured while resolving the future,
#' if any.  This is typically an error.
#' 
#' @param \ldots (optional) Additional named results to be returned.
#' 
#' @param version The version format of the results.
#'
#' @return An object of class FutureResult.
#'
#' @details
#' This function is only part of the _backend_ Future API.
#' This function is _not_ part of the frontend Future API.
#' 
#' @export
#' @keywords internal
FutureResult <- function(value = NULL, condition = NULL, ..., version = "1.7") {
  args <- list(...)
  if (length(args) > 0) {
    names <- names(args)
    if (is.null(names) || any(nchar(names) == 0)) {
      stop(FutureError("Internal error: All arguments to FutureResult() must be named"))
    }
  }
  
  structure(list(value = value, condition = condition, ..., version = version),
            class = c("FutureResult", "list"))
}

