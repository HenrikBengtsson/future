#' Results from resolving a future
#'
#' @param value The value of the future expression.
#' If the expression was not fully resolved (e.g. an error) occurred,
#' the the value is `NULL`.
#' 
#' @param condition A [[base::condition]] captured while resolving the future,
#' if any.  This is typically an error.
#' 
#' @param calls A list of calls that led up to the captured condition, if any.
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
FutureResult <- function(value = NULL, condition = NULL, calls = NULL, ...,
                         version = "1.7") {
  if (!is.null(condition)) stop_if_not(inherits(condition, "condition"))
  if (!is.null(calls)) stop_if_not(is.list(calls))
  
  args <- list(...)
  if (length(args) > 0) {
    names <- names(args)
    if (is.null(names) || any(nchar(names) == 0)) {
      stop(FutureError(
        "Internal error: All arguments to FutureResult() must be named"
      ))
    }
  }
  
  structure(list(
    value = value,
    condition = condition,
    calls = calls,
    ...,
    version = version
  ), class = "FutureResult")
}


#' @rdname FutureResult
#' @export
#' @keywords internal
as.character.FutureResult <- function(x, ...) {
  info <- x[c("value", "condition", "version")]
  info <- sapply(info, FUN = function(value) {
    if (is.null(value)) return("NULL")
    value <- as.character(value)
    if (length(value) == 0L) return("")
    value <- hpaste(value)
    if (nchar(value) > 20L)
      value <- paste0(substr(value, start = 1L, stop = 20L), " ...")
    value
  })
  info <- sprintf("%s: %s", names(info), sQuote(info))
  info <- paste(info, collapse = "; ")
  sprintf("%s: %s", class(x)[1], info)
}
