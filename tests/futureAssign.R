library("future")

ovars <- ls(envir=globalenv())
oopts <- options(warn=1)
plan(lazy)

message("*** futureAssign() ...")

delayedAssign("a", {
  cat("Delayed assignment evaluated\n")
  1
})

futureAssign("b", {
  cat("Future assignment evaluated\n")
  2
})

## Because "lazy future" is used, the expression/value
## for 'b' will be resolved at the point.  For other
## types of futures, it may already have been resolved
cat(sprintf("b=%s\n", b))

## The expression/value of 'a' is resolved at this point,
## because a delayed assignment (promise) was used.
cat(sprintf("a=%s\n", a))

stopifnot(identical(a, 1))
stopifnot(identical(b, 2))


## Potential task name clashes
u <- new.env()
v <- new.env()
futureAssign("a", { 2 }, assign.env=u)
futureAssign("a", { 4 }, assign.env=v)

cat(sprintf("u$a=%s\n", u$a))
cat(sprintf("v$a=%s\n", v$a))

stopifnot(identical(u$a, 2))
stopifnot(identical(v$a, 4))

message("*** futureAssign() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
