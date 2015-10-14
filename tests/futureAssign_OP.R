library("future")

ovars <- ls()
oopts <- options(warn=1)
plan(lazy)
printf <- function(...) cat(sprintf(...))

rm(list=intersect(c("x", "y"), ls()))

message("*** %<=% ...")

message("** Future evaluation without globals")
v1 %<=% { x <- 1 }
stopifnot(!exists("x", inherits=FALSE), identical(v1, 1))

message("** Future evaluation with globals")
a <- 2
v2 %<=% { x <- a }
stopifnot(!exists("x", inherits=FALSE), identical(v2, a))

message("** Future evaluation with errors")
v3 %<=% {
  x <- 3
  stop("Woops!")
  x
}
stopifnot(!exists("x", inherits=FALSE))
res <- try(identical(v3, 3), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("** Future evaluation with progress bar")
v4 %<=% {
  cat("Processing: ")
  for (ii in 1:10) { cat("."); Sys.sleep(0.1) }
  cat(" [100%]\n")
  4
}


message("** Collecting results")
printf("v1=%s\n", v1)
stopifnot(v1 == 1)

printf("v2=%s\n", v2)
stopifnot(v2 == a)

stopifnot(tryCatch({
  printf("v3=%s\n", v3)
}, error = function(ex) {
  printf("v3: <%s> (as expect)\n", class(ex)[1])
  TRUE
}))

printf("v4=%s\n", v4)
#stopifnot(v4 == 4)


message("** Left-to-right and right-to-left future assignments")
c %<=% 1
printf("c=%s\n", c)
1 %=>% d
printf("d=%s\n", d)
stopifnot(d == c)



message("** Nested future assignments")
a %<=% {
  b <- 1
  c %<=% 2
  3 -> d
  4 %=>% e
  b + c + d + e
}
printf("a=%s\n", a)
stopifnot(a == 10)

{ a + 1 } %=>% b
printf("b=%s\n", b)
stopifnot(b == a + 1)

message("*** %<=% ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
