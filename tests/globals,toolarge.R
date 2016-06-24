source("incl/start.R")
library("listenv")

message("*** Globals - too large ...")

ooptsT <- options(future.globals.maxSize=1024L)
limit <- getOption("future.globals.maxSize")
cat(sprintf("Max total size of globals: %g bytes\n", limit))

plan(multisession)

exprs <- list(
  A = substitute({ a }, env=list()),
  B = substitute({ a*b }, env=list()),
  C = substitute({ a*b*c }, env=list()),
  D = substitute({ a*b*c*d }, env=list()),
  E = substitute({ a*b*c*d*e }, env=list())
)

a <- 1:1000
b <- 1:900
c <- 1:800
d <- 1:700
e <- 1

for (name in names(exprs)) {
  message(sprintf("Expression %s:", name))
  expr <- exprs[[name]]
  print(expr)
  res <- tryCatch({
    f <- future(expr, substitute=FALSE)
  }, error = function(ex) ex)
  print(res)
  stopifnot(inherits(res, "error"))
}

message("*** Globals - too large ... DONE")

source("incl/end.R")
