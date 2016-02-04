library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)
setTimeLimit(cpu=10, elapsed=10, transient=TRUE)

message("*** Tricky use cases related to globals (part 2) ...")

library("future")

## Allow for two (sic!) background processes
plan(multisession, maxCores=3L)

env <- new.env()

## Create future #1 (consumes background process #1)
env$a %<=% { 5 }

## Create future #2 (consumes background process #2)
b %<=% { "a" }

## Resolve future #2 (frees up background process #2)
message(sprintf("b=%s\n", b))

#resolve(env, value=TRUE)

## Create future #3 (consumes background process #2)
## THIS IS THE TRICKY PART:
## Two globals are identified `env` and `b` and both are resolved.
## However, object `env[[b]]` (here element `a` of environment `env`)
## is not touched and therefore not resolved (since it is a future)
## unless environment `env` is recursively resolved. (Issue #49)
y %<=% { env[[b]] }
res <- try({
## Resolve future #3
message(sprintf("y=%s\n", y))
})

## Until Issue #49 is fixed, we'll get a timeout error
stopifnot(inherits(res, "try-error"))

## Resolve future #1 if not already done
str(as.list(env))

## Create future #4
## Since future #1 is resolved it will work at this point
y %<=% { env[[b]] }
## Resolve future #4
message(sprintf("y=%s\n", y))

message("*** Tricky use cases related to globals (part 2) ... DONE")


## Cleanup
setTimeLimit()
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
