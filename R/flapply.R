#' @importFrom listenv listenv
fleapply <- function(x, FUN, ...) {
  stopifnot(is.function(FUN))
  res <- listenv()
  for (ii in seq_along(x)) {
    res[[ii]] <- future(FUN(x[[ii]], ...))
  }
  names(res) <- names(x)

  ## Not needed anymore
  rm(list=c("x", "FUN", "ii"))

  ## Resolve and return as values
  values(res)
} # fleapply()

flapply <- function(x, FUN, ...) {
  as.list(fleapply(x=x, FUN=FUN, ...))
}
