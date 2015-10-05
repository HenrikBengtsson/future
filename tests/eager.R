library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(eager)

message("*** eager() ...")

for (globals in c(FALSE, TRUE)) {

message(sprintf("*** eager(..., globals=%s) without globals", globals))

f <- eager({
  42L
}, globals=globals)
stopifnot(inherits(f, "EagerFuture"))

print(resolved(f))
stopifnot(resolved(f))

y <- value(f)
print(y)
stopifnot(y == 42L)


message(sprintf("*** eager(..., globals=%s) with globals", globals))
## A global variable
a <- 0
f <- eager({
  b <- 3
  c <- 2
  a * b * c
}, globals=globals)
print(f)

## Since 'a' is a global variable in _eager_ future 'f',
## it already has been resolved, and any changes to 'a'
## at this point will _not_ affect the value of 'f'.
a <- 7
v <- value(f)
print(v)
stopifnot(v == 0)


message(sprintf("*** eager(..., globals=%s) and errors", globals))
f <- eager({
  stop("Whoops!")
  1
}, globals=globals)
print(f)
stopifnot(inherits(f, "EagerFuture"))

res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

## Error is repeated
res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

} # for (globals ...)

message("*** eager() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
