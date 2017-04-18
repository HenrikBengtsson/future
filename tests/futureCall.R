source("incl/start.R")

message("*** futureCall() ...")

f1 <- future(do.call(rnorm, args = list(n = 100)), lazy = TRUE)
f2 <- futureCall(rnorm, args = list(n = 100), lazy = TRUE)

set.seed(42L)
v0 <- rnorm(n = 100)
str(list(v0 = v0))

set.seed(42L)
v1 <- value(f1)
str(list(v1 = v1))

set.seed(42L)
v2 <- value(f2)
str(list(v2 = v2))

## Because we use lazy futures and set the
## random seed just before they are resolved
stopifnot(all.equal(v1, v0))
stopifnot(all.equal(v1, v2))

message("*** futureCall() ... DONE")

source("incl/end.R")
