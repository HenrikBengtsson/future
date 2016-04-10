message("*** plan() ...")
oopts <- options(warn=1)

message("*** Set strategy via future::plan(future::lazy)")
oplan <- future::plan(future::lazy)
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** Set strategy via future::plan(future::lazy, local=FALSE)")
oplan <- future::plan(future::lazy, local=FALSE)
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** Set strategy via future::plan(future::lazy(local=FALSE)")
oplan <- future::plan(future::lazy(local=FALSE))
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** Set strategy via future::plan('lazy')")
oplan <- future::plan("lazy")
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** plan('default')")
oplan <- future::plan("default")
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** plan('unknown strategy')")
res <- try(plan('unknown strategy'), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))


library("future")

message("*** plan() by (lazy) function")

## Setting strategy by function
plan(lazy)
a <- 0
f <- future({
  b <- 3
  c <- 2
  a * b * c
})
a <- 7  ## Make sure globals are frozen
##if ("covr" %in% loadedNamespaces()) v <- 0 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 0)


message("*** plan(eager)")
plan(eager)
a <- 0
f <- future({
  b <- 3
  c <- 2
  a * b * c
})
a <- 7
v <- value(f)
print(v)
stopifnot(v == 0)


message("*** plan('eager')")
## Setting strategy by name
plan("lazy")
print(plan())


message("*** plan() and overriding defaults")
message("*** plan(eager)")
plan(eager)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == TRUE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 0)

message("*** plan(eager, local=FALSE)")
plan(eager, local=FALSE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 1)

message("*** plan(eager, local=FALSE, abc=1, def=TRUE)")
plan(eager, local=FALSE, abc=1, def=TRUE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan(eager(local=FALSE))")
plan(lazy)
plan(eager(local=FALSE))
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan(tweak(eager, local=FALSE))")
plan(lazy)
plan(tweak(eager, local=FALSE))
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)


message("*** old <- plan(new)")
truth <- plan()
old <- plan(lazy, local=FALSE)
stopifnot(identical(old, truth))

curr <- plan()    ## curr == lazy(local=FALSE)
prev <- plan(old) ## prev == lazy(local=FALSE)
stopifnot(identical(curr, prev))

curr <- plan()    ## curr == old
stopifnot(identical(curr, old))
stopifnot(identical(curr, truth))

message("*** %plan% 'eager'")
plan(lazy)
x %<-% { a <- 1 } %plan% "eager"
stopifnot(identical(body(plan()), body(lazy)))

message("*** %plan% eager")
plan(lazy)

## %plan% can operate on any expression, so it
## works just as an withPlan({ ... }, plan=...)
fun <- { plan() } %plan% eager
f <- fun(1)
stopifnot(inherits(f, "EagerFuture"))

x %<-% { a <- 1 } %plan% eager
stopifnot(identical(body(plan()), body(lazy)))

message("*** %plan% eager(local=FALSE) ")
plan(lazy)
a <- 0
x %<-% { a } %plan% eager(local=FALSE)
a <- 42
print(x)
stopifnot(x == 0)
stopifnot(identical(body(plan()), body(lazy)))

message("*** Nested futures with different plans ")
plan(lazy)
c %<-% {
  message("Resolving 'c'")
  a %<-% {
    message("Resolving 'a'")
    2
  } %plan% eager
  b %<-% {
    message("Resolving 'b'")
    -9 * a
  }
  message("Local variable 'x'")
  x <- b / 3
  abs(x)
}
d <- 42
print(d)
print(c)
stopifnot(c == 6)

message("*** plan() ... DONE")

plan(eager)
options(oopts)
rm(list="oopts")
