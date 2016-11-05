source("incl/start,load-only.R")

message("*** plan() ...")

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


library("future")

message("*** plan('unknown strategy')")
res <- try(plan('unknown strategy'), silent=TRUE)
print(res)
stopifnot(inherits(res, "try-error"))

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


message("*** plan(uniprocess)")
plan(uniprocess)
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


message("*** plan('uniprocess')")
## Setting strategy by name
plan("lazy")
print(plan())


message("*** plan() and overriding defaults")
message("*** plan(uniprocess)")
plan(uniprocess)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == TRUE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 0)

message("*** plan(uniprocess, local=FALSE)")
plan(uniprocess, local=FALSE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 1)

message("*** plan(uniprocess, local=FALSE, abc=1, def=TRUE)")
plan(uniprocess, local=FALSE, abc=1, def=TRUE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan(uniprocess(local=FALSE))")
plan(lazy)
plan(uniprocess(local=FALSE))
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan(tweak(uniprocess, local=FALSE))")
plan(lazy)
plan(tweak(uniprocess, local=FALSE))
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)


message("*** old <- plan(new)")
truth <- plan()
old <- plan(lazy, local=FALSE)
stopifnot(identical(unclass(old), unclass(truth)))

curr <- plan()    ## curr == lazy(local=FALSE)
prev <- plan(old) ## prev == lazy(local=FALSE)
stopifnot(identical(unclass(curr), unclass(prev)))

curr <- plan()    ## curr == old
stopifnot(identical(unclass(curr), unclass(old)))
stopifnot(identical(unclass(curr), unclass(truth)))

message("*** %plan% 'uniprocess'")
plan(lazy)
x %<-% { a <- 1 } %plan% "uniprocess"
stopifnot(identical(body(plan()), body(lazy)))

message("*** %plan% uniprocess")
plan(lazy)

## %plan% can operate on any expression, so it
## works just as an withPlan({ ... }, plan=...)
fun <- { plan() } %plan% uniprocess
f <- fun(1)
stopifnot(inherits(f, "UniprocessFuture"), !f$lazy, inherits(f, "UniprocessFuture"))

x %<-% { a <- 1 } %plan% uniprocess
stopifnot(identical(body(plan()), body(lazy)))

message("*** %plan% uniprocess(local=FALSE) ")
plan(lazy)
a <- 0
x %<-% { a } %plan% uniprocess(local=FALSE)
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
  } %plan% uniprocess
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

message("*** plan() by functions and character names ... ")

plan(uniprocess)
a %<-% 42
stopifnot(a == 42)

plan("uniprocess")
a %<-% 42
stopifnot(a == 42)

plan(list(uniprocess))
a %<-% 42
stopifnot(a == 42)

plan(list("uniprocess"))
a %<-% 42
stopifnot(a == 42)

plan(list(uniprocess, lazy))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list("uniprocess", lazy))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list(uniprocess, "lazy"))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list("uniprocess", "lazy"))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

message("*** plan() by functions and character names ... DONE")


message("*** plan() w/ commands ...")

plan(list(uniprocess, uniprocess))
res <- plan("list")
print(res)
stopifnot(length(res) == 2)

plan("pop")
res <- plan("list")
print(res)
stopifnot(length(res) == 1)

plan("reset")
print(plan())

message("*** plan() w/ commands ... DONE")


message("*** plan() ... DONE")

source("incl/end.R")
