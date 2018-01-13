source("incl/start.R")
uuid <- future:::uuid
session_uid <- future:::session_uid
add_cluster_uid <- future:::add_cluster_uid

message("*** session_uid() ...")

id0 <- session_uid()
print(id0)

print(uuid(id0))

## Reset session UID (hack)
environment(session_uid)$uids <- list()

id <- session_uid()
print(id)
stopifnot(id != id0)

## Assert that forked child processes get a unique session id
## Issue: https://github.com/HenrikBengtsson/future/issues/187
if (supportsMulticore()) {
  plan(multicore, workers = 2L)
  fs <- lapply(1:2, FUN = function(i) {
    future({
      Sys.sleep(0.2)
      session_uid()
    })
  })
  ids <- unlist(values(fs))
  print(ids)
  stopifnot(all(ids != id), length(unique(ids)) == 2L)
}

message("*** session_uid() ... DONE")

message("*** add_cluster_uid() ...")

cl <- parallel::makeCluster(1L, type = "PSOCK")
cl <- add_cluster_uid(cl)
str(cl)
parallel::stopCluster(cl)
uid <- as.vector(attr(cl[[1]]$con, "uid"))
print(uid)
stopifnot(is.character(uid), nzchar(uid))


if (supportsMulticore()) {
  cl <- parallel::makeCluster(1L, type = "FORK")
  cl <- add_cluster_uid(cl)
  str(cl)
  parallel::stopCluster(cl)
  uid <- as.vector(attr(cl[[1]]$con, "uid"))
  print(uid)
  stopifnot(is.character(uid), nzchar(uid))
}

cl <- structure(list(
  structure(list(
    rank = 1L, RECVTAG = 33, SENDTAG = 22, comm = 1
  ), class = "MPInode")
  ), class = c("spawnedMPIcluster", "MPIcluster", "cluster")
)
cl <- add_cluster_uid(cl)

message("*** add_cluster_uid() ... DONE")

source("incl/end.R")
