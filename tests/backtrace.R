library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

message("*** backtrace( ) ...")

message("*** backtrace( ) - explicit future ...")

f <- future({ 42L; stop("Woops") })
v <- value(f, signal=FALSE)
print(v)
calls <- backtrace(f)
print(calls)

message("*** backtrace( ) - explicit future ... DONE")


message("*** backtrace( ) - implicit future ...")

v %<-% { 42L; stop("Woops") }
calls <- backtrace(v)
print(calls)

message("*** backtrace( ) - implicit future ... DONE")


message("*** backtrace( ) - exceptions ...")

message("- No condition ...")
f <- future(42L)
res <- try(backtrace(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("- No call stack ...")
f <- future({ 42L; stop("Woops") })
v <- value(f, signal=FALSE)
f$value$traceback <- NULL ## Remove call stack
res <- try(backtrace(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

if (availableCores() >= 2L) {
  message("- Non-resolved future ...")
  plan(multiprocess, workers=2L)
  f <- future({ Sys.sleep(10); 42L; stop("Woops") })
  res <- try(backtrace(f), silent=TRUE)
  print(res)
  stopifnot(inherits(res, "try-error"))
}

message("*** backtrace( ) - exceptions ... DONE")


message("*** backtrace( ) ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
