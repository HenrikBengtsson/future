#' Results from resolving a future
#'
#' @param value The value of the future expression.
#' If the expression was not fully resolved (e.g. an error) occurred,
#' the the value is \code{NULL}.
#' 
#' @param conditions A list of zero or more list elements each containing
#' a captured [[base::condition]] and possibly more meta data such as the
#' call stack and a timestamp.
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
#' @section Note to developers:
#' The FutureResult structure is _under development_ and may change at anytime,
#' e.g. elements may be renamed or removed.  Because of this, please avoid
#' accessing the elements directly in code.  Feel free to reach out if you need
#' to do so in your code.
#'
#' @section Deprecated elements:
#' * future (>= 1.11.0): elements \code{condition} and \code{calls} are
#'   deprecated in favor of \code{conditions}
#'
#' @export
#' @keywords internal
FutureResult <- function(value = NULL, stdout = NULL, conditions = NULL, ..., version = "1.7") {
  args <- list(...)
  if (length(args) > 0) {
    names <- names(args)
    if (is.null(names) || any(nchar(names) == 0)) {
      stop(FutureError(
        "Internal error: All arguments to FutureResult() must be named"
      ))
    }
    ## DEPRECATED in future (>= 1.11.0)
    if (!is.null(args$calls)) stop_if_not(is.list(args$calls))
    if (!is.null(args$condition)) stop_if_not(inherits(args$condition, "error"))
  }

  if (!is.null(stdout)) stopifnot(is.character(stdout))
  
  if (is.null(conditions)) {
    ## BACKWARD COMPATIBILITY: future (< 1.11.0)
    if (!is.null(args$condition)) {
      conditions <- list(list(condition=args$condition))
    }
  } else {
    stop_if_not(is.list(conditions))
    ## BACKWARD COMPATIBILITY: future (< 1.11.0)
    ## Make sure that 'condition' is set, in case some pkgs use that
    for (kk in seq_along(conditions)) {
      c <- conditions[[kk]]
      if (inherits(c$condition, "error")) {
        args$condition <- c$condition
	break
      }
    }
  }
  
  structure(list(
    value      = value,
    stdout     = stdout,
    conditions = conditions,
    ...,
    version    = version
  ), class = "FutureResult")
}


#' @rdname FutureResult
#' @export
#' @keywords internal
as.character.FutureResult <- function(x, ...) {
  info <- x[c("value", "stdout", "conditions", "version")]
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
