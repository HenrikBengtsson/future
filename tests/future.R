source("incl/start.R")
plan(lazy)

message("*** future() ...")

f <- future({
  42L
})

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** future() w/ gc=TRUE ...")

f <- future(42L, gc=TRUE)
print(f)
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** future() w/ gc=TRUE ... DONE")

message("*** future() ... DONE")



plan(lazy)

message("*** future() ...")

f <- future({
  42L
})

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** future() w/ gc=TRUE ...")

f <- future(42L, gc=TRUE)
print(f)
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** future() w/ gc=TRUE ... DONE")


message("*** future() - exceptions ...")

res <- try(future(42L, evaluator=TRUE))
stopifnot(inherits(res, "try-error"))

res <- try(future(42L, evaluator=function(...) TRUE))
stopifnot(inherits(res, "try-error"))

target <- list(name="<unknown>", envir=new.env(), code="Yo!", exists=TRUE)
res <- try(get_future(target, mustExist=TRUE))
stopifnot(inherits(res, "try-error"))

message("*** future() - exceptions ... DONE")


message("*** future() ... DONE")

source("incl/end.R")

