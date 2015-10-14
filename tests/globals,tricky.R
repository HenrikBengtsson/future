library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** flapply(x, FUN, ...) ...")

flapply <- function(x, FUN, ...) {
  res <- listenv()
  for (ii in seq_along(x)) {
    res[[ii]] %<=% FUN(x[[ii]], ...)
  }
  names(res) <- names(x)

  ## Make sure 'x', 'FUN' and 'ii' are truly
  ## exported to the future environment
  if (packageVersion("globals") > "0.8.1") {
    rm(list=c("x", "FUN", "ii"))
  }

  as.list(res)
}

x <- list(a="integer", b="numeric", c="character", c="list")
str(list(x=x))

y0 <- lapply(x, FUN=vector, length=2L)
str(list(y0=y0))

for (strategy in c("eager", "lazy", "multicore")) {
  y <- flapply(x, FUN=vector, length=2L)
  str(list(y=y))
  stopifnot(identical(y, y0))
}

message("*** flapply(x, FUN, ...) ... DONE")

## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
