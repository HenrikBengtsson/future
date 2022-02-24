source("incl/start.R")
options(future.debug = FALSE)
message("*** Futures - undo R options and environment variables ...")

strategies <- supportedStrategies()

## Speed up CRAN checks: Skip on CRAN Windows 32-bit
if (!fullTest && isWin32) strategies <- NULL

old_options <- options()
old_envvars <- Sys.getenv()

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  f <- future({
    options(abc = 42L)
    Sys.setenv(ABC = "42")
  })
  v <- value(f)
  stopifnot(
    is.null(getOption("abc")),
#    is.na(Sys.getenv("ABC", NA_character_)),
    identical(options(), old_options)
#    identical(Sys.getenv(), old_envvars)
  )

  message(sprintf("- plan('%s') ... DONE", strategy))
} ## for (strategy ...)

message("*** Futures - undo R options and environment variables ... DONE")

source("incl/end.R")
