library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)

message("*** %<=% to listenv ...")

## - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Future assignment via infix operator
## - - - - - - - - - - - - - - - - - - - - - - - - - - - -
z <- listenv()
stopifnot(length(names(z)) == 0)

message("*** %<=% to listenv: Assign by index")
z[[1]] %<=% { 2 }
stopifnot(length(z) == 1)
stopifnot(length(names(z)) == 0)

z[[1]] %<=% { 2 }
stopifnot(length(z) == 1)
stopifnot(length(names(z)) == 0)

z[[4]] %<=% { "async!" }
stopifnot(length(z) == 4)
stopifnot(length(names(z)) == 0)

message("*** %<=% to listenv: Update names")
names(z) <- c("A", "B", "C", "D")
stopifnot(identical(names(z), c("A", "B", "C", "D")))


message("*** %<=% to listenv: Assign by name (existing)")
z$B %<=% TRUE
stopifnot(length(z) == 4)
stopifnot(identical(names(z), c("A", "B", "C", "D")))

y <- as.list(z)
str(y)
stopifnot(length(y) == 4)
stopifnot(identical(names(y), c("A", "B", "C", "D")))


message("*** %<=% to listenv: Asserting no name clashes among futures")
u <- listenv()
u$a %<=% 1
stopifnot(identical(names(u), "a"))
fu <- futureOf(u$a)

v <- listenv()
v$a %<=% 2
stopifnot(identical(names(v), "a"))
fv <- futureOf(v$a)
stopifnot(!identical(fu, fv))

fu <- futureOf(u$a)
stopifnot(!identical(fu, fv))

stopifnot(identical(u$a, 1))
stopifnot(identical(v$a, 2))


message("*** %<=% to listenv ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
