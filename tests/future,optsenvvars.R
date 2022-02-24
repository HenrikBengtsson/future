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
    is.null(getOption("abc")),
    identical(options(), old_options),
    identical(Sys.getenv("R_DEFAULT_INTERNET_TIMEOUT"), "300"),
    is.na(Sys.getenv("ABC", NA_character_))
#    identical(Sys.getenv(), old_envvars)
  )
  if (!identical(Sys.getenv(), old_envvars)) {
    message("Failed to undo environment variables:")
    oenvs <- Sys.getenv()
    message(sprintf(" - Expected environment variables: [n=%d] %s",
                    length(old_envvars), hpaste(sQuote(names(old_envvars)))))
    extra <- setdiff(names(oenvs), names(old_envvars))
    message(paste(sprintf(" - Environment variables still there: [n=%d]", length(extra)),
                  hpaste(sQuote(extra))))
    missing <- setdiff(names(old_envvars), names(oenvs))
    message(paste(sprintf(" - Environment variables missing: [n=%d]", length(missing)),
                  hpaste(sQuote(missing))))
    message("Differences environment variable by environment variable:")
    for (name in names(old_envvars)) {
      value0 <- unname(old_envvars[name])
      value  <- unname(oenvs[name])
      if (!identical(value, value0)) {
        utils::str(list(name = name, expected = value0, actual = value))
      }
    }
  }

  message(sprintf("- plan('%s') ... DONE", strategy))
} ## for (strategy ...)

message("*** Futures - undo R options and environment variables ... DONE")

source("incl/end.R")
