source("incl/start.R")

objectSize <- future:::objectSize

message("objectSize() ...")

env <- new.env()
env$a <- 3.14
env$b <- 1:100

env2 <- new.env()
env2$env <- env

## Namespaces will be skipped
env3 <- getNamespace("utils")

fcn <- function(...) TRUE

objs <- list(
  NULL,
  TRUE,
  1L,
  3.14,
  "hello",
  1:100,
  1:100+0.1,
  letters,
  list(a = 3.14, b = 1:100),
  list(a = 3.14, b = 1:100, c = list(a = 3.14, b = 1:100)),
  env,
  env2,
  env3,
  fcn
)

for (kk in seq_along(objs)) {
  obj <- objs[[kk]]
  message(sprintf("objectSize(<%s>) ...", mode(obj)))
  str(obj)
  
  size0 <- object.size(obj)
  str(size0)
  
  size <- objectSize(obj)
  str(size)
  
  message(sprintf("objectSize(<%s>) ... DONE", mode(obj)))
}

message("objectSize() ... DONE")

source("incl/end.R")
