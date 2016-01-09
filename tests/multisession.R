library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)
plan(multisession)

message("*** multisession() ...")

## No global variables
f <- multisession({
  42L
})
print(f)
stopifnot(inherits(f, "ClusterFuture"))

print(resolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


## A global variable
a <- 0
f <- multisession({
  b <- 3
  c <- 2
  a * b * c
})
print(f)


## A multisession future is evaluated in a separate
## R session process.  Changing the value of a global
## variable should not affect the result of the
## future.
a <- 7  ## Make sure globals are frozen
if ("covr" %in% loadedNamespaces()) v <- 0 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 0)


message("*** multisession() with globals and blocking")
x <- listenv()
for (ii in 1:4) {
  message(sprintf(" - Creating multisession future #%d ...", ii))
  x[[ii]] <- multisession({ ii })
}
message(sprintf(" - Resolving %d multisession futures", length(x)))
##if ("covr" %in% loadedNamespaces()) v <- 1:4 else ## WORKAROUND
v <- sapply(x, FUN=value)
stopifnot(all(v == 1:4))


message("*** multisession() and errors")
f <- multisession({
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


message("*** multisession() - too large globals ...")
options("future::maxSizeOfGlobals"=1024*4L)

limit <- getOption("future::maxSizeOfGlobals")
cat(sprintf("Max total size of globals: %g bytes\n", limit))

## A large object
a <- 1:1014
size <- object.size(a)
cat(sprintf("a: %g bytes\n", size))
f <- multisession({ sum(a) })
print(f)
v <- value(f)
print(v)
stopifnot(v == sum(a))


## A too large object
a <- 1:1015
size <- object.size(a)
cat(sprintf("a: %g bytes\n", size))
res <- try(f <- multisession({ sum(a) }), silent=TRUE)
stopifnot(inherits(res, "try-error"))


message("*** multisession() - too large globals ... DONE")


message("*** multisession() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
