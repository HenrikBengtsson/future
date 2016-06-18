source("incl/start.R")

message("*** requestCore() ...")

message("*** requestCore() - exceptions ...")

res <- try(requestCore(function() {}, workers=1L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

message("*** requestCore() - exceptions ... DONE")

message("*** requestCore() ... DONE")

source("incl/end.R")
