## Setup of three R workers on two remote machines are set up
workers <- c("n1.remote.org", "n2.remote.org", "n1.remote.org")
cl <- makeClusterPSOCK(workers, dryrun = TRUE)

## Same setup when the two machines are on the local network and
## have identical software setups
cl <- makeClusterPSOCK(workers, revtunnel = FALSE, homogeneous = TRUE,
                       dryrun = TRUE)

## Setup of remote worker with more detailed control on
## authentication and reverse SSH tunnelling
cl <- makeClusterPSOCK("remote.server.org", user = "johnny",
                       revtunnel = FALSE,
                       rshopts = c("-v", "-R 11000:gateway:11942"),
                       master = "gateway", port = 11942,
                       rscript = c("nice", "/path/to/Rscript"),
                       rscript_args = c("--vanilla"),
                       dryrun = TRUE)

## Setup of Docker worker running rocker/r-base
## (requires installation of future package)
cl <- makeClusterPSOCK("localhost",
                       rscript = c(
                         "docker", "run", "--net=host", "rocker/r-base",
                         "Rscript"
                       ),
                       rscript_args = c(
                         "-e", shQuote("install.packages('future')")
                       ),
                       dryrun = TRUE)
                       

## Setup of udocker.py worker running rocker/r-base
## (requires installation of future package and extra quoting)
cl <- makeClusterPSOCK("localhost",
                       rscript = c(
                         "udocker.py", "run", "rocker/r-base",
                         "Rscript"
                       ),
                       rscript_args = c(
                         "-e", shQuote(shQuote("install.packages('future')")),
                         "-e", shQuote(shQuote("parallel:::.slaveRSOCK()"))
                       ),
                       dryrun = TRUE)
