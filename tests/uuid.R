source("incl/start.R")
uuid <- future:::uuid

message("*** uuid() ...")

id0 <- uuid()
print(id0)

## Reset UUID (hack)
environment(uuid)$value <- NULL

id <- uuid()
print(id)
stopifnot(id != id0)

message("*** uuid() ... DONE")

source("incl/end.R")
