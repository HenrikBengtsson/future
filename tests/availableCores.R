library("future")

message("*** availableCores() ...")

n <- availableCores()
message(sprintf("n=%d", n))

## Default
print(availableCores())

## Minimium of all known settings (default)
print(availableCores(which="min"))

## Maximum of all known settings (should never be used)
print(availableCores(which="max"))

## All known settings
print(availableCores(na.rm=FALSE, which="all"))

## Predefined ones for known cluster schedulers
print(availableCores(methods="PBS"))
print(availableCores(methods="system"))

## Any R options and system environment variable
print(availableCores(methods=c("width", "FOO_BAR_ENV"),
                     na.rm=FALSE, which="all"))

## Exception handling
Sys.setenv("FOO_BAR_ENV"="0")
res <- try(availableCores(methods="FOO_BAR_ENV"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** availableCores() ... DONE")

