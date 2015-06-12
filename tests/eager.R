library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(eager)

message("*** eager() ...")

message("*** eager() without globals")

f <- eager({
  42L
})
stopifnot(inherits(f, "EagerFuture"))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** eager() with globals")
## A global variable
a <- 0
f <- eager({
  b <- 3
  c <- 2
  a * b * c
})
print(f)

## Since 'a' is a global variable in _eager_ future 'f',
## it already has been resolved, and any changes to 'a'
## at this point will _not_ affect the value of 'f'.
a <- 7
v <- value(f)
print(v)
stopifnot(v == 0)


message("*** eager() ... DONE")

## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
