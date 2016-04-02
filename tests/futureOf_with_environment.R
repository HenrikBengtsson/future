library("future")

mstr <- function(...) message(paste(capture.output(str(...)), collapse="\n"))

suppressWarnings(rm(list=c("x", "z")))

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** futureOf() with environment ...")

message("*** futureOf() with environment - future assignments ...")

x <- new.env()
x$a %<-% { 1 }

f1 <- futureOf("a", envir=x)
print(f1)
f2 <- futureOf(a, envir=x)
f3 <- futureOf(x[["a"]])
f4 <- futureOf(x$a)
stopifnot(identical(f2, f1), identical(f3, f1), identical(f4, f1))

## Identify all futures
fs <- futureOf(envir=x)
print(fs)
stopifnot(identical(names(fs), c("a")))
stopifnot(identical(fs$a, f1))

fsD <- futureOf(envir=x, drop=TRUE)
print(fsD)
stopifnot(all(sapply(fsD, FUN=inherits, "Future")))
stopifnot(identical(fsD, fs))

message("*** futureOf() with environment - future assignments ... DONE")


message("*** futureOf() with environment - futures ...")

x <- new.env()
x$a <- future({ 1 })

f1 <- futureOf("a", envir=x)
print(f1)
stopifnot(identical(f1, x$a))
f2 <- futureOf(a, envir=x)
stopifnot(identical(f2, x$a))
f3 <- futureOf(x[["a"]])
stopifnot(identical(f3, x$a))
f4 <- futureOf(x$a)
stopifnot(identical(f4, x$a))

## Identify all futures
fs <- futureOf(envir=x)
print(fs)
stopifnot(identical(names(fs), c("a")))
stopifnot(identical(fs$a, f1))

fsD <- futureOf(envir=x, drop=TRUE)
print(fsD)
stopifnot(all(sapply(fsD, FUN=inherits, "Future")))
stopifnot(identical(fsD, fs))

message("*** futureOf() with environment - futures ... DONE")


message("*** futureOf() with environment - exceptions ...")

## Invalid subset
res <- try(futureOf(x[[0]], mustExist=FALSE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(futureOf(x[[0]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(futureOf(x[[10]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(futureOf(x[[1+2i]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** futureOf() with environment - exceptions ... DONE")

message("*** futureOf() with environment ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
