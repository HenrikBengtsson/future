library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** resolve() ...")

message("*** resolve() for lists ...")

x <- list()
y <- resolve(x)
stopifnot(identical(y, x))

x <- list()
x$a <- 1
x$b <- 2
y <- resolve(x)
stopifnot(identical(y, x))

x <- list()
x$a <- future(1)
x$b <- future(2)
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))

message("*** resolve() for lists ... DONE")

message("*** resolve() for environments ...")

x <- new.env()
y <- resolve(x)
stopifnot(identical(y, x))

x <- new.env()
x$a <- 1
x$b <- 2
y <- resolve(x)
stopifnot(identical(y, x))

x <- new.env()
x$a <- future(1)
x$b <- future(2)
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))

x <- new.env()
x$a %<=% { 1 }
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))

message("*** resolve() for environments ... DONE")

message("*** resolve() for list environments ...")

x <- listenv()
y <- resolve(x)
stopifnot(identical(y, x))

x <- listenv()
x$a <- 1
x$b <- 2
y <- resolve(x)
stopifnot(identical(y, x))

x <- listenv()
x$a <- future(1)
x$b <- future(2)
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))

x <- listenv()
x$a %<=% { 1 }
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))

message("*** resolve() for list environments ... DONE")

message("*** resolve() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
