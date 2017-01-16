## Regardless of the future plan, the number of workers,
## and where they are, the random numbers will be identical
plan(eager)
y1 <- future_lapply(1:10, FUN = rnorm, future.args = list(seed = 0xBEEF))
str(y1)

plan(multiprocess)
y2 <- future_lapply(1:10, FUN = rnorm, future.args = list(seed = 0xBEEF))
str(y2)

stopifnot(all.equal(y1, y2))
