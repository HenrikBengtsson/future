#' Wait until all existing futures in an environment are resolved
#'
#' The environment is first scanned for futures and then the futures
#' are polled until all are resolved.  When a resolved future is
#' detected its value is retrieved (optionally).
#' This provides an efficient mechanism for waiting for a set of
#' futures to be resolved and in the meanwhile retrieving values
#' of already resolved futures.
#'
#' @param x an environment holding futures.
#' @param value If TRUE, the values are retrieved, otherwise not.
#' @param sleep Number of seconds to wait before checking
#' if futures have been resolved since last time.
#' @param ... Not used
#'
#' @return Environment \code{x}.
#'
#' @seealso futureOf
#'
#' @export
resolve <- function(x, value=TRUE, sleep=1.0, ...) UseMethod("resolve")

#' @export
resolve.list <- function(x, value=TRUE, sleep=1.0, ...) {
  ## Nothing to do?
  if (length(x) == 0) return(x)

  ## All non-futures are considered resolved
  resolved <- !sapply(x, FUN=inherits, "Future")

  while (!all(resolved)) {
    for (ii in which(!resolved)) {
      future <- x[[ii]]
      if (!resolved(future)) next

      ## Retrieve value?
      if (value) {
        ## Allow for errors
        tryCatch({ value(future) }, error = function(ex) {})
      }

      resolved[ii] <- TRUE
    } # for (ii ...)

    ## Wait a bit before checking again
    if (!all(resolved)) Sys.sleep(sleep)
  } # while (...)

  x
} ## resolve() for list

#' @export
resolve.environment <- function(x, value=TRUE, sleep=1.0, ...) {
  ## Identify all futures
  futures <- futureOf(envir=x, drop=TRUE)

  ## Nothing to do?
  if (length(futures) == 0) return(x)

  ## Resolve all futures
  resolve(futures, value=value, sleep=sleep, ...)

  ## Touch every element?
  ## (to trigger removal of internal futures)
  if (value) {
    idxs <- if (inherits(x, "listenv")) seq_along(x) else names(x)
    for (idx in idxs) {
      ## Allow for errors
      tryCatch({ force(x[[idx]]) }, error = function(ex) {})
    }
  }

  x
}
