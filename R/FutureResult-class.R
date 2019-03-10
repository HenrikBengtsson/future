#' Results from resolving a future
#'
#' @param value The value of the future expression.
#' If the expression was not fully resolved (e.g. an error) occurred,
#' the the value is \code{NULL}.
#' 
#' @param conditions A list of zero or more list elements each containing
#' a captured \link[base:condition]{condition} and possibly more meta data such as the
#' call stack and a timestamp.
#'
#' @param \ldots (optional) Additional named results to be returned.
#' 
#' @param started,finished \link[base:POSIXct]{POSIXct} timestamps when the evaluation of
#' the future expression was started and finished.
#'
#' @param version The version format of the results.
#'
#' @return An object of class FutureResult.
#'
#' @details
#' This function is only part of the \emph{backend} Future API.
#' This function is \emph{not} part of the frontend Future API.
#'
#' @section Note to developers:
#' The FutureResult structure is \emph{under development} and may change at anytime,
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
FutureResult <- function(value = NULL, stdout = NULL, conditions = NULL, ..., started = .POSIXct(NA_real_), finished = Sys.time(), version = "1.7") {
  args <- list(...)
  if (length(args) > 0) {
    names <- names(args)
    if (is.null(names) || any(nchar(names) == 0)) {
      stop(FutureError(
        "Internal error: All arguments to FutureResult() must be named"
      ))
    }
    ## DEPRECATED in future (>= 1.11.0)
    if (!is.null(args[["calls"]])) stop_if_not(is.list(args[["calls"]]))
    if (!is.null(args[["condition"]])) stop_if_not(inherits(args[["condition"]], "error"))
  }

  if (!is.null(stdout)) stopifnot(is.character(stdout))
  
  if (is.null(conditions)) {
    ## BACKWARD COMPATIBILITY: future (< 1.11.0)
    if (!is.null(args[["condition"]])) {
      conditions <- list(list(condition=args[["condition"]]))
    }
  } else {
    stop_if_not(is.list(conditions))
    ## BACKWARD COMPATIBILITY: future (< 1.11.0)
    ## Make sure that 'condition' is set, in case some pkgs use that
    for (kk in seq_along(conditions)) {
      c <- conditions[[kk]]
      if (inherits(c[["condition"]], "error")) {
        args[["condition"]] <- c[["condition"]]
	break
      }
    }
  }
  
  structure(list(
    value      = value,
    stdout     = stdout,
    conditions = conditions,
    ...,
    started    = started,
    finished   = finished,
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

#' @rdname FutureResult
#' @export
#' @keywords internal
print.FutureResult <- function(x, ...) {
  s <- sprintf("%s:", class(x)[1])
  s <- c(s, sprintf("value: %s", class(x[["value"]])))
  s <- c(s, sprintf("stdout: %s", class(x[["stdout"]])))
  conditions <- x[["conditions"]]
  s <- c(s, sprintf("conditions: [n = %d] %s", length(conditions), paste(sapply(conditions, FUN = function(c) sQuote(class(c)[1])), collapse = ", ")))
  t0 <- x[["started"]]
  t1 <- x[["finished"]]
  s <- c(s, sprintf("duration: %s (started %s)", format(t1-t0), t0))
  s <- c(s, sprintf("version: %s", x[["version"]]))
  cat(s, sep = "\n")
}
