source("incl/start.R")
annotate_cluster_connections <- future:::annotate_cluster_connections

message("*** connections ...")

message("*** annotate_cluster_connections() ...")

cl <- parallel::makeCluster(1L, type = "PSOCK")
cl <- annotate_cluster_connections(cl)
str(cl)
parallel::stopCluster(cl)

details <- as.vector(attr(cl[[1]]$con, "details"))
str(details)
stopifnot(is.list(details), length(details) > 0)


if (supportsMulticore()) {
  cl <- parallel::makeCluster(1L, type = "FORK")
  cl <- annotate_cluster_connections(cl)
  str(cl)
  parallel::stopCluster(cl)

  details <- as.vector(attr(cl[[1]]$con, "details"))
  str(details)
  stopifnot(is.list(details), length(details) > 0)
}

cl <- structure(list(
  structure(list(
    rank = 1L, RECVTAG = 33, SENDTAG = 22, comm = 1
  ), class = "MPInode")
  ), class = c("spawnedMPIcluster", "MPIcluster", "cluster")
)
cl <- annotate_cluster_connections(cl)

message("*** connections ... DONE")

source("incl/end.R")
