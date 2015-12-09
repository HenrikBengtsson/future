library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)
oplan <- plan()


## See Section 6 on 'Random-number generation' in
## vignette("parallel", package="parallel")
fsample <- function(x, size=10L, seed=NULL) {
  oseed <- .GlobalEnv$.Random.seed
  orng <- RNGkind("L'Ecuyer-CMRG")[1L]
  on.exit(RNGkind(orng))

  if (!is.null(seed)) {
    ## Reset state of random seed afterwards?
    on.exit({
      if (is.null(oseed)) {
        rm(list=".Random.seed", envir=.GlobalEnv, inherits=FALSE)
      } else {
        .GlobalEnv$.Random.seed <- oseed
      }
    }, add=TRUE)

    set.seed(seed)
  }

  .seed <- .Random.seed
  res <- listenv::listenv()
  for (ii in seq_len(size)) {
    .seed <- parallel::nextRNGStream(.seed)
    res[[ii]] %<=% {
      .GlobalEnv$.Random.seed <- .seed
      sample(x, size=1L)
    }
  }
  unlist(res)
} # fsample()


dummy <- sample(0:9, size=1L)
seed0 <- .Random.seed

## Reference sample with fixed random seed
plan("eager")
y0 <- fsample(0:9, seed=42L)

## Assert that random seed is reset
stopifnot(identical(.GlobalEnv$.Random.seed, seed0))


for (strategy in c("eager", "lazy", "multicore")) {
  message(sprintf("%s ...", strategy))

  .GlobalEnv$.Random.seed <- seed0

  plan(strategy)

  ## Fixed random seed
  y1 <- fsample(0:9, seed=42L)
  print(y1)
  stopifnot(identical(y1, y0))

  ## Assert that random seed is reset
  stopifnot(identical(.GlobalEnv$.Random.seed, seed0))

  ## Fixed random seed
  y2 <- fsample(0:9, seed=42L)
  print(y2)
  stopifnot(identical(y2, y1))
  stopifnot(identical(y2, y0))

  ## Assert that random seed is reset
  stopifnot(identical(.GlobalEnv$.Random.seed, seed0))

  ## No seed
  y3 <- fsample(0:9)
  print(y3)

  ## No seed
  y4 <- fsample(0:9)
  print(y4)

  message(sprintf("%s ... done", strategy))
}


## Cleanup
plan(oplan)
options(oopts)
rm(list=setdiff(ls(), ovars))
