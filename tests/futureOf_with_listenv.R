library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** futureOf() with listenv ...")

x <- listenv()
x$a %<=% { 1 }

f1 <- futureOf("a", envir=x)
print(f1)
f2 <- futureOf(a, envir=x)
f3 <- futureOf(1, envir=x)
f4 <- futureOf(x[["a"]])
f5 <- futureOf(x$a)
f6 <- futureOf(x[[1]])
stopifnot(identical(f2, f1), identical(f3, f2), identical(f4, f3),
          identical(f5, f4), identical(f6, f5))

fs <- futureOf(envir=x)
print(fs)

## Out-of-bound subscript, cf. lists
stopifnot(is.na(futureOf(x[[0]], mustExist=FALSE)))
res <- try(futureOf(x[[0]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

## Out-of-bound subscript, cf lists
stopifnot(is.na(futureOf(x[[10]], mustExist=FALSE)))
res <- try(futureOf(x[[10]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

## Invalid subscript
res <- try(futureOf(x[[1+2i]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

## Non-existing object
res <- try(futureOf(z[[1]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** futureOf() with listenv ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
