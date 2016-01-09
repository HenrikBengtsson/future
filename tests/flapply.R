library("future")
library("listenv")

ovars <- ls()
oopts <- options(warn=1L, mc.cores=2L)
flapply <- future:::flapply

message("*** flapply() ...")


message("- flapply(x, FUN=vector, ...) ...")

x <- list(a="integer", b="numeric", c="character", c="list")
str(list(x=x))

y0 <- lapply(x, FUN=vector, length=2L)
str(list(y0=y0))

for (strategy in future:::supportedStrategies()) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=vector, length=2L)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("- flapply(x, FUN=base::vector, ...) ...")

x <- list(a="integer", b="numeric", c="character", c="list")
str(list(x=x))

y0 <- lapply(x, FUN=base::vector, length=2L)
str(list(y0=y0))

for (strategy in future:::supportedStrategies()) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=base::vector, length=2L)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("- flapply(x, FUN=future:::hpaste, ...) ...")

x <- list(a=c("hello", b=1:100))
str(list(x=x))

y0 <- lapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
str(list(y0=y0))

for (strategy in future:::supportedStrategies()) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=future:::hpaste, collapse="; ", maxHead=3L)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("- flapply(x, FUN=listenv::listenv, ...) ...")

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

for (strategy in future:::supportedStrategies()) {
  message(sprintf("- plan('%s') ...", strategy))
  plan(strategy)
  y <- flapply(x, FUN=listenv::map)
  str(list(y=y))
  stopifnot(identical(y, y0))
}


message("*** flapply() ... DONE")

## Cleanup
plan(eager)
options(oopts)
rm(list=setdiff(ls(), ovars))
