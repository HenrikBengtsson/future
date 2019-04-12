#' Check whether multicore processing is supported or not
#'
#' Multicore futures are only supported on systems supporting
#' multicore processing.  \R supports this on most systems,
#' except on Microsoft Windows.
#'
#' @return TRUE if multicore processing is supported, otherwise FALSE.
#'
#' @seealso
#' To use multicore futures, use \code{\link{plan}(\link{multicore})}.
#'
#' @export
#' @keywords internal
supportsMulticore <- local({
  supported <- NA
  function() {
    if (is.na(supported)) {
      ns <- getNamespace("parallel")
      supported <<- exists("mcparallel", mode = "function", envir = ns, inherits = FALSE)
    }
    supported
  }
})
