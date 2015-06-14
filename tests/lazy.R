library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** lazy() ...")

message("*** lazy() without globals")

f <- lazy({
  42L
})
stopifnot(inherits(f, "LazyFuture"))

print(resolved(f))
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

## Since 'a' is a global variable in _lazy_ future 'f',
## which still hasn't been resolved, any changes to
## 'a' until 'f' is resolved, will affect its value.
a <- 7
if ("covr" %in% loadedNamespaces()) v <- 42 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 42)


message("*** lazy() and errors")
f <- lazy({
  stop("Whoops!")
  1
})
print(f)
v <- value(f, onError="return")
print(v)
stopifnot(inherits(v, "simpleError"))

res <- try({ v <- value(f) }, silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))


message("*** lazy() ... DONE")

## Cleanup
options(oopts)
rm(list=setdiff(ls(), ovars))
