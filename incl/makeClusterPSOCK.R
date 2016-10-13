## Illustrate how three R workers on two remote machines are set up
workers <- c("n1.remote.org", "n2.remote.org", "n1.remote.org")
cl <- makeClusterPSOCK(workers, dryrun = TRUE)

## Illustrate same setup when the two machines are on the local
## network and have identical software setups
cl <- makeClusterPSOCK(workers, revtunnel = FALSE, homogeneous = TRUE,
                       dryrun = TRUE)

## Illustrate setup of remote worker with more detailed control
## on authentication and reverse SSH tunnelling
cl <- makeClusterPSOCK("remote.server.org", user = "johnny",
                       revtunnel = FALSE,
		       rshopts = c("-v", "-R 11000:gateway:11942"),
                       master = "gateway", port = 11942,
		       rscript = c("nice", "/path/to/Rscript"),
		       rscript_args = c("--vanilla"),
                       dryrun = TRUE)
