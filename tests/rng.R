library("future")
oplan <- plan()


fsample <- function(x, size=10L, seed=NULL) {
  orng <- RNGkind()[1L]
  on.exit(RNGkind(orng))
  RNGkind("L'Ecuyer-CMRG")

  if (!is.null(seed)) set.seed(seed)
  .seed <- .Random.seed
  res <- listenv::listenv()
  for (ii in seq_len(size)) {
    .seed <- parallel::nextRNGStream(.seed)
    res[[ii]] %<=% {
      assign(".Random.seed", .seed, envir=globalenv())
      sample(x, size=1L)
    }
  }
  unlist(res)
} # fsample()


## Reference sample with fixed random seed
plan("eager")
y0 <- fsample(0:9, seed=42L)

for (strategy in c("eager", "lazy", "multicore")) {
  plan(strategy)

  ## Fixed random seed
  y1 <- fsample(0:9, seed=42L)
  print(y1)
  stopifnot(identical(y1, y0))

  ## Fixed random seed
  y2 <- fsample(0:9, seed=42L)
  print(y2)
  stopifnot(identical(y2, y1))
  stopifnot(identical(y2, y0))

  ## No seed
  y3 <- fsample(0:9)
  print(y3)

  ## No seed
  y4 <- fsample(0:9)
  print(y4)
}


## Cleanup
plan(oplan)
