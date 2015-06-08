library("future")

f <- lazy({
  42L
})
stopifnot(inherits(f, "LazyFuture"))

print(isResolved(f))
y <- value(f)
print(y)
stopifnot(y == 42L)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Lazy futures uses "lazy" globals
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## A global variable
a <- 0
f <- lazy({
  b <- 3
  c <- 2
  a * b * c
})

## Since 'a' is a global variable in _lazy_ future 'f',
## which still hasn't been resolved, any changes to
## 'a' until 'f' is resolved, will affect its value.
a <- 7
v <- value(f)
print(v)
stopifnot(v == 42)
