source("incl/start.R")
options(future.debug = FALSE)
message("*** Futures - undo R options and environment variables ...")

strategies <- supportedStrategies()

## Speed up CRAN checks: Skip on CRAN Windows 32-bit
if (!fullTest && isWin32) strategies <- NULL

options(digits = 6L)
old_options <- options()
old_envvars <- Sys.getenv()

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  f <- future({
    options(digits = 4L)
    options(abc = 42L)
    Sys.setenv(ABC = "42")
  })
  v <- value(f)
  stopifnot(
    is.null(getOption("abc")),
    getOption("digits") == 6L,
    identical(options(), old_options)
#    is.na(Sys.getenv("ABC", NA_character_)),
#    identical(Sys.getenv(), old_envvars)
  )

  message(sprintf("- plan('%s') ... DONE", strategy))
} ## for (strategy ...)

stopifnot(getOption("digits") == 6L)

message("*** Futures - undo R options and environment variables ... DONE")

source("incl/end.R")
