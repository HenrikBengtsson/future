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

message("*** future() ... DONE")

source("incl/end.R")

