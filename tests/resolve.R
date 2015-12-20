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

x <- list()
x$a <- future(1)
x$b <- future(2)
x$c <- 3
y <- resolve(x, idxs=1)
stopifnot(identical(y, x))
y <- resolve(x, idxs=2)
stopifnot(identical(y, x))
y <- resolve(x, idxs=3)
stopifnot(identical(y, x))
y <- resolve(x, idxs=seq_along(x))
stopifnot(identical(y, x))
y <- resolve(x, idxs=names(x))
stopifnot(identical(y, x))

## Exceptions
res <- try(y <- resolve(x, idxs=0L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(y <- resolve(x, idxs="unknown"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

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

x <- new.env()
x$a <- future({ 1 })
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x, idxs="a")
stopifnot(identical(y, x))
y <- resolve(x, idxs="b")
stopifnot(identical(y, x))
y <- resolve(x, idxs="c")
stopifnot(identical(y, x))
y <- resolve(x, idxs=names(x))
stopifnot(identical(y, x))

## Exceptions
res <- try(y <- resolve(x, idxs="unknown"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

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

x <- listenv()
x$a <- future({ 1 })
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x, idxs="a")
stopifnot(identical(y, x))
y <- resolve(x, idxs="b")
stopifnot(identical(y, x))
y <- resolve(x, idxs="c")
stopifnot(identical(y, x))
y <- resolve(x, idxs=names(x))
stopifnot(identical(y, x))

## Exceptions
res <- try(y <- resolve(x, idxs=0L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(y <- resolve(x, idxs="unknown"), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** resolve() for list environments ... DONE")

message("*** resolve() ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
