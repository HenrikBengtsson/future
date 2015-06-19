## A global variable
a <- 0

## Create multicore future (explicitly)
f <- multicore({
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
