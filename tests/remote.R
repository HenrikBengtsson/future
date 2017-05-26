source("incl/start.R")
library("listenv")

message("*** remote() ...")

## No global variables
f <- try(remote({
  42L
}, workers = "localhost"), silent = FALSE)
print(f)
stopifnot(inherits(f, "ClusterFuture"))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


plan(remote, workers = "localhost")
## No global variables
f <- try(future({
  42L
}), silent = FALSE)
print(f)
stopifnot(inherits(f, "ClusterFuture"))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


## A global variable
a <- 0
f <- try(future({
  b <- 3
  c <- 2
  a * b * c
}))
print(f)


message("*** remote() - exceptions ...")

res <- try(remote(42L, workers = TRUE), silent = TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("*** remote() - exceptions ... DONE")


message("*** remote() ... DONE")

source("incl/end.R")
