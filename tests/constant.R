library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)

message("*** constant() ...")

constant <- future:::constant

## No global variables
f <- try(constant(42L), silent=FALSE)
print(f)
stopifnot(inherits(f, "ConstantFuture"))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


plan(constant)
## No global variables
f <- try(future(42L), silent=FALSE)
print(f)
stopifnot(inherits(f, "ConstantFuture"))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)

message("*** constant() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
