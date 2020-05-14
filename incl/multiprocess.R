\donttest{

## Use multiprocess futures
plan(multiprocess)

## A global variable
a <- 0

## Create future (explicitly)
f <- future({
  b <- 3
  c <- 2
  a * b * c
})

## A multiprocess future is evaluated in a separate R process.
## Changing the value of a global variable will not affect
## the result of the future.
a <- 7
print(a)

v <- value(f)
print(v)
stopifnot(v == 0)

## Explicitly close multisession workers, if they were used
plan(sequential)
}
