source("incl/start.R")
options(future.debug = FALSE)
message("*** Futures - undo R options and environment variables ...")

strategies <- supportedStrategies()

## Speed up CRAN checks: Skip on CRAN Windows 32-bit
if (!fullTest && isWin32) strategies <- NULL

options(digits = 6L)
Sys.setenv(R_DEFAULT_INTERNET_TIMEOUT = "300")
old_options <- options()
old_envvars <- Sys.getenv()

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)

  f <- future({
    options(digits = 4L)
    options(abc = 42L)
    Sys.setenv(R_DEFAULT_INTERNET_TIMEOUT = "30")
    Sys.setenv(ABC = "42")
  })
  v <- value(f)
  stopifnot(
    getOption("digits") == 6L,
    #DISABLED# is.null(getOption("abc")),
    identical(options()[names(old_options)], old_options),
    identical(Sys.getenv("R_DEFAULT_INTERNET_TIMEOUT"), "300")
    #DISABLED# is.na(Sys.getenv("ABC", NA_character_))
  )
  if (.Platform$OS.type == "windows") {
    ## Drop empty environment variables, because they are not supported by
    ## MS Windows, but may exist because they're inherited from a host OS
    old_envvars <- old_envvars[nzchar(old_envvars)]
    envvars <- Sys.getenv()
    envvars <- envvars[nzchar(envvars)]
    stopifnot(identical(envvars[names(old_envvars)], old_envvars))
  } else {
    stopifnot(identical(Sys.getenv()[names(old_envvars)], old_envvars))
  }

  message(sprintf("- plan('%s') ... DONE", strategy))
} ## for (strategy ...)

message("*** Futures - undo R options and environment variables ... DONE")

source("incl/end.R")
