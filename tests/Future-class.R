source("incl/start.R")

message("*** Future class ...")

message("*** Future class - exception ...")

f <- Future()
print(f)
res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

## values() is an alias for value() for Future
res <- try(values(f), silent=TRUE)
stopifnot(inherits(res, "try-error"))

## When no packages are exported
foo <- structure(function(...) { Future(1) }, class="future")
plan(foo)
f <- Future()
expr <- getExpression(f)
print(expr)
stopifnot(is.call(expr))

message("*** Future class - exception ... DONE")

message("*** Future class ... DONE")

source("incl/end.R")
