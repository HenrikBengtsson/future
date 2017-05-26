source("incl/start.R")

message("*** sequential() ...")

message("- sequential() w/ required packages ...")

f <- future(median(1:3), lazy = TRUE)
print(f)

## Doesn't work if covr that depends on stats is loaded
try(unloadNamespace("stats"))

v <- value(f)
print(v)
stopifnot(identical(v, 2L))

stopifnot("stats" %in% loadedNamespaces())

message("- SequentialFuture() - exceptions ...")

res <- tryCatch({
  f <- SequentialFuture(42, lazy = TRUE, local = FALSE)
}, error = identity)
stopifnot(inherits(res, "error"))
          
message("*** sequential() ... DONE")

source("incl/end.R")
