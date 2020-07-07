#' Create a Message Passing Interface (MPI) cluster of \R workers for parallel processing
#' 
#' The `makeClusterMPI()` function creates an MPI cluster of \R workers
#' for parallel processing.  This function utilizes 
#' `makeCluster(..., type = "MPI")` of the \pkg{parallel} package and
#' tweaks the cluster in an attempt to avoid
#' \code{\link[parallel:makeCluster]{stopCluster()}} from hanging (1).
#' _WARNING: This function is very much in a beta version and should
#' only be used if `parallel::makeCluster(..., type = "MPI")` fails._
#'
#' _Creating MPI clusters requires the **Rmpi** package._
#'
#' @inheritParams makeClusterPSOCK
#'
#' @param workers The number workers (as a positive integer).
#' 
#' @param \dots Optional arguments passed to
#' \code{\link[parallel:makeCluster]{makeCluster}(workers, type = "MPI", ...)}.
#' 
#' @return An object of class `c("RichMPIcluster", "MPIcluster", "cluster")` consisting
#' of a list of `"MPInode"` workers.
#'
#' @references
#' 1. R-sig-hpc thread \href{https://stat.ethz.ch/pipermail/r-sig-hpc/2017-September/002065.html}{Rmpi: mpi.close.Rslaves() 'hangs'} on 2017-09-28.
#'
#' @seealso
#' [makeClusterPSOCK()] and [parallel::makeCluster()].
#'
#' @importFrom parallel makeCluster
#' @export
makeClusterMPI <- function(workers, ..., autoStop = FALSE, verbose = getOption("future.debug", FALSE)) {
  if (is.numeric(workers)) {
    if (length(workers) != 1L) {
      stop("When numeric, argument 'workers' must be a single value: ", length(workers))
    }
    workers <- as.integer(workers)
    if (is.na(workers) || workers < 1L) {
      stop("Number of 'workers' must be one or greater: ", workers)
    }
  } else {
    stop("Argument 'workers' must be an integer: ", mode(workers))
  }
  if (verbose) {
    message(sprintf("Number of workers: %d", workers))
  }

  ## FIXME: Re-implement locally using below for loop
  cl <- makeCluster(workers, type = "MPI", ...)

  n <- length(cl)
  for (ii in seq_along(cl)) {
    if (verbose) message(sprintf("Updating node %d of %d ...", ii, n))

    ## Attaching session information for each worker.  This is done to assert
    ## that we have a working cluster already here.  It will also collect
    ## useful information otherwise not available, e.g. the PID.
    if (verbose) message("- collecting session information")
    cl[ii] <- add_cluster_session_info(cl[ii])
    
    if (verbose) message(sprintf("Updating node %d of %d ... DONE", ii, n))
  }

  ## AD HOC/WORKAROUND:
  ## Note, stopCluster.spawnedMPIcluster() calls Rmpi::mpi.comm.disconnect()
  ## which may stall R.  Because of this, we drop 'spawnedMPIcluster' from
  ## the class attribute to avoid calling that method.  Similarly, calling
  ## Rmpi::mpi.finalize() and Rmpi::mpi.exit() may also hang R.
  ## See also below stopCluster.RichMPIcluster() implementation.
  ## REFERENCE: https://stackoverflow.com/a/44317647/1072091
  class(cl) <- c("RichMPIcluster", setdiff(class(cl), "spawnedMPIcluster"))

  if (autoStop) cl <- autoStopCluster(cl)
  
  cl
} ## makeClusterMPI()


#' @export
#' @keywords internal
stopCluster.RichMPIcluster <- function(cl) {
  NextMethod()

  if (!requireNamespace(pkg <- "Rmpi", quietly = TRUE)) return(invisible(cl))

  ## https://stat.ethz.ch/pipermail/r-sig-hpc/2017-September/002065.html
  ns <- getNamespace("Rmpi")
  if (!exists("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE))
    return(invisible(cl))
    
  mpi.comm.free <- get("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)
  
  comm <- 1
  mpi.comm.free(comm)
  
  invisible(cl)
}
