a <- b <- c <- NA_real_

# A lazy uniprocess future
plan(lazy)
f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})
y <- value(f)
print(y)
str(list(a=a, b=b, c=c)) ## All NAs


# A uniprocess future
plan(uniprocess)
f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})
y <- value(f)
print(y)
str(list(a=a, b=b, c=c)) ## All NAs


# A multicore future
plan(multicore)
f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})
y <- value(f)
print(y)
str(list(a=a, b=b, c=c)) ## All NAs


## Multisession futures gives an error on R CMD check on
## Windows (but not Linux or OS X) for unknown reasons.
## The same code works in package tests.
\donttest{

# A multisession future
plan(multisession)
f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})
y <- value(f)
print(y)
str(list(a=a, b=b, c=c)) ## All NAs

}
