source("incl/start.R")
library("listenv")

message("*** transparent() ...")

message("- transparent() is defunct")
res <- tryCatch(plan(transparent), error = identity)
stopifnot(inherits(res, "error"))  ## defunctError in R (>= 4.0.0)

message("*** transparent() ... DONE")

source("incl/end.R")
