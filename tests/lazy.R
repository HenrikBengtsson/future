library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** lazy() ...")

message("*** lazy() without globals")

f <- lazy({
  42L
})
stopifnot(inherits(f, "LazyFuture"))

## Check whether a lazy future is resolved
## or not will force evaluation
print(resolved(f))
stopifnot(resolved(f))

y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** lazy() with globals")
## A global variable
a <- 0
f <- lazy({
  b <- 3
  c <- 2
  a * b * c
})
print(f)

## Although 'f' is a _lazy_ future and therefore
## resolved/evaluates the future expression only
## when the value is requested, any global variables
## identified in the expression (here 'a') are
## "frozen" at the time point when the future is
## created.  Because of this, 'a' preserved the
## zero value although we reassign it below
a <- 7  ## Make sure globals are frozen
##if ("covr" %in% loadedNamespaces()) v <- 0 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 0)


## A global variable (but without "freezing" it)
a <- 0
f <- lazy({
  b <- 3
  c <- 2
  a * b * c
}, globals=FALSE)
print(f)

## Since 'a' is a global variable in _lazy_ future 'f',
## which still hasn't been resolved, any changes to
## 'a' until 'f' is resolved, will affect its value.
a <- 7 ## ... but not in this case
##if ("covr" %in% loadedNamespaces()) v <- 42 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 42)


message("*** lazy() with globals (tricky)")
x <- listenv()
for (ii in 1:5) x[[ii]] <- lazy({ ii }, globals=TRUE)
v <- sapply(x, FUN=value)
stopifnot(all(v == 1:5))  ## Make sure globals are frozen

x <- listenv()
for (ii in 1:5) x[[ii]] <- lazy({ ii }, globals=FALSE)
v <- sapply(x, FUN=value)
stopifnot(all(v == 5L))  ## Make sure globals are not frozen


message("*** lazy() and errors")
f <- lazy({
  stop("Whoops!")
  1
})
print(f)
v <- value(f, signal=FALSE)
print(v)
stopifnot(inherits(v, "simpleError"))

res <- try({ v <- value(f) }, silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

## Error is repeated
res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("*** lazy() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
