#' [DEFUNCT] Apply a Function over a List or Vector via Futures
#'
#' \emph{
#' IMPORTANT: The \code{future_lapply()} function has been moved to the
#' \href{https://cran.r-project.org/package=future.apply}{future.apply} package.
#' The version in this package (future) is defunct and gives an error if used.
#' It will be fully removed in an upcoming release.
#' Please update your code to make use of
#' \code{future.apply::future_lapply()} instead.
#' }
#'
#' @param \dots Not used.
#' 
#' @export
#' @keywords internal
future_lapply <- function(...) {
  .Defunct(msg = "The implementation of future_lapply() in the 'future' package is defunct. Please use the one in the 'future.apply' package instead.")
}
