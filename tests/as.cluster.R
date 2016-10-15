source("incl/start.R")
stopCluster <- parallel::stopCluster

message("*** cluster operations ...")

message("*** cluster operations - as.cluster() ...")

local({
  cl <- makeClusterPSOCK(1L)
  on.exit(stopCluster(cl))
  print(cl)
  cl1 <- as.cluster(cl)
  print(cl1)
  stopifnot(inherits(cl1, "cluster"), identical(cl1, cl))

  node <- cl[[1]]
  print(node)
  cl2 <- as.cluster(cl)
  stopifnot(inherits(cl2, "cluster"), length(cl2) == 1L,
            identical(cl2[[1]], node))
})

message("*** cluster operations - as.cluster() ... DONE")


message("*** cluster operations - c(...) ...")

local({
  cl1 <- makeClusterPSOCK(1L)
  on.exit(stopCluster(cl1))
  print(cl1)
  
  cl2 <- makeClusterPSOCK(rep("localhost", times = 2L))
  on.exit(stopCluster(cl2), add = TRUE)
  print(cl2)
  
  cl <- c(cl1, cl2)
  print(cl)
  
  stopifnot(inherits(cl, "cluster"), length(cl) == 3L)
  stopifnot(identical(cl[1], cl1),
            identical(cl[2], cl2[1]), identical(cl[3], cl2[2]))
})

message("*** cluster operations - c(...) ... DONE")

message("*** cluster operations ... DONE")

source("incl/end.R")
