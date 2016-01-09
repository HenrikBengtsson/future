library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)

message("*** Tricky use cases related to globals ...")

message("- Local variables with the same name as globals ...")

methods <- c("conservative", "ordered")

for (method in methods) {
  options("future::globalsMethod"=method)

  for (strategy in future:::supportedStrategies()) {
    message(sprintf("- plan('%s') ...", strategy))
    plan(strategy)

    options("future::globalsMethod"=method)

    a <- 3

    yTruth <- local({
      b <- a
      a <- 2
      a*b
    })

    y %<=% {
      b <- a
      a <- 2
      a*b
    }

    rm(list="a")

    res <- try(y, silent=TRUE)
    if (method == "conservative" && strategy %in% c("lazy", "multisession")) {
      if (!inherits(res, "try-error")) str(list(res=res))
      stopifnot(inherits(res, "try-error"))
    } else {
      message(sprintf("y=%g", y))
      stopifnot(identical(y, yTruth))
    }


    res <- listenv()
    a <- 1
    for (ii in 1:3) {
      res[[ii]] %<=% {
        b <- a*ii
        a <- 0
        b
      }
    }
    rm(list="a")

    res <- try(unlist(res), silent=TRUE)
    if (method == "conservative" && strategy %in% c("lazy", "multisession")) {
      if (!inherits(res, "try-error")) str(list(res=res))
      stopifnot(inherits(res, "try-error"))
    } else {
      print(res)
      stopifnot(all(res == 1:3))
    }
  } ## for (strategy ...)
}

message("*** Tricky use cases related to globals ... DONE")


## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
