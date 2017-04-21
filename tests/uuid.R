source("incl/start.R")
session_uuid <- future:::session_uuid
add_cluster_uuid <- future:::add_cluster_uuid

message("*** session_uuid() ...")

id0 <- session_uuid()
print(id0)

## Reset session UUID (hack)
environment(session_uuid)$value <- NULL

id <- session_uuid()
print(id)
stopifnot(id != id0)

message("*** session_uuid() ... DONE")

message("*** add_cluster_uuid() ...")

cl <- parallel::makeCluster(1L, type = "PSOCK")
cl <- add_cluster_uuid(cl)
str(cl)
parallel::stopCluster(cl)
uuid <- as.vector(attr(cl[[1]]$con, "uuid"))
print(uuid)
stopifnot(is.character(uuid), nzchar(uuid))


if (supportsMulticore()) {
  cl <- parallel::makeCluster(1L, type = "FORK")
  cl <- add_cluster_uuid(cl)
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
cl <- add_cluster_uuid(cl)

message("*** add_cluster_uuid() ... DONE")

source("incl/end.R")
