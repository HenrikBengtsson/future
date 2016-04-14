library("future")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L, future.debug=TRUE)
printf <- function(...) cat(sprintf(...))

message("*** %<-% ...")

for (cores in 1:min(3L, availableCores())) {
  message(sprintf("Testing with %d cores ...", cores))
  options(mc.cores=cores-1L)

  for (strategy in future:::supportedStrategies()) {
    message(sprintf("*** %%<-%% with %s futures ...", sQuote(strategy)))
    plan(strategy)

    rm(list=intersect(c("x", "y"), ls()))

    message("** Future evaluation without globals")
    v1 %<-% { x <- 1 }
    stopifnot(!exists("x", inherits=FALSE), identical(v1, 1))

    message("** Future evaluation with globals")
    a <- 2
    v2 %<-% { x <- a }
    stopifnot(!exists("x", inherits=FALSE), identical(v2, a))

    message("** Future evaluation with errors")
    v3 %<-% {
      x <- 3
      stop("Woops!")
      x
    }
    stopifnot(!exists("x", inherits=FALSE))
    res <- try(identical(v3, 3), silent=TRUE)
    stopifnot(inherits(res, "try-error"))


    y <- listenv::listenv()
    for (ii in 1:5) {
      y[[ii]] %<-% {
        if (ii %% 2 == 0) stop("Woops!")
        ii
      }
    }
    res <- try(as.list(y), silent=TRUE)
    stopifnot(inherits(res, "try-error"))
    z <- y[c(1,3,5)]
    z <- unlist(z)
    stopifnot(all(z == c(1,3,5)))
    res <- try(y[[2]], silent=TRUE)
    stopifnot(inherits(res, "try-error"))
    res <- try(y[[4]], silent=TRUE)
    stopifnot(inherits(res, "try-error"))
    res <- try(y[c(2,4)], silent=TRUE)
    stopifnot(inherits(res, "try-error"))
    res <- try(y[1:2], silent=TRUE)
    stopifnot(inherits(res, "try-error"))


    message("** Future evaluation with progress bar")
    v4 %<-% {
      cat("Processing: ")
      for (ii in 1:10) { cat("."); Sys.sleep(0.1) }
      cat(" [100%]\n")
      4
    }


    message("** Collecting results")
    printf("v1=%s\n", v1)
    stopifnot(v1 == 1)

    printf("v2=%s\n", v2)
    stopifnot(v2 == a)

    stopifnot(tryCatch({
      printf("v3=%s\n", v3)
    }, error = function(ex) {
      printf("v3: <%s> (as expect)\n", class(ex)[1])
      TRUE
    }))

    printf("v4=%s\n", v4)
    #stopifnot(v4 == 4)


    message("** Left-to-right and right-to-left future assignments")
    c %<-% 1
    printf("c=%s\n", c)
    1 %=>% d
    printf("d=%s\n", d)
    stopifnot(d == c)



    message("** Nested future assignments")
    a %<-% {
      b <- 1
      c %<-% 2
      3 -> d
      4 %=>% e
      b + c + d + e
    }
    printf("a=%s\n", a)
    stopifnot(a == 10)

    { a + 1 } %=>% b
    printf("b=%s\n", b)
    stopifnot(b == a + 1)

    message(sprintf("*** %%<-%% with %s futures ... DONE", sQuote(strategy)))
  } # for (strategy in ...)

  message(sprintf("Testing with %d cores ... DONE", cores))
} ## for (cores ...)

message("*** %<-% ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
