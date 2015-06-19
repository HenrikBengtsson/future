## A global variable
a <- 0

## Create eager future (explicitly)
f <- eager({
  b <- 3
  c <- 2
  a * b * c
})

## Since 'a' is a global variable in _eager_ future 'f',
## it already has been resolved, and any changes to 'a'
## at this point will _not_ affect the value of 'f'.
a <- 7
print(a)

v <- value(f)
print(v)
stopifnot(v == 0)
