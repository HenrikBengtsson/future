## Multisession futures gives error on R CMD check for
## unknown reasons. Same code works in package tests.
\donttest{

## Use multisession futures
plan(multisession)

## A global variable
a <- 0

## Create multicore future (explicitly)
f <- future({
  b <- 3
  c <- 2
  a * b * c
})

## A multicore future is evaluated in a separated
## forked process.  Changing the value of a global
## variable will not affect the result of the future.
a <- 7
print(a)

v <- value(f)
print(v)
stopifnot(v == 0)

}
