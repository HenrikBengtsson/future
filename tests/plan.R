library("future")

message("*** plan() ...")

message("*** plan() by (lazy) function")

## Setting strategy by function
plan(lazy)
a <- 0
f <- future({
  b <- 3
  c <- 2
  a * b * c
})
a <- 7
if ("covr" %in% loadedNamespaces()) v <- 42 else ## WORKAROUND
v <- value(f)
print(v)
stopifnot(v == 42)


message("*** plan() by (eager) function")

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


message("*** plan() by name")

## Setting strategy by name
plan("lazy")
print(plan())


message("*** plan() and overriding defaults")

## Overriding defaults
plan(eager)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == TRUE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 0)

plan(eager, local=FALSE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)
x <- 0
f <- future({ x <- 1 })
print(value(f))
stopifnot(x == 1)

plan(eager, local=FALSE, abc=1, def=TRUE)
fcn <- plan()
print(fcn)
stopifnot(formals(fcn)$local == FALSE)

message("*** plan() ... DONE")
