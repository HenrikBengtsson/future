library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

dimOk <- exists("dim.listenv", envir=getNamespace("listenv"))


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
x[[3]] <- 3
y <- resolve(x)
stopifnot(identical(y, x))
stopifnot(resolved(x$a))
stopifnot(resolved(x[["b"]]))

x <- list()
x$a <- future(1)
x$b <- future(2)
x[[4]] <- 4
dim(x) <- c(2,2)
y <- resolve(x, idxs=1)
stopifnot(identical(y, x))
stopifnot(resolved(x[[1]]))
y <- resolve(x, idxs=2)
stopifnot(identical(y, x))
stopifnot(resolved(x[[2]]))
y <- resolve(x, idxs=3)
stopifnot(identical(y, x))
y <- resolve(x, idxs=seq_along(x))
stopifnot(identical(y, x))
y <- resolve(x, idxs=names(x))
stopifnot(identical(y, x))

y <- resolve(x, idxs=matrix(c(1,2), ncol=2L))
stopifnot(identical(y, x))


## Exceptions
x <- list()
x$a <- 1
x$b <- 2

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
stopifnot(length(futureOf(envir=x, drop=TRUE)) == 0L)

x <- new.env()
x$a <- future(1)
x$b <- future(2)
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))
stopifnot(resolved(x$a))
stopifnot(resolved(x$b))
stopifnot(length(futureOf(envir=x, drop=TRUE)) == 2L)

x <- new.env()
x$a %<=% { 1 }
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))
stopifnot(length(futureOf(envir=x, drop=TRUE)) == 0L)

x <- new.env()
x$a <- future({ 1 })
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x, idxs="a")
stopifnot(identical(y, x))
stopifnot(resolved(x$a))
y <- resolve(x, idxs="b")
stopifnot(identical(y, x))
y <- resolve(x, idxs="c")
stopifnot(identical(y, x))
y <- resolve(x, idxs=names(x))
stopifnot(identical(y, x))
stopifnot(length(futureOf(envir=x, drop=TRUE)) == 1L)

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
if (dimOk) dim(x) <- c(1,3)
y <- resolve(x)
stopifnot(identical(y, x))

x <- listenv()
x$a %<=% { 1 }
x$b %<=% { 2 }
x$c <- 3
y <- resolve(x)
stopifnot(identical(y, x))
stopifnot(is.na(futureOf(x$a, mustExist=FALSE)))
stopifnot(is.na(futureOf(x$b, mustExist=FALSE)))
stopifnot(length(futureOf(envir=x, drop=TRUE)) == 0L)

x <- listenv()
x$a <- future({ 1 })
x$b %<=% { 2 }
x$c %<=% { 3 }
x$d <- 4
if (dimOk) dim(x) <- c(2,2)
y <- resolve(x, idxs="a")
stopifnot(identical(y, x))
stopifnot(identical(futureOf(x$a, mustExist=FALSE), x$a))
stopifnot(resolved(x$a))

y <- resolve(x, idxs="b")
stopifnot(identical(y, x))
stopifnot(is.na(futureOf(x$b, mustExist=FALSE)))

idxs <- if (dimOk) matrix(c(1,2), ncol=2L) else 3L
y <- resolve(x, idxs=idxs)
stopifnot(identical(y, x))
stopifnot(is.na(futureOf(x$c, mustExist=FALSE)))

y <- resolve(x, idxs=4L)
stopifnot(identical(y, x))
stopifnot(is.na(futureOf(x[[4L]], mustExist=FALSE)))

y <- resolve(x, idxs=names(x))
stopifnot(identical(y, x))

stopifnot(length(futureOf(envir=x, drop=TRUE)) == 1L)


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
