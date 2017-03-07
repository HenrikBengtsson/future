source("incl/start.R")
session_uuid <- future:::session_uuid
addClusterUUIDs <- future:::addClusterUUIDs

message("*** session_uuid() ...")

id0 <- session_uuid()
print(id0)

## Reset session UUID (hack)
environment(session_uuid)$value <- NULL

id <- session_uuid()
print(id)
stopifnot(id != id0)

message("*** session_uuid() ... DONE")

message("*** addClusterUUIDs() ...")

cl <- parallel::makeCluster(1L, type = "PSOCK")
cl <- addClusterUUIDs(cl)
str(cl)
parallel::stopCluster(cl)
uuid <- as.vector(attr(cl[[1]]$con, "uuid"))
print(uuid)
stopifnot(is.character(uuid), nzchar(uuid))


if (supportsMulticore()) {
  cl <- parallel::makeCluster(1L, type = "FORK")
  cl <- addClusterUUIDs(cl)
  str(cl)
  parallel::stopCluster(cl)
  uuid <- as.vector(attr(cl[[1]]$con, "uuid"))
  print(uuid)
  stopifnot(is.character(uuid), nzchar(uuid))
}

cl <- structure(list(
  structure(list(
    rank = 1L, RECVTAG = 33, SENDTAG = 22, comm = 1
  ), class = "MPInode")
  ), class = c("spawnedMPIcluster", "MPIcluster", "cluster")
)
cl <- addClusterUUIDs(cl)

message("*** addClusterUUIDs() ... DONE")

source("incl/end.R")
