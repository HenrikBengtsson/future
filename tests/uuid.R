source("incl/start.R")
session_uuid <- future:::session_uuid
annotate_cluster_connections <- future:::annotate_cluster_connections

message("*** session_uuid() ...")

id0 <- session_uuid()
print(id0)

## Reset session UUID (hack)
environment(session_uuid)$uuids <- list()

id <- session_uuid()
print(id)
stopifnot(id != id0)

## Assert that forked child processes get a unique session id
## Issue: https://github.com/HenrikBengtsson/future/issues/187
if (supportsMulticore()) {
  plan(multicore, workers = 2L)
  fs <- lapply(1:2, FUN = function(i) {
    future({
      Sys.sleep(0.2)
      session_uuid()
    })
  })
  ids <- unlist(values(fs))
  print(ids)
  stopifnot(all(ids != id), length(unique(ids)) == 2L)
}

message("*** session_uuid() ... DONE")

message("*** annotate_cluster_connections() ...")

cl <- parallel::makeCluster(1L, type = "PSOCK")
cl <- annotate_cluster_connections(cl)
str(cl)
parallel::stopCluster(cl)

details <- as.vector(attr(cl[[1]]$con, "details"))
str(details)
stopifnot(is.list(details), length(details) > 0)

uuid <- as.vector(attr(cl[[1]]$con, "uuid"))
print(uuid)
stopifnot(is.character(uuid), nzchar(uuid))


if (supportsMulticore()) {
  cl <- parallel::makeCluster(1L, type = "FORK")
  cl <- annotate_cluster_connections(cl)
  str(cl)
  parallel::stopCluster(cl)

  details <- as.vector(attr(cl[[1]]$con, "details"))
  str(details)
  stopifnot(is.list(details), length(details) > 0)

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
cl <- annotate_cluster_connections(cl)

message("*** annotate_cluster_connections() ... DONE")

source("incl/end.R")
