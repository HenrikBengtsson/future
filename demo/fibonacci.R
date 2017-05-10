library("future")
library("listenv")

## Defines the first 100 Fibonacci numbers
## (0, 1, 1, 2, 3, 5, 8, ...)
## but calculate only the ones need when
## a number is actually requested.
oplan <- plan(sequential)

x <- listenv()
x[[1]] <- 0
x[[2]] <- 1
for (i in 3:100) {
  x[[i]] %<-% { x[[i - 2]] + x[[i - 1]] } %lazy% TRUE
}

## At this point nothing has been calculated,
## because lazy evaluation is in place.

## Get the 7:th Fibonnaci numbers (should be 8)
print(x[[7]])

## At this point x[1:7] have been calculated,
## but nothing beyond.

## Let's get the 50:th number.
print(x[[50]])

## Reset plan
plan(oplan)
