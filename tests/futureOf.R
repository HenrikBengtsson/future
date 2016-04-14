library("future")
library("listenv")

message("*** futureOf() ...")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

a %<-% { 1 }

f1 <- futureOf("a")
print(f1)
f2 <- futureOf(a)
print(f2)
stopifnot(identical(f2, f1))

fs <- futureOf()
print(fs)

## Non-existing object
res <- try(futureOf("non-exiting-object", mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** futureOf() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
