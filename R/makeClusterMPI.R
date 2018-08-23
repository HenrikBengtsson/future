#' Create an MPI cluster of \R workers for parallel processing
#' 
#' The \code{makeClusterMPI()} function creates a cluster of \R workers
#' for parallel processing.  This function works similarly to
#' \code{\link[parallel:makeCluster]{makeCluster(..., type = "MPI")}} of the
#' \pkg{parallel} package, but is a bit more user friendly and robust.
#'
#' @param workers The number workers (as a positive integer).
#' 
#' @param \dots Optional arguments passed to
#' \code{\link[parallel:makeCluster]{makeCluster(workers, type = "MPI", ...)}}.
#' 
#' @param verbose If TRUE, informative messages are outputted.
#'
#' @return An object of class \code{"FutureMPIcluster"} consisting
#' of a list of \code{"MPInode"} workers.
#'
#' @importFrom parallel makeCluster
#' @export
makeClusterMPI <- function(workers, ..., verbose = getOption("future.debug", FALSE)) {
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
    
    ## Attaching UUID for each cluster connection.  This is done because
    ## https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html
    if (verbose) message("- assigning connection UUID")
    cl[ii] <- add_cluster_uuid(cl[ii])

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
  ## See also below stopCluster.FutureMPIcluster() implementation.
  ## REFERENCE: https://stackoverflow.com/a/44317647/1072091
  class(cl) <- c("FutureMPIcluster", setdiff(class(cl), "spawnedMPIcluster"))

  cl
} ## makeClusterMPI()


#' @export
#' @keywords internal
stopCluster.FutureMPIcluster <- function(cl) {
  NextMethod()

  if (!requireNamespace("Rmpi", quietly = TRUE)) return(invisible(cl))

  ## https://stat.ethz.ch/pipermail/r-sig-hpc/2017-September/002065.html
  ns <- getNamespace("Rmpi")
  if (!exists("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE))
    return(invisible(cl))
    
  mpi.comm.free <- get("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)
  
  comm <- 1
  mpi.comm.free(comm)
  
  invisible(cl)
}
