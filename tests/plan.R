source("incl/start,load-only.R")

message("*** plan() ...")

message("*** Set strategy via future::plan(future::multisession)")
oplan <- future::plan(future::multisession)
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** Set strategy via future::plan(future::multisession, globals = FALSE)")
oplan <- future::plan(future::multisession, globals = FALSE)
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** Set strategy via future::plan(future::multisession(globals = FALSE)")
oplan <- future::plan(future::multisession(globals = FALSE))
print(future::plan())
future::plan(oplan)
print(future::plan())

message("*** Set strategy via future::plan('multisession')")
oplan <- future::plan("multisession")
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
res <- try(plan('unknown strategy'), silent = TRUE)
print(res)
stopifnot(inherits(res, "try-error"))


message("*** plan(sequential)")
plan(sequential)
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


message("*** plan('sequential')")
## Setting strategy by name
plan("multisession")
print(plan())


message("*** plan() and overriding defaults")
message("*** plan(sequential)")
plan(sequential)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == TRUE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 0)

message("*** plan(sequential, local = FALSE)")
plan(sequential, local = FALSE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 1)

message("*** plan(sequential, local = FALSE, abc = 1, def = TRUE)")
plan(sequential, local = FALSE, abc = 1, def = TRUE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan(sequential(local = FALSE))")
plan(multisession)
plan(sequential(local = FALSE))
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan(tweak(sequential, local = FALSE))")
plan(multisession)
plan(tweak(sequential, local = FALSE))
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)


message("*** old <- plan(new)")
truth <- plan()
old <- plan(multisession, globals = FALSE)
stopifnot(identical(unclass(old), unclass(truth)))

curr <- plan()    ## curr == multisession(globals = FALSE)
prev <- plan(old) ## prev == sequential(local = FALSE)
stopifnot(identical(unclass(curr), unclass(prev)))

curr <- plan()    ## curr == old
stopifnot(identical(unclass(curr), unclass(old)))
stopifnot(identical(unclass(curr), unclass(truth)))

message("*** %plan% 'sequential'")
plan(multisession)
x %<-% { a <- 1 } %plan% "sequential"
stopifnot(identical(body(plan()), body(multisession)))

message("*** %plan% sequential")
plan(multisession)

## %plan% can operate on any expression, so it
## works just as an withPlan({ ... }, plan = ...)
fun <- { plan() } %plan% sequential
f <- fun(1)
stopifnot(inherits(f, "SequentialFuture"), !f$lazy, inherits(f, "SequentialFuture"))

x %<-% { a <- 1 } %plan% sequential
stopifnot(identical(body(plan()), body(multisession)))

message("*** %plan% sequential(local = FALSE) ")
plan(multisession)
a <- 0
x %<-% { a } %plan% sequential(local = FALSE)
a <- 42
print(x)
stopifnot(x == 0)
stopifnot(identical(body(plan()), body(multisession)))

message("*** Nested futures with different plans")

c %<-% {
  message("Resolving 'c'")
  a %<-% {
    message("Resolving 'a'")
    2
  } %plan% sequential
  b %<-% {
    message("Resolving 'b'")
    -9 * a
  }
  message("Local variable 'x'")
  x <- b / 3
  abs(x)
} %lazy% TRUE
d <- 42
print(d)
print(c)
stopifnot(c == 6)

message("*** plan() by functions and character names ... ")

plan(sequential)
a %<-% 42
stopifnot(a == 42)

plan("sequential")
a %<-% 42
stopifnot(a == 42)

plan(list(sequential))
a %<-% 42
stopifnot(a == 42)

plan(list("sequential"))
a %<-% 42
stopifnot(a == 42)

plan(list(sequential, sequential))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list("sequential", sequential))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list(sequential, "sequential"))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list("sequential", "sequential"))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

plan(list("future::sequential", "sequential"))
a %<-% { b %<-% 42; b }
stopifnot(a == 42)

message("*** plan() by functions and character names ... DONE")


message("*** plan() w/ commands ...")

plan(list(sequential, sequential))
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
