source("incl/start.R")
stopCluster <- parallel::stopCluster

message("*** cluster operations ...")

local({
  cl0 <- makeClusterPSOCK(1L)
  on.exit(stopCluster(cl0))
  cl <- cl0
  print(cl)

  message("*** cluster operations - as.cluster() ...")
  cl1 <- as.cluster(cl)
  print(cl1)
  stopifnot(inherits(cl1, "cluster"), identical(cl1, cl))

  node <- cl[[1]]
  print(node)
  cl2 <- as.cluster(cl)
  stopifnot(inherits(cl2, "cluster"), length(cl2) == 1L,
            identical(cl2[[1]], node))

  node <- cl[[1]]
  print(node)
  stopifnot(inherits(node, "SOCKnode"))
  nodes <- list(node, node)
  cl3 <- as.cluster(node)
  print(cl3)
  stopifnot(inherits(cl3, "cluster"), length(cl3) == 1L,
            identical(cl3[[1]], node))

  cl4 <- as.cluster(nodes)
  print(cl4)
  stopifnot(inherits(cl4, "cluster"), length(cl4) == 2L,
            identical(cl4[[1]], node), identical(cl4[[2]], node))
  
  message("*** cluster operations - as.cluster() ... DONE")

  message("*** cluster operations - c(...) ...")
  cl2 <- makeClusterPSOCK("localhost")
  on.exit(stopCluster(cl2), add = TRUE)
  print(cl2)
  
  cl <- c(cl1, cl2)
  print(cl)
  
  stopifnot(inherits(cl, "cluster"), length(cl) == 2L)
  stopifnot(identical(cl[1], cl1),
            identical(cl[2], cl2[1]))
  message("*** cluster operations - c(...) ... DONE")
})


message("*** cluster operations - makeClusterPSOCK(remotes) ...")

remotes <- Sys.getenv("R_FUTURE_TESTS_REMOTES", "")
remotes <- gsub(" ", "", unlist(strsplit(remotes, split = ",")))
remotes <- remotes[nzchar(remotes)]
if (length(remotes) > 0) {
  message("Remotes: ", paste(sQuote(remotes), collapse = ", "))
  local({
    cl <- makeClusterPSOCK(remotes, verbose = TRUE)
    on.exit(stopCluster(cl))
    print(cl)
  })
}

message("*** cluster operations - makeClusterPSOCK(remotes) ... DONE")

message("*** cluster operations ... DONE")

source("incl/end.R")
