source("incl/start.R")

message("*** availableCores() ...")

## detectCores() may return NA_integer_
n <- parallel::detectCores()
message(sprintf("detectCores() = %d", n))
stopifnot(length(n) == 1, is.numeric(n))

## Default
n <- availableCores()
message(sprintf("availableCores() = %d", n))
stopifnot(length(n) == 1, is.numeric(n), n >= 1)

## Minimium of all known settings (default)
print(availableCores(which = "min"))

## Maximum of all known settings (should never be used)
print(availableCores(which = "max"))

## All known settings
print(availableCores(na.rm = FALSE, which = "all"))

## System settings
n <- availableCores(methods = "system")
print(n)
stopifnot(length(n) == 1, is.numeric(n), is.finite(n), n >= 1)

## Predefined ones for known cluster schedulers
print(availableCores(methods = "PBS"))
print(availableCores(methods = "SGE"))
print(availableCores(methods = "Slurm"))
print(availableCores(methods = "LSF"))

## Any R options and system environment variable
print(availableCores(methods = c("width", "FOO_BAR_ENV"),
                     na.rm = FALSE, which = "all"))

## Exception handling
Sys.setenv("FOO_BAR_ENV" = "0")
res <- try(availableCores(methods = "FOO_BAR_ENV"), silent = TRUE)
stopifnot(inherits(res, "try-error"))


ncores0 <- 42L

message("*** LSF ...")
Sys.setenv(LSB_DJOB_NUMPROC = as.character(ncores0))
ncores <- availableCores(methods = "LSF")
print(ncores)
stopifnot(ncores == ncores0)
message("*** LSF ... done")


message("*** Internal detectCores() ...")

## Option 'future.availableCores.system'
env <- environment(future:::detectCores)
env$res <- NULL
options(future.availableCores.system = 2L)
n <- detectCores()
print(n)
stopifnot(is.integer(n), is.finite(n), n >= 1, n == 2L)
options(future.availableCores.system = NULL)

## Reset
env <- environment(future:::detectCores)
env$res <- NULL
n <- detectCores()
print(n)
stopifnot(is.integer(n), is.finite(n), n >= 1)

message("*** Internal detectCores() ... DONE")


message("*** availableCores() ... DONE")

source("incl/end.R")
