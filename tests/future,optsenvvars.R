source("incl/start.R")

message("*** Futures - undo R options and environment variables ...")

strategies <- supportedStrategies()

## Speed up CRAN checks: Skip on CRAN Windows 32-bit
if (!fullTest && isWin32) strategies <- NULL

oopts <- options()

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  f <- future(options(abc = 42L))
  stopifnot(is.null(getOption("abc")))
  v <- value(f)
  stopifnot(identical(options(), oopts))

  message(sprintf("- plan('%s') ... DONE", strategy))
} ## for (strategy ...)

message("*** Futures - undo R options and environment variables ... DONE")

source("incl/end.R")
