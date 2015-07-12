library("future")
library("listenv")

ovars <- ls()
oopts <- options(mc.cores=2+1, warn=1)
plan(multicore)

message("*** multicore() ...")

if (!supportsMulticore()) {
  message(sprintf("Multicore futures are not supporting on '%s'. Falling back to use synchroneous lazy futures", .Platform$OS))
}

message("*** multicore() without globals")

f <- multicore({
  42L
})
stopifnot(inherits(f, "MulticoreFuture") || (!supportsMulticore() && inherits(f, "Future")))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


message("*** multicore() with globals")
## A global variable
a <- 0
f <- multicore({
  b <- 3
  c <- 2
  a * b * c
})
print(f)

## A multicore future is evaluated in a separated
## forked process.  Changing the value of a global
## variable should not affect the result of the
## future.
a <- 7  ## Make sure globals are frozen
if ("covr" %in% loadedNamespaces()) v <- 0 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 0)


message("*** multicore() with globals and blocking")
x <- listenv()
for (ii in 1:4) x[[ii]] <- multicore({ ii })
v <- sapply(x, FUN=value)
stopifnot(all(v == 1:4))


message("*** multicore() and errors")
f <- multicore({
  stop("Whoops!")
  1
})
print(f)
v <- value(f, onError="return")
print(v)
stopifnot(inherits(v, "simpleError"))

res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

## Error is repeated
res <- try(value(f), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

message("*** multicore() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
