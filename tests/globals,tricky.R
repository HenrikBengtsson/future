library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.globals.resolve=TRUE, future.debug=TRUE)
##setTimeLimit(cpu=180, elapsed=180, transient=TRUE)

message("*** Tricky use cases related to globals ...")

strategies <- future:::supportedStrategies()
strategies <- setdiff(strategies, "multiprocess")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  message("availableCores(): ", availableCores())

  message("- Local variables with the same name as globals ...")

  methods <- c("conservative", "ordered")

  for (method in methods) {
    options("future.globalsMethod"=method)
    message(sprintf("Method for identifying globals: '%s' ...", method))

    for (strategy in strategies) {
      message(sprintf("- plan('%s') ...", strategy))
      plan(strategy)

      a <- 3

      yTruth <- local({
        b <- a
        a <- 2
        a*b
      })

      y %<-% {
        b <- a
        a <- 2
        a*b
      }

      rm(list="a")

      res <- try(y, silent=TRUE)
      if (method == "conservative" && strategy %in% c("lazy", "multisession")) {
        str(list(res=res))
        stopifnot(inherits(res, "try-error"))
      } else {
        message(sprintf("y=%g", y))
        stopifnot(identical(y, yTruth))
      }


      res <- listenv()
      a <- 1
      for (ii in 1:3) {
        res[[ii]] %<-% {
          b <- a*ii
          a <- 0
          b
        }
      }
      rm(list="a")

      res <- try(unlist(res), silent=TRUE)
      if (method == "conservative" && strategy %in% c("lazy", "multisession")) {
        str(list(res=res))
        stopifnot(inherits(res, "try-error"))
      } else {
        print(res)
        stopifnot(all(res == 1:3))
      }


      ## Assert that `a` is resolved and turned into a constant future
      ## at the moment when future `b` is created.
      ## Requires options(future.globals.resolve=TRUE).
      a <- future(1)
      b <- future(value(a)+1)
      rm(list="a")
      message(sprintf("value(b)=%g", value(b)))
      stopifnot(value(b) == 2)
    } ## for (strategy ...)

    message(sprintf("Method for identifying globals: '%s' ... DONE", method))
  }

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** Tricky use cases related to globals ... DONE")


## Cleanup
##setTimeLimit()
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
