source("incl/start.R")
session_uuid <- future:::session_uuid

message("*** session_uuid() ...")

id0 <- session_uuid()
print(id0)

## Reset session UUID (hack)
environment(session_uuid)$value <- NULL

id <- session_uuid()
print(id)
stopifnot(id != id0)

message("*** session_uuid() ... DONE")

source("incl/end.R")
