#' Get number of available cores on current machine
#'
#' @param constraints An optional character specifying under what
#' constraints ("purposes") we are requesting the values.
#' For instance, on systems where multicore processing is not supported
#' (i.e. Windows), using \code{constrains="multicore"} will force a
#' single core to be reported.
#' @param methods A character vector specifying how to infer the number
#' of available cores.
#' @param na.rm If TRUE, only non-missing settings are considered/returned.
#' @param default The default number of cores to return if no non-missing
#' settings are available.
#' @param which A character specifying which settings to return.
#' If \code{"min"}, the minimum value is returned.
#' If \code{"max"}, the maximum value is returned (be careful!)
#' If \code{"all"}, all values are returned.
#'
#' @return Return a positive (>=1) integer.
#' If \code{which="all"}, then more than one value may be returned.
#' Together with \code{na.rm=FALSE} missing values may also be returned.
#'
#' @details
#' The following settings ("methods") for inferring the number of cores
#' are supported:
#' \itemize{
#'  \item \code{"system"} -
#'    Query \code{\link[parallel]{detectCores}()}.
#'  \item \code{"mc.cores+1"} -
#'    If available, returns the value of option
#'    \code{\link[base:options]{mc.cores}} + 1.
#'    Note that \code{mc.cores} is defined as the number of
#'    \emph{additional} R processes that can be used in addition to the
#'    main R process.  This means that with \code{mc.cores=0} all
#'    calculations should be done in the main R process, i.e. we have
#'    exactly one core availble for our calculations.
#'    The \code{mc.cores} option defaults to environment variable
#'    \code{MC_CORES} (and is set accordingly when the \pkg{parallel}
#'    package is loaded).  The \code{mc.cores} option is used by for
#'    instance \code{\link[parallel]{mclapply}()}.
#'  \item \code{"PBS"} -
#'    Query Torque/PBS environment variable \code{PBS_NUM_PPN}.
#'    Depending on PBS system configuration, this \emph{resource} parameter
#'    may or may not default to one.  It can be specified when submitting
#'    a job as in, for instance, \code{qsub -l nodes=4:ppn=2}, which
#'    requests four nodes each with two cores.
#'  \item \code{"Slurm"} -
#'    Query Simple Linux Utility for Resource Management (Slurm)
#'    environment variable \code{SLURM_CPUS_PER_TASK}.
#'    This may or may not be set.  It can be set when submitting a job,
#'    e.g. \code{sbatch --cpus-per-task=2 hello.sh} or by adding
#'    \code{#SBATCH --cpus-per-task=2} to the `hello.sh` script.
#' }
#' For any other value of a \code{methods} element, the R option with the
#' same name is queried.  If that is not set, the system environment
#' variable is queried.  If neither is set, a missing value is returned.
#'
#'
#' @export
#' @keywords internal
#' @importFrom parallel detectCores
availableCores <- function(constraints=NULL, methods=getOption("availableCoresMethods", c("system", "mc.cores+1", "Slurm", "PBS")), na.rm=TRUE, default=c(current=1L), which=c("min", "max", "all")) {
  ## Local functions
  getenv <- function(name) {
    as.integer(trim(Sys.getenv(name, NA_character_)))
  } # getenv()

  getopt <- function(name) {
    as.integer(getOption(name, NA_integer_))
  } # getopt()

  which <- match.arg(which)
  stopifnot(length(default) == 1, is.finite(default), default >= 1L)

  ncores <- rep(NA_integer_, times=length(methods))
  names(ncores) <- methods
  for (kk in seq_along(methods)) {
    method <- methods[kk]
    if (method == "Slurm") {
      ## Number of cores assigned by Slum
      n <- getenv("SLURM_CPUS_PER_TASK")
    } else if (method == "PBS") {
      ## Number of cores assigned by Torque/PBS
      n <- getenv("PBS_NUM_PPN")
    } else if (method == "mc.cores") {
      .Deprecated(msg="Method 'mc.cores' for future::availableCores() is deprecated; use 'mc.cores+1' instead.")
      n <- getopt("mc.cores") + 1L
    } else if (method == "mc.cores+1") {
      ## Number of cores by option defined by 'parallel' package
      n <- getopt("mc.cores") + 1L
    } else if (method == "system") {
      ## Number of cores available according to parallel::detectCores()
      n <- detectCores()
    } else {
      ## covr: skip=3
      ## Fall back to querying option and system environment variable
      ## with the given name
      n <- getopt(method)
      if (is.na(n)) n <- getenv(method)
    }
    ncores[kk] <- n
  }

  ## Validate settings
  ncoresT <- ncores[!is.na(ncores)]
  ncoresT <- ncoresT[ncoresT <= 0]
  if (length(ncoresT) > 0) {
    stop("Detected invalid (zero or less) core settings: ",
         paste(paste0(sQuote(names(ncoresT)), "=", ncoresT), collapse=", "))
  }

  ## Drop missing values?
  if (na.rm) {
    ncores <- ncores[!is.na(ncores)]
  }

  ## Fall back to the default?
  if (length(ncores) == 0) ncores <- default

  if (which == "min") {
    ## which.min() to preserve name
    ncores <- ncores[which.min(ncores)]
  } else if (which == "max") {
    ## which.max() to preserve name
    ncores <- ncores[which.max(ncores)]
  }

  if (!is.null(constraints)) {
    if (constraints == "multicore") {
      ## SPECIAL: On some supports such as Windows, multicore processing
      ## is not supported.  If so, we should override all values to
      ## to reflect that only a single core is available
      if (!supportsMulticore()) ncores[] <- 1L
    }
  }

  ## Sanity check
  stopifnot(all(ncores >= 1L, na.rm=TRUE))

  ncores
} # availableCores()


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
  futures <- FutureRegistry("multicore", action="list")
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
requestCore <- function(await, maxTries=getOption("future::maxTries", trim(Sys.getenv("R_FUTURE_MAXTRIES", 1000))), delta=getOption("future::interval", 1.0), alpha=1.01) {
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
