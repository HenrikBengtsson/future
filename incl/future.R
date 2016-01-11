## Use lazy futures
plan(lazy)

f <- future({
  a <- 7
  b <- 3
  c <- 2
  a * b * c
})

print(resolved(f))
y <- value(f)
print(y)
