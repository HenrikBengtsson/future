source("incl/start.R")
library("listenv")

message("*** remote() ...")

message("- remote() is defunct")
res <- tryCatch(plan(remote), error = identity)
stopifnot(inherits(res, "error"))  ## defunctError in R (>= 4.0.0)

message("*** remote() ... DONE")

source("incl/end.R")
