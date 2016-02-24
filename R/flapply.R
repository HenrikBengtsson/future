## FIXME: Do we need an envir argument here?
#' @importFrom listenv listenv
fleapply <- function(x, FUN, ...) {
  stopifnot(is.function(FUN))
  res <- listenv()
  for (ii in seq_along(x)) {
    x_ii <- x[[ii]]
    res[[ii]] <- future(FUN(x_ii, ...))
  }
  names(res) <- names(x)

  ## Not needed anymore
  rm(list=c("x", "FUN", "ii"))

  ## Resolve and return as values
  values(res)
} # fleapply()


## FIXME: Do we need an envir argument here?
flapply <- function(x, FUN, ...) {
  as.list(fleapply(x=x, FUN=FUN, ...))
}
