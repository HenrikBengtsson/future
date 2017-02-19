source("incl/start.R")
library("future")

message("*** rng ...")

## See Section 6 on 'Random-number generation' in
## vignette("parallel", package="parallel")
fsample <- function(x, size=4L, seed=NULL, what = c("future", "%<-%")) {
  what <- match.arg(what)
  
  ## Must use session-specific '.GlobalEnv' here
  .GlobalEnv <- globalenv()
  
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

  if (what == "future") {
    fs <- list()
    for (ii in seq_len(size)) {
      .seed <- parallel::nextRNGStream(.seed)
      fs[[ii]] <- future({ sample(x, size=1L) }, seed = .seed)
    }
    res <- values(fs)
  } else {
    res <- listenv::listenv()
    for (ii in seq_len(size)) {
      .seed <- parallel::nextRNGStream(.seed)
      res[[ii]] %<-% { sample(x, size=1L) } %seed% .seed
    }
    res <- as.list(res)
  }
  
  res
} # fsample()


dummy <- sample(0:9, size=1L)
seed0 <- .Random.seed

## Reference sample with fixed random seed
plan("uniprocess")
y0 <- fsample(0:9, seed=42L)

## Assert that random seed is reset
stopifnot(identical(.GlobalEnv$.Random.seed, seed0))


for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  for (strategy in supportedStrategies()) {
    message(sprintf("%s ...", strategy))

    plan(strategy)

    for (what in c("future", "%<-%")) {
      .GlobalEnv$.Random.seed <- seed0

      ## Fixed random seed
      y1 <- fsample(0:9, seed=42L, what = what)
      print(y1)
      stopifnot(identical(y1, y0))
  
      ## Assert that random seed is reset
      stopifnot(identical(.GlobalEnv$.Random.seed, seed0))
  
      ## Fixed random seed
      y2 <- fsample(0:9, seed=42L, what = what)
      print(y2)
      stopifnot(identical(y2, y1))
      stopifnot(identical(y2, y0))
  
      ## Assert that random seed is reset
      stopifnot(identical(.GlobalEnv$.Random.seed, seed0))
  
      ## No seed
      y3 <- fsample(0:9, what = what)
      print(y3)
  
      ## No seed
      y4 <- fsample(0:9, what = what)
      print(y4)
    }

    message(sprintf("%s ... done", strategy))
  }

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** rng ... DONE")

source("incl/end.R")
