#' Create an MPI cluster of \R workers for parallel processing
#' 
#' The \code{makeClusterMPI()} function creates a cluster of \R workers
#' for parallel processing.  This function works similarly to
#' \code{\link[parallel:makeCluster]{makeCluster(..., type = "MPI")}} of the
#' \pkg{parallel} package, but is a bit more user friendly and robust.
#'
#' @param workers The number workers (as a positive integer).
#' 
#' @param makeNode A function that creates a \code{"MPInode"}, which
#' represents an MPI worker.
#' 
#' @param \dots Optional arguments passed to
#' \code{makeNode(..., rank = i)} where \code{i = seq_along(workers)}.
#' 
#' @param verbose If TRUE, informative messages are outputted.
#'
#' @return An object of class \code{"FutureMPIcluster"} consisting
#' of a list of \code{"MPInode"} workers.
#'
#' @importFrom parallel makeCluster
#' @export
makeClusterMPI <- function(workers, makeNode = makeNodeMPI, ..., verbose = getOption("future.debug", FALSE)) {
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
#    if (verbose) message("- collecting session information")
#    cl[ii] <- add_cluster_session_info(cl[ii])
    
    if (verbose) message(sprintf("Updating node %d of %d ... DONE", ii, n))
  }

  ## WORKAROUND:
  ## https://stackoverflow.com/a/44317647/1072091
  ## Note, any of the below, stalls R:
  ##   Rmpi::mpi.finalize()
  ##   Rmpi::mpi.exit()
  class(cl) <- c("FutureMPIcluster", setdiff(class(cl), "spawnedMPIcluster"))
  
  return(cl)
  
  ## TODO
  cl <- vector("list", length = n)
  class(cl) <- c("SOCKcluster", "cluster")
  for (ii in seq_along(cl)) {
    if (verbose) message(sprintf("Creating node %d of %d ...", ii, n))
    if (verbose) message("- setting up node")
    cl[[ii]] <- makeNode(..., rank = ii, verbose = verbose)
    
    ## Attaching UUID for each cluster connection.  This is done because
    ## https://stat.ethz.ch/pipermail/r-devel/2016-October/073331.html
    if (verbose) message("- assigning connection UUID")
    cl[ii] <- add_cluster_uuid(cl[ii])

    ## Attaching session information for each worker.  This is done to assert
    ## that we have a working cluster already here.  It will also collect
    ## useful information otherwise not available, e.g. the PID.
    if (verbose) message("- collecting session information")
    cl[ii] <- add_cluster_session_info(cl[ii])

    if (verbose) message(sprintf("Creating node %d of %d ... done", ii, n))
  }

  class(cl) <- c("FutureMPInode", class(cl))
  class(cl) <- setdiff(class(cl), "spawnedMPIcluster")
  stopCluster(cl)
  str(cl)
  ## https://stat.ethz.ch/pipermail/r-sig-hpc/2017-September/002065.html
  ns <- getNamespace("Rmpi")
  if (exists("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)) {
    mpi.comm.free <- get("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)
    res <- mpi.comm.free(1)
    print(res)
  }

  cl
} ## makeClusterMPI()


#' @export
#' @keywords internal
stopCluster.FutureMPIcluster <- function(cl) {
  NextMethod()

  pkg <- "Rmpi"
  if (!requireNamespace(pkg, quietly = TRUE)) return(invisible(cl))

  ## https://stat.ethz.ch/pipermail/r-sig-hpc/2017-September/002065.html
  ns <- getNamespace("Rmpi")
  if (!exists("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE))
    return(invisible(cl))
    
  mpi.comm.free <- get("mpi.comm.free", mode = "function", envir = ns, inherits = FALSE)
  
  comm <- 1
  mpi.comm.free(comm)
  
  invisible(cl)
}


#' @param rank A unique one-based index for each worker (automatically set).
#' 
#' @return \code{makeNodeMPI()} returns a \code{"FutureMPInode"} object
#' representing an established MPI worker.
#'
#' @rdname makeClusterMPI
# @export
makeNodeMPI <- function(rank = 1L, verbose = FALSE) {
  stop("Not yet implemented")
} ## makeNodePSOCK()
