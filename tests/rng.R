library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)
oplan <- plan()

message("*** rng ...")

## See Section 6 on 'Random-number generation' in
## vignette("parallel", package="parallel")
fsample <- function(x, size=4L, seed=NULL) {
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
    res[[ii]] %<-% {
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


for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  for (strategy in future:::supportedStrategies()) {
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

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** rng ... DONE")

## Cleanup
plan(oplan)
options(oopts)
rm(list=setdiff(ls(), ovars))
