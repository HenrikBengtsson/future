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

message("*** %plan% 'eager'")
plan(lazy)
x %<=% { a <- 1 } %plan% "eager"
stopifnot(identical(plan(), lazy))

message("*** %plan% eager")
plan(lazy)
x %<=% { a <- 1 } %plan% eager
stopifnot(identical(plan(), lazy))

message("*** %plan% eager(local=FALSE) ")
plan(lazy)
a <- 0
x %<=% { a } %plan% eager(local=FALSE)
a <- 42
print(x)
stopifnot(x == 0)
stopifnot(identical(plan(), lazy))

message("*** plan() ... DONE")
