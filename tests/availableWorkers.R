source("incl/start.R")

message("*** availableWorkers() ...")

## The default
w <- availableWorkers()
print(w)
stopifnot(is.character(w), length(w) >= 1)

## Minimium of all known settings (default)
print(availableWorkers(which="min"))

## Maximum of all known settings (should never be used)
print(availableWorkers(which="max"))

## All known settings
print(availableWorkers(na.rm=FALSE, which="all"))

## System settings
w <- availableWorkers(methods="system")
print(w)
stopifnot(is.character(w), length(w) >= 1)

## Predefined ones for known cluster schedulers
print(availableWorkers(methods="PBS"))
print(availableWorkers(methods="SGE"))
print(availableWorkers(methods="Slurm"))

## PBS settings
pathname <- tempfile()
workers0 <- c("n1", "n2", "n3", "n1", "n6")
writeLines(workers0, con = pathname)
Sys.setenv(PBS_NODEFILE = pathname)
workers <- availableWorkers(methods="PBS")
print(workers)
stopifnot(length(workers) == length(workers0), all(workers == workers0))


## Any R options and system environment variable
print(availableWorkers(methods=c("width", "FOO_BAR_ENV"),
                     na.rm=FALSE, which="all"))

## Exception handling
Sys.setenv("FOO_BAR_ENV"="0")
res <- try(availableWorkers(methods="FOO_BAR_ENV"), silent=TRUE)
stopifnot(inherits(res, "try-error"))


message("*** availableWorkers() ... DONE")

source("incl/end.R")

