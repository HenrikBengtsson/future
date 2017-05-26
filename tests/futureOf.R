source("incl/start.R")
library("listenv")

message("*** futureOf() ...")

a %<-% { 1 } %lazy% TRUE

f1 <- futureOf("a")
print(f1)
f2 <- futureOf(a)
print(f2)
stopifnot(identical(f2, f1))

fs <- futureOf()
print(fs)

## Non-existing object
res <- tryCatch(futureOf("non-exiting-object", mustExist = TRUE), error = identity)
stopifnot(inherits(res, "error"))

message("*** futureOf() ... DONE")

source("incl/end.R")
