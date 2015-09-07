#' Get number of available cores on current machine
#'
#' @param methods A character vector specifying how to infer the number
#' of available cores (and in what order).
#'
#' @return Return a positive integer equal or greater to one.
#'         If multicore processing is not supported, then one is returned.
#'
#' @details
#' The following methods for inferring the number of cores are supported:
#' \itemize{
#'  \item \code{"PBS"} -
#'    Query Torque/PBS environment variable \code{PBS_NUM_PPN}.
#'    Depending on PBS system configuration, this \emph{resource} parameter
#'    may or may not default to one.  It can be specified when submitting
#'    a job as in, for instance, \code{qsub -l nodes=4:ppn=2}, which
#'    requests four nodes each with two cores.
#'  \item \code{"mc.cores"} -
#'    Query option \code{mc.cores}, cf. \code{\link[parallel]{mclapply}()}.
#'  \item \code{"system"} -
#'    Query \code{\link[parallel]{detectCores}()}.
#' }
#'
#' @seealso \code{\link[parallel]{detectCores}()}
#'
#' @export
#' @importFrom parallel detectCores
#' @keywords internal
availableCores <- function(methods=getOption("availableCoresMethods", c("PBS", "mc.cores", "system"))) {
  if (!supportsMulticore()) return(1L)

  for (method in methods) {
    if (method == "PBS") {
      ## Number of cores assigned by Torque/PBS?
      ncores <- as.integer(Sys.getenv("PBS_NUM_PPN", NA_character_))
    } else if (method == "mc.cores") {
      ## Number of cores by option defined by 'parallel' package
      ncores <- as.integer(getOption("mc.cores", NA_integer_)) + 1L
    } else if (method == "system") {
      ## Number of cores available according to parallel::detectCores()
      ncores <- detectCores()
    } else {
      ## covr: skip=1
      ncores <- NA_integer_
    }
    if (is.finite(ncores) && ncores > 0L) break
  }

  ## The default is to use a single core
  if (is.na(ncores)) ncores <- 1L

  ncores
}


#' Get number of cores currently used
#'
#' Get number of children plus one (for the current process)
#' used by the current R session.  The number of children
#' is the total number of subprocesses launched by this
#' process that are still running and whose values have yet
#' not been collected.
#'
#' @return A positive integer equal or greater than one.
#'
#' @keywords internal
usedCores <- function() {
  ## Number of unresolved multicore futures
  futures <- MulticoreFutureRegistry("list")
  nfutures <- length(futures)
  ncores <- nfutures

  ## Total number of multicore processes
  ## To please R CMD check
  ns <- getNamespace("parallel")
  children <- get("children", envir=ns, mode="function")
  nchildren <- length(children())

  ## Any multicore processes that are not futures?
  if (nchildren > nfutures) {
    ## The basic assumption is that any additional multicore
    ## processes have been launched by at least one of the
    ## multicore futures.  This means that as long as we
    ## wait for one of these futures to be resolved, then
    ## a CPU core will always be available at some point in
    ## the future.
    ## covr: skip=7
    ncores <- nchildren

    ## However, ...
    if (nfutures == 0L) {
      warning(sprintf("Hmm... %d active multicore processes were detected, but without any active multicore futures (it is not clear by what mechanism they were created). Because of this, the 'future' package do not know how to resolve/collect them and will therefore threat them as they do not exist.", nchildren))
      ncores <- 0L
    }
  }

  return(ncores + 1L)
}



#' Request a core for multicore processing
#'
#' If no cores are available, the current process
#' blocks until a core is available.
#'
#' @param await A function used to try to "collect"
#'        finished multicore subprocesses.
#' @param maxTries Then maximum number of times subprocesses
#'        should be collected before timeout.
#' @param delta Then base interval (in seconds) to wait
#'        between each try.
#' @param alpha A multiplicative factor used to increase
#'        the wait interval after each try.
#'
#' @return Invisible TRUE. If no cores are available after
#'         extensive waiting, then a timeout error is thrown.
#'
#' @keywords internal
requestCore <- function(await, maxTries=getOption("future::maxTries", Sys.getenv("R_FUTURE_MAXTRIES", 1000)), delta=getOption("future::interval", 1.0), alpha=1.01) {
  stopifnot(is.function(await))
  maxTries <- as.integer(maxTries)
  stopifnot(is.finite(maxTries), maxTries > 0)
  stopifnot(is.finite(alpha), alpha > 0)

  ## Maximum number of cores available
  total <- availableCores()

  tries <- 1L
  interval <- delta
  finished <- FALSE
  while (tries <= maxTries) {
    finished <- (usedCores() < total)
    if (finished) break

    ## Wait
    Sys.sleep(interval)

    ## Finish/close cores, iff possible
    await()

    interval <- alpha*interval
    tries <- tries + 1L
  }

  if (!finished) {
    stop(sprintf("TIMEOUT: All %d CPU cores are still occupied", total))
  }

  invisible(finished)
}
