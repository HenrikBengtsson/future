source("incl/start.R")

message("*** future_lapply() and RNGs ...")

options(future.debug = FALSE)

message("* future_lapply(x, ..., future.seed = <invalid>) ...")

res <- tryCatch({
  y <- future_lapply(1:3, FUN = identity, future.seed = as.list(1:2))
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({
  y <- future_lapply(1:3, FUN = identity, future.seed = list(1, 2, 3:4))
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

res <- tryCatch({
  y <- future_lapply(1:3, FUN = identity, future.seed = as.list(1:3))
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

seeds <- lapply(1:3, FUN = as_lecyer_cmrg_seed)
res <- tryCatch({
  y <- future_lapply(1:3, FUN = identity, future.seed = lapply(seeds, FUN = as.numeric))
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

seeds[[1]][1] <- seeds[[1]][1] + 1L
res <- tryCatch({
  y <- future_lapply(1:3, FUN = identity, future.seed = seeds)
}, error = identity)
print(res)
stopifnot(inherits(res, "simpleError"))

message("* future_lapply(x, ..., future.seed = <invalid>) ... DONE")


## Iterate of the same set in all tests
x <- 1:5

message("* future_lapply(x, ..., future.seed = FALSE) ...")

y0 <- y0_nested <- seed00 <- NULL
for (cores in 1:availCores) {
  message(sprintf("  - Testing with %d cores ...", cores))
  options(mc.cores = cores)
  
  for (strategy in supportedStrategies(cores)) {
    message(sprintf("* plan('%s') ...", strategy))
    plan(strategy)
  
    set.seed(0xBEEF)
    seed0 <- get_random_seed()
    y <- future_lapply(x, FUN = function(i) i, future.seed = FALSE)
    y <- unlist(y)
    seed <- get_random_seed()
    if (is.null(y0)) {
      y0 <- y
      seed00 <- seed
    }
    str(list(y = y))
    stopifnot(identical(seed, seed0), identical(seed, seed00))
    ## NOTE: We cannot guarantee the same random numbers, because
    ## future.seed = FALSE.
    
    message(sprintf("* plan('%s') ... DONE", strategy))
  }  ## for (strategy ...)
  message(sprintf("  - Testing with %d cores ... DONE", cores))
} ## for (core ...)

message("* future_lapply(x, ..., future.seed = FALSE) ... DONE")


seed_sets <- list(
  A = TRUE,
  B = NA,
  C = 42L,
  D = future:::as_lecyer_cmrg_seed(42L),
  E = list(),
  F = vector("list", length = length(x))
)

## Generate sequence of seeds of the current RNGkind()
## NOTE: This is NOT a good way to generate random seeds!!!
seeds <- lapply(seq_along(x), FUN = function(i) {
  set.seed(i)
  globalenv()$.Random.seed
})
seed_sets$E <- seeds

## Generate sequence of L'Ecyer CMRG seeds
seeds <- seed_sets$F
seeds[[1]] <- seed_sets$D
for (kk in 2:length(x)) seeds[[kk]] <- parallel::nextRNGStream(seeds[[kk - 1]])
seed_sets$F <- seeds

rm(list = "seeds")

for (name in names(seed_sets)) {
  future.seed <- seed_sets[[name]]

  if (is.list(future.seed)) {
    label <- sprintf("<list of %d seeds each being a %d-int seed>",
                     length(future.seed), length(future.seed[[1]]))
  } else {
    label <- hpaste(future.seed)
  }
  message(sprintf("* future_lapply(x, ..., future.seed = %s) ...", label))
  
  set.seed(0xBEEF)
  y0 <- seed00 <- NULL

  for (cores in 1:availCores) {
    message(sprintf("  - Testing with %d cores ...", cores))
    options(mc.cores = cores)
  
    for (strategy in supportedStrategies(cores)) {
      message(sprintf("* plan('%s') ...", strategy))
      plan(strategy)
      
      set.seed(0xBEEF)
      seed0 <- get_random_seed()
      y <- future_lapply(x, FUN = function(i) {
        rnorm(1L)
      }, future.seed = future.seed)
      y <- unlist(y)
      seed <- get_random_seed()
      if (is.null(y0)) {
        y0 <- y
        seed00 <- seed
      }
      str(list(y = y))
      stopifnot(!identical(seed, seed0), identical(seed, seed00),
                identical(y, y0))
  
      ## RNG-based results should also be identical regardless of
      ## load-balance scheduling.
      for (scheduling in list(FALSE, TRUE, 0, 0.5, 2.0, Inf)) {
        set.seed(0xBEEF)
        seed0 <- get_random_seed()
        y <- future_lapply(x, FUN = function(i) {
          rnorm(1L)
        }, future.seed = future.seed, future.scheduling = scheduling)
        seed <- get_random_seed()
        y <- unlist(y)
        str(list(y = y))
        stopifnot(!identical(seed, seed0), identical(seed, seed00),
                  identical(y, y0))
      }
  
      ## Nested future_lapply():s
      for (scheduling in list(FALSE, TRUE)) {
        y <- future_lapply(x, FUN = function(i) {
          .seed <- globalenv()$.Random.seed
          
          z <- future_lapply(1:3, FUN = function(j) {
            list(j = j, seed = globalenv()$.Random.seed)
          }, future.seed = .seed)
    
          ## Assert that all future seeds are unique
          seeds <- lapply(z, FUN = function(x) x$seed)
          for (kk in 2:length(seeds)) stopifnot(!all(seeds[[kk]] == seeds[[1]]))
          
          list(i = i, seed = .seed, sample = rnorm(1L), z = z)
        }, future.seed = 42L, future.scheduling = scheduling)
  
        if (is.null(y0_nested)) y0_nested <- y
        str(list(y = y))
    
        ## Assert that all future seeds (also nested ones) are unique
        seeds <- Reduce(c, lapply(y, FUN = function(x) {
          c(list(seed = x$seed), lapply(x$z, FUN = function(x) x$seed))
        }))
        for (kk in 2:length(seeds)) stopifnot(!all(seeds[[kk]] == seeds[[1]]))
        
        stopifnot(identical(y, y0_nested))
      }
      
      message(sprintf("* plan('%s') ... DONE", strategy))
    } ## for (strategy ...)
    message(sprintf("  - Testing with %d cores ... DONE", cores))
  } ## for (cores ...)
  
  message(sprintf("* future_lapply(x, ..., future.seed = %s) ... DONE", label))

} ## for (name ...)


message("*** future_lapply() and RNGs ... DONE")

source("incl/end.R")
