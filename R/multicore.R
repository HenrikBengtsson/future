#' Create a multicore future whose value will be resolved asynchroneously in a forked parallel process
#'
#' A multicore future is a future that uses multicore evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done and from which globals are obtained.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param globals If TRUE, global objects are validated at the point
#' in time when the future is created (always before it is resolved),
#' that is, they identified and located.  If some globals fail to be
#' located, an informative error is generated.
#' @param maxCores The maximum number of multicore futures that can
#' be active at the same time before blocking.
#' @param earlySignal Specified whether conditions should be signaled as soon as possible or not.
#' @param \dots Not used.
#'
#' @return A \link{MulticoreFuture}
#' If \code{maxCores == 1}, then all processing using done in the
#' current/main R session and we therefore fall back to using
#' a eager future.  This is also the case whenever multicore
#' processing is not supported, e.g. on Windows.
#'
#' @example incl/multicore.R
#'
#' @details
#' This function will block if all cores are occupied and
#' will be unblocked as soon as one of the already running
#' multicore futures is resolved.  For the total number of
#' cores available including the current/main R process, see
#' \code{\link{availableCores}()}.
#'
#' Not all systems support multicore futures.  For instance,
#' it is not supported on Microsoft Windows.  Trying to create
#' multicore futures on non-supported systems will silently
#' fall back to using \link{eager} futures, which effectively
#' corresponds to a multicore future that can handle one parallel
#' process (the current one) before blocking.
#'
#' The preferred way to create an multicore future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(multicore)} such that it becomes the default
#' mechanism for all futures.  After this \code{\link{future}()}
#' and \code{\link{\%<=\%}} will create \emph{multicore futures}.
#'
#' @seealso
#' For processing in multiple background R sessions, see
#' \link{multisession} futures.
#' For multicore processing with fallback to multisession where
#' the former is not supported, see \link{multiprocess} futures.
#'
#' Use \code{\link{availableCores}()} to see the total number of
#' cores that are available for the current R session.
#' Use \code{\link{availableCores}("multicore") > 1L} to check
#' whether multicore futures are supported or not on the current
#' system.
#'
#' @export
multicore <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, maxCores=availableCores(constraints="multicore"), earlySignal=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  globals <- as.logical(globals)
  maxCores <- as.integer(maxCores)
  stopifnot(is.finite(maxCores), maxCores >= 1L)

  ## Fall back to eager futures if only a single additional R process
  ## can be spawned off, i.e. then use the current main R process.
  ## Eager futures best reflect how multicore futures handle globals.
  if (maxCores == 1L || availableCores(constraints="multicore") == 1L) {
    ## covr: skip=1
    return(eager(expr, envir=envir, substitute=FALSE, globals=globals, local=TRUE))
  }

  ## Validate globals at this point in time?
  if (globals) {
    exportGlobals(expr, envir=envir, target=NULL, tweak=tweakExpression, resolve=TRUE)
  }

  oopts <- options(mc.cores=maxCores)
  on.exit(options(oopts))

  future <- MulticoreFuture(expr=expr, envir=envir, substitute=FALSE, earlySignal=earlySignal)
  run(future)
}
class(multicore) <- c("multicore", "multiprocess", "future", "function")



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
requestCore <- function(await, maxTries=getOption("future.maxTries", trim(Sys.getenv("R_FUTURE_MAXTRIES", 1000))), delta=getOption("future.interval", 1.0), alpha=1.01) {
  stopifnot(is.function(await))
  maxTries <- as.integer(maxTries)
  stopifnot(is.finite(maxTries), maxTries > 0)
  stopifnot(is.finite(alpha), alpha > 0)

  ## Maximum number of cores available
  total <- availableCores()

  ## No additional cores available?
  if (total == 1L) {
    stop("INTERNAL ERROR: requestCore() was asked to find a free core, but there is only one core available, which is already occupied by the main R process.")
  }

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
    msg <- sprintf("TIMEOUT: All %d CPU cores are still occupied", total)
    mdebug(msg)
    stop(msg)
  }

  invisible(finished)
}
