source("incl/start.R")
library("listenv")
options(future.debug = FALSE)

message("*** cluster() - terminating worker ...")

message("Library paths: ", paste(sQuote(.libPaths()), collapse = ", "))
message("Package path: ", sQuote(system.file(package = "future")))

types <- "PSOCK"

## Speed up CRAN checks: Skip on CRAN Windows 32-bit
if (isWin32) types <- NULL

if (supportsMulticore() && !on_solaris) types <- c(types, "FORK")

## WORKAROUND: covr::package_coverage() -> merge_coverage() -> ... produces
## "Error in readRDS(x) : error reading from connection" for type = "FORK".
## Is this related to mcparallel() comments in help("package_coverage")?
## /HB 2017-05-20
if (covr_testing) types <- setdiff(types, "FORK")

## WORKAROUND: FORK:ed processing gives really odd type="FORK" results on
## macOS when running on GitHub Actions. /HB 2020-06-07
## This error is also appearing on CRANs' 'r-release-macos-arm64' and
## 'M1mac' checks. /HB 2021-08-11
if (on_macos) types <- setdiff(types, "FORK")

pid <- Sys.getpid()
message("Main PID (original): ", pid)
cl <- NULL
for (type in types) {
  if (on_solaris) next
 
  message(sprintf("Cluster type %s ...", sQuote(type)))
  
  cl <- parallel::makeCluster(1L, type = type, timeout = 60)
  print(cl)

  ## Crashing FORK:ed processes seems too harsh on R (< 3.3.0)
  if (type != "FORK" || getRversion() >= "3.3.0") {
  message("*** cluster() - crashed worker ...")
  
  plan(cluster, workers = cl, .skip = FALSE)
  x %<-% 42L
  stopifnot(x == 42L)
  
  ## Force R worker to terminate
  ## It's not safe to use quit() here when using type = "FORK" [1]
  ## [1] https://stat.ethz.ch/pipermail/r-devel/2021-August/080995.html
  x %<-% tools::pskill(pid = Sys.getpid())
  res <- tryCatch(y <- x, error = identity)
  print(res)
  stopifnot(
    inherits(res, "error"),
    inherits(res, "FutureError")
  )

  ## Cleanup
  print(cl)
  ## FIXME: Why doesn't this work here? It causes the below future to stall.
  # parallel::stopCluster(cl)

  ## Verify that the reset worked
  cl <- parallel::makeCluster(1L, type = type, timeout = 60)
  print(cl)
  plan(cluster, workers = cl, .skip = FALSE)
  x %<-% 43L
  stopifnot(x == 43L)
  
  message("*** cluster() - crashed worker ... DONE")
  } ## if (type != "FORK" || getRversion() >= "3.3.0")

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)
  
  ## Cleanup
  print(cl)
  str(cl)
  parallel::stopCluster(cl)

  ## Sanity checks
  pid2 <- Sys.getpid()
  message("Main PID (original): ", pid)
  message("Main PID: ", pid2)
  stopifnot(pid2 == pid)

  message(sprintf("Cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)

message("*** cluster() - terminating worker ... DONE")

## Sanity checks
pid2 <- Sys.getpid()
message("Main PID (original): ", pid)
message("Main PID: ", pid2)
stopifnot(pid2 == pid)

source("incl/end.R")
