source("incl/start.R")
library("listenv")

message("*** future_lapply() ...")

strategies <- supportedStrategies()

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("- future_lapply(x, FUN=vector, ...) ...")

  x <- list(a="integer", b="numeric", c="character", c="list")
  str(list(x=x))

  y0 <- lapply(x, FUN=vector, length=2L)
  str(list(y0=y0))

  for (scheduling in list(FALSE, TRUE)) {
    for (strategy in strategies) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      y <- future_lapply(x, FUN=vector, length=2L, future.scheduling = scheduling)
      str(list(y=y))
      stopifnot(identical(y, y0))
    }
  }


  message("- future_lapply(x, FUN=base::vector, ...) ...")

  x <- list(a="integer", b="numeric", c="character", c="list")
  str(list(x=x))

  y0 <- lapply(x, FUN=base::vector, length=2L)
  str(list(y0=y0))

  for (scheduling in list(FALSE, TRUE)) {
    for (strategy in strategies) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      y <- future_lapply(x, FUN=base::vector, length=2L, future.scheduling = scheduling)
      str(list(y=y))
      stopifnot(identical(y, y0))
    }
  }

  message("- future_lapply(x, FUN=future:::hpaste, ...) ...")

  x <- list(a=c("hello", b=1:100))
  str(list(x=x))

  y0 <- lapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
  str(list(y0=y0))

  for (scheduling in list(FALSE, TRUE)) {
    for (strategy in strategies) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      y <- future_lapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L, future.scheduling = scheduling)
      str(list(y=y))
      stopifnot(identical(y, y0))
    }
  }


  message("- future_lapply(x, FUN=listenv::listenv, ...) ...")

  x <- list()

  y <- listenv()
  y$A <- 3L
  x$a <- y

  y <- listenv()
  y$A <- 3L
  y$B <- c("hello", b=1:100)
  x$b <- y

  print(x)

  y0 <- lapply(x, FUN=listenv::map)
  str(list(y0=y0))

  for (scheduling in list(FALSE, TRUE)) {
    for (strategy in strategies) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)
      y <- future_lapply(x, FUN=listenv::map, future.scheduling = scheduling)
      str(list(y=y))
      stopifnot(identical(y, y0))
    }
  }


  message("- future_lapply(x, FUN=rnorm, ...) - random seed ...")

  y0 <- y0_nested <- NULL
  for (strategy in strategies) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

#    for (seed in list(fixed = 42L, random = TRUE, current = FALSE, current = NULL)) 
    for (scheduling in list(FALSE, TRUE, 0, 0.5, 2.0, Inf)) {
      y <- future_lapply(1:5, FUN = function(i) {
        rnorm(1L)
      }, future.seed = 42L, future.scheduling = scheduling)
      
      y <- unlist(y)
      if (is.null(y0)) y0 <- y
      str(list(y=y))
      stopifnot(identical(y, y0))
    }
  

    ## Nested future_lapply():s
    for (scheduling in list(FALSE, TRUE)) {
      y <- future_lapply(1:5, FUN = function(i) {
        ## Until future_lapply() is exported
        future_lapply <- future:::future_lapply
  
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
      str(list(y=y))
  
      ## Assert that all future seeds (also nested ones) are unique
      seeds <- Reduce(c, lapply(y, FUN = function(x) {
        c(list(seed = x$seed), lapply(x$z, FUN = function(x) x$seed))
      }))
      for (kk in 2:length(seeds)) stopifnot(!all(seeds[[kk]] == seeds[[1]]))
      
      stopifnot(identical(y, y0_nested))
    }
  }

  message("- future_lapply(x, FUN=rnorm, ...) - random seed ... DONE")
  
  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)


message("- future_lapply(x, ..., future.seed = TRUE) ...")

for (strategy in strategies) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  
  ## Assert that RNG state *is* changed with future.seed = TRUE
  for (kk in 1:3) {
    message(sprintf("- Iteration #%d", kk))
    set.seed(0xBEEF)
    seed0 <- .GlobalEnv$.Random.seed
    y <- future_lapply(1:3, FUN = identity, future.globals = FALSE, future.seed = TRUE)
    stopifnot(!identical(.GlobalEnv$.Random.seed, seed0))
  }
}
  
message("- future_lapply(x, ..., future.seed = TRUE) ... DONE")


message("- future_lapply(x, ..., future.seed = FALSE) ...")

for (strategy in setdiff(strategies, "multiprocess")) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  
  set.seed(0xBEEF)
  seed0 <- .GlobalEnv$.Random.seed
  
  ## The RNG state is often not changed with future.seed = FALSE *but* with
  ## for instance plan("multiprocess") on Windows, the multisession cluster
  ## will be set up with the first future and then it samples the port number
  ## to be used for communication. This will mess up the seed.
  for (kk in 1:3) {
    message(sprintf("- Iteration #%d", kk))
    y <- future_lapply(1:3, FUN = identity, future.globals = FALSE, future.seed = FALSE)
  }
}
  
message("- future_lapply(x, ..., future.seed = FALSE) ... DONE")

message("*** future_lapply() ... DONE")

source("incl/end.R")

