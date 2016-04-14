library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** futureOf() with listenv ...")

message("*** futureOf() with listenv - future assignments ...")

x <- listenv()
x$a %<-% { 1 }

f1 <- futureOf("a", envir=x)
print(f1)
f2 <- futureOf(a, envir=x)
f3 <- futureOf(1, envir=x)
f4 <- futureOf(x[["a"]])
f5 <- futureOf(x$a)
f6 <- futureOf(x[[1]])
stopifnot(identical(f2, f1), identical(f3, f2), identical(f4, f3),
          identical(f5, f4), identical(f6, f5))

x[[3]] %<-% { 3 }
x$d %<-% { 4 }
x[[5]] <- 5

## Identify all futures
fs <- futureOf(envir=x)
print(fs)
stopifnot(identical(names(fs), names(x)))
stopifnot(identical(fs$a, f1))
stopifnot(identical(fs[[3]], futureOf(3L, envir=x)))
stopifnot(identical(fs$d, futureOf("d", envir=x)))

fsD <- futureOf(envir=x, drop=TRUE)
print(fsD)
stopifnot(all(sapply(fsD, FUN=inherits, "Future")))
stopifnot(!identical(fsD, fs))

message("*** futureOf() with listenv - future assignments ... DONE")


message("*** futureOf() with listenv - futures ...")

x <- listenv()
x$a <- future({ 1 })

f1 <- futureOf("a", envir=x)
print(f1)
stopifnot(identical(f1, x$a))
f2 <- futureOf(a, envir=x)
stopifnot(identical(f2, x$a))
f3 <- futureOf(1, envir=x)
stopifnot(identical(f3, x$a))
f4 <- futureOf(x[["a"]])
stopifnot(identical(f4, x$a))
f5 <- futureOf(x$a)
stopifnot(identical(f5, x$a))
f6 <- futureOf(x[[1]])
stopifnot(identical(f6, x$a))

x[[3]] <- future({ 3 })
x$d <- future({ 4 })
x[[5]] <- 5

## Identify all futures
fs <- futureOf(envir=x)
print(fs)
stopifnot(identical(names(fs), names(x)))
stopifnot(identical(fs$a, f1))
stopifnot(identical(fs[[3]], futureOf(3L, envir=x)))
stopifnot(identical(fs$d, futureOf("d", envir=x)))

fsD <- futureOf(envir=x, drop=TRUE)
print(fsD)
stopifnot(all(sapply(fsD, FUN=inherits, "Future")))
stopifnot(!identical(fsD, fs))

message("*** futureOf() with listenv - futures ... DONE")


message("*** futureOf() with listenv - exceptions ...")

## Invalid subset
res <- try(futureOf(x[[0]], mustExist=FALSE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

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

message("*** futureOf() with listenv - exceptions ... DONE")


message("*** futureOf() with listenv ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
