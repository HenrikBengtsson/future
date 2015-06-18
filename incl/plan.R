a <- b <- c <- NA_real_

# A lazy future (evaluated in a local environment)
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


# An eager future (evaluated in a local environment)
plan(eager)
f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})
y <- value(f)
print(y)
str(list(a=a, b=b, c=c)) ## All NAs


if (supportsMulticore()) {
  # A multicore future evaluated in a local environment
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
}


# An eager future evaluated in the global environment
plan(eager, local=FALSE)
f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})
y <- value(f)
print(y)
str(list(a=a, b=b, c=c)) ## Assigned the new values
