source("incl/start.R")

message("*** sequential() ...")

message("- sequential() w/ required packages ...")

f <- future(median(1:3), lazy = TRUE)
print(f)

unloadNamespace("stats")
stopifnot(!"stats" %in% loadedNamespaces())

v <- value(f)
print(v)
stopifnot(identical(v, 2L))

stopifnot("stats" %in% loadedNamespaces())

message("*** sequential() ... DONE")

source("incl/end.R")
