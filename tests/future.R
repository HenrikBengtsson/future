source("incl/start.R")

message("*** future() ...")

f <- future({
  42L
}, lazy = TRUE)

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** future() w/ gc=TRUE ...")

f <- future(42L, gc = TRUE, lazy = TRUE)
print(f)
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** future() w/ gc=TRUE ... DONE")
message("*** future() ... DONE")

message("*** future() ...")

f <- future({
  42L
}, lazy = TRUE)

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** future() w/ gc=TRUE ...")

f <- future(42L, gc = TRUE, lazy = TRUE)
print(f)
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** future() w/ gc=TRUE ... DONE")


message("*** future() - exceptions ...")

res <- try(future(42L, evaluator=TRUE, lazy = TRUE))
stopifnot(inherits(res, "try-error"))

res <- try(future(42L, evaluator=function(...) TRUE, lazy = TRUE))
stopifnot(inherits(res, "try-error"))

target <- list(name="<unknown>", envir=new.env(), code="Yo!", exists=TRUE)
res <- try(get_future(target, mustExist=TRUE))
stopifnot(inherits(res, "try-error"))

message("*** future() - exceptions ... DONE")


message("*** future() ... DONE")

source("incl/end.R")

