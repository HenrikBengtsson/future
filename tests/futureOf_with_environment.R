library("future")

mstr <- function(...) message(paste(capture.output(str(...)), collapse="\n"))

suppressWarnings(rm(list=c("x", "z")))

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** futureOf() with environment ...")

x <- new.env()
x$a %<=% { 1 }

f1 <- futureOf("a", envir=x)
print(f1)
f2 <- futureOf(a, envir=x)
f3 <- futureOf(x[["a"]])
f4 <- futureOf(x$a)
stopifnot(identical(f2, f1), identical(f3, f1), identical(f4, f1))

## Identify all futures
fs <- futureOf(envir=x)
print(fs)
stopifnot(identical(names(fs), grep("^.future_", names(x), value=TRUE, invert=TRUE)))
stopifnot(identical(fs$a, f1))

## Invalid subset
res <- try(futureOf(x[[0]], mustExist=FALSE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(futureOf(x[[0]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(futureOf(x[[10]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(futureOf(x[[1+2i]], mustExist=TRUE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** futureOf() with environment ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
