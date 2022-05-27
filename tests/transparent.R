source("incl/start.R")
library("listenv")

message("*** transparent() ...")

message("- transparent() is defunct")
res <- tryCatch(plan(transparent), error = identity)
stopifnot(inherits(res, "error"))  ## defunctError in R (>= 4.0.0)


message("- transparent() legacy behavior")
options(future.deprecated.defunct = NULL)

## No global variables
f <- try(transparent({
  42L
}), silent = FALSE)
print(f)
stopifnot(inherits(f, "SequentialFuture"), !f$lazy)

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


plan(transparent)
## No global variables
f <- try(future({
  42L
}), silent = FALSE)
print(f)
stopifnot(inherits(f, "SequentialFuture"), !f$lazy)

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

message("*** transparent() ... DONE")

source("incl/end.R")
