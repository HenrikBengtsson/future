run <- function(...) {
  library("boot")
  cd4.rg <- function(data, mle) MASS::mvrnorm(nrow(data), mle$m, mle$v)
  cd4.mle <- list(m = colMeans(cd4), v = var(cd4))
  boot(cd4, corr, R = 500, sim = "parametric", ran.gen = cd4.rg, mle = cd4.mle)
}

f <- future(run())

boot <- future_lapply(1:10, FUN = run, future.args = list(seed = 0xBEEF))
str(boot)
