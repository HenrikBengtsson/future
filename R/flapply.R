
#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' @param FUN  A function taking at least one argument.
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#'
#' @return A list.
#'
#' @aliases fleapply
#' @keywords internal
## FIXME: Do we need an envir argument here?
flapply <- function(x, FUN, ...) {
  stopifnot(is.function(FUN))
  
  fs <- vector("list", length = length(x))
  names(fs) <- names(x)
  
  for (ii in seq_along(x)) {
    ## Subsetting outside future is more efficient
    x_ii <- x[[ii]]
    fs[[ii]] <- future(FUN(x_ii, ...))
  }

  ## Not needed anymore
  rm(list=c("x", "FUN", "ii"))

  ## Resolve and return as values
  values(fs)
}


## FIXME: Do we need an envir argument here?
#' @importFrom listenv listenv
fleapply <- function(x, FUN, ...) {
  stopifnot(is.function(FUN))
  fs <- listenv()
  for (ii in seq_along(x)) {
    ## Subsetting outside future is more efficient
    x_ii <- x[[ii]]
    fs[[ii]] <- future(FUN(x_ii, ...))
  }
  names(fs) <- names(x)

  ## Not needed anymore
  rm(list=c("x", "FUN", "ii"))

  ## Resolve and return as values
  values(fs)
} # fleapply()
