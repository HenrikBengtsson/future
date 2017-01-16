## Regardless of the future plan, the number of workers,
## and where they are, the random numbers will be identical
plan(eager)
y1 <- future_lapply(1:5, FUN = rnorm, future.args = list(seed = 0xBEEF))
str(y1)

plan(multiprocess)
y2 <- future_lapply(1:5, FUN = rnorm, future.args = list(seed = 0xBEEF))
str(y2)

stopifnot(all.equal(y1, y2))


if (packageVersion("globals") >= "0.7.9-9000") {
library("boot")

run <- function(...) {
  cd4.rg <- function(data, mle) MASS::mvrnorm(nrow(data), mle$m, mle$v)
  cd4.mle <- list(m = colMeans(cd4), v = var(cd4))
  boot(cd4, corr, R = 500, sim = "parametric", ran.gen = cd4.rg, mle = cd4.mle)
}

plan(multisession)
boot <- future_lapply(1:5, FUN = run, future.args = list(seed = 0xBEEF))
str(boot)
}
