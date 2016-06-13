library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

message("*** backtrace( ) ...")

f <- future({ 42L; stop("XXX") })
v <- value(f, signal=FALSE)
print(v)
calls <- backtrace(f)
print(calls)


message("*** backtrace( ) - exceptions ...")

message("- No condition ...")
f <- future(42L)
res <- try(backtrace(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("- No call stack ...")
f <- future({ 42L; stop("XXX") })
v <- value(f, signal=FALSE)
f$value$traceback <- NULL ## Remove call stack
res <- try(backtrace(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("- Non-resolved future ...")
plan(remote, workers="localhost")

f <- future({ Sys.sleep(10); 42L; stop("XXX") })
res <- try(backtrace(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("*** backtrace( ) - exceptions ... DONE")


message("*** backtrace( ) ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
