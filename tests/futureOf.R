library("future")
library("listenv")

ovars <- ls(envir=globalenv())
oopts <- options(future=lazy, warn=1)

a %<=% { 1 }

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


## Cleanup
options(oopts)
rm(list=setdiff(ls(envir=globalenv()), ovars), envir=globalenv())
