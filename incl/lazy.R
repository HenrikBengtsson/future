## A global variable
a <- 0

## Create lazy future (explicitly)
f <- lazy({
  b <- 3
  c <- 2
  a * b * c
})

## Although 'f' is a _lazy_ future and therefore
## resolved/evaluates the future expression only
## when the value is requested, any global variables
## identified in the expression (here 'a') are
## "frozen" at the time point when the future is
## created.  Because of this, the 'a' in the
## the future expression preserved the zero value
## although we reassign it in the global environment
a <- 7
print(a)

v <- value(f)
print(v)
stopifnot(v == 0)

