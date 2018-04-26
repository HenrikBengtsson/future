source("incl/start.R")
library("listenv")
options(future.debug = FALSE)

message("*** cluster() ...")

message("Library paths: ", paste(sQuote(.libPaths()), collapse = ", "))
message("Package path: ", sQuote(system.file(package = "future")))

types <- "PSOCK"
if (supportsMulticore()) types <- c(types, "FORK")

setupClusterWithoutFuture <- function(type = "PSOCK") {
  cl <- parallel::makeCluster(1L, type = type)

  ## Emulate a worker that does not have 'future' installed.
  ## by setting a different user library path on the worker.
  libs <- parallel::clusterEvalQ(cl, .libPaths(tempdir()))[[1]]

  ## Check whether 'future' is still available on the worker or not.
  ## It could be that it is installed in the system library path, which
  ## in case we cannot "hide" the future package from the worker.
  has_future <- parallel::clusterEvalQ(cl, requireNamespace("future"))[[1]]

  attr(cl, "libs") <- libs
  attr(cl, "has_future") <- has_future

  cl
}

cl <- NULL
for (type in types) {
  message(sprintf("Test set #1 with cluster type %s ...", sQuote(type)))

  cl <- setupClusterWithoutFuture()  
  if (!attr(cl, "has_future")) {
    ## If worker does not have 'future' installed, then there will be an
    ## error already when plan() is called, because it will attempt to
    ## launch a quick future to validate that everything works.
        
    res <- tryCatch({
      plan(cluster, workers = cl)
    }, error = identity)
    print(res)
    stopifnot(inherits(res, "FutureError"))
  }
  parallel::stopCluster(cl)
  
  cl <- setupClusterWithoutFuture()  
  if (!attr(cl, "has_future")) {
    ## However, if we disable the quick future test, we should not get
    ## an error here.
    plan(cluster, workers = cl, .init = FALSE)
    
    ## But we will get:
    ##   <FutureError: Internal error: Unexpected result retrieved for
    ##   ClusterFuture future ('<none>'): '42L'>
    ## if we try to resolve a future:
    f <- future(42L)
    res <- tryCatch({
      result(f)
    }, error = identity)
    print(res)
    stopifnot(inherits(res, "FutureError"))
    
    ## Assert that the result was actually recorded for future use.
    ## FIXME: This is actually not the case, which causes the next
    ## test to stall. /HB 2018-04-25
    # stopifnot(inherits(f$result, "FutureResult"))
    
    ## FIXME: However however, if we do the same again, it will stall.
    ## /HB 2018-04-25
    # res <- tryCatch({
    #   f <- future(42L)
    # }, error = identity)
    # stopifnot(inherits(res, "FutureError"))
  }
  parallel::stopCluster(cl)
  cl <- NULL
  
  plan(sequential)
  
  message(sprintf("Test set #1 with cluster type %s ... DONE", sQuote(type)))
} ## for (type ...)

message("*** cluster() ... DONE")

source("incl/end.R")
