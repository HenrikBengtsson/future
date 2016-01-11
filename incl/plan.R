a <- b <- c <- NA_real_

# A lazy future
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


# An eager future
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
