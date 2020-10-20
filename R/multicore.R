#' Create a multicore future whose value will be resolved asynchronously in a forked parallel process
#'
#' A multicore future is a future that uses multicore evaluation,
#' which means that its _value is computed and resolved in
#' parallel in another process_.
#'
#' @inheritParams multiprocess
#' @inheritParams Future-class
#' @inheritParams future
#'
#' @return A \link{MulticoreFuture}
#' If `workers == 1`, then all processing using done in the
#' current/main \R session and we therefore fall back to using
#' an sequential future.  This is also the case whenever multicore
#' processing is not supported, e.g. on Windows.
#'
#' @example incl/multicore.R
#'
#' @details
#' This function will block if all cores are occupied and
#' will be unblocked as soon as one of the already running
#' multicore futures is resolved.  For the total number of
#' cores available including the current/main \R process, see
#' [availableCores()].
#'
#' Not all operating systems support process forking and thereby not multicore
#' futures.  For instance, forking is not supported on Microsoft Windows.
#' Moreover, process forking may break some R environments such as RStudio.
#' Because of this, the future package disables process forking also in
#' such cases.  See [supportsMulticore()] for details.
#' Trying to create multicore futures on non-supported systems or when
#' forking is disabled will result in multicore futures falling back to
#' becoming [sequential] futures.
#'
#' The preferred way to create an multicore future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(multicore)} such that it becomes the default
#' mechanism for all futures.  After this [future()]
#' and \code{\link{\%<-\%}} will create _multicore futures_.
#'
#' @seealso
#' For processing in multiple background \R sessions, see
#' [multisession] futures.
#'
#' Use [availableCores()] to see the total number of
#' cores that are available for the current \R session.
#' Use \code{\link{availableCores}("multicore") > 1L} to check
#' whether multicore futures are supported or not on the current
#' system.
#'
#' @export
multicore <- function(..., workers = availableCores(constraints = "multicore"), envir = parent.frame()) {
  if (is.function(workers)) workers <- workers()
  workers <- as.integer(workers)
  stop_if_not(is.finite(workers), workers >= 1L)

  ## Fall back to sequential futures if only a single additional R process
  ## can be spawned off, i.e. then use the current main R process.
  ## Sequential futures best reflect how multicore futures handle globals.
  if (workers == 1L || !supportsMulticore(warn = TRUE)) {
    ## covr: skip=1
    return(sequential(..., envir = envir))
  }

  oopts <- options(mc.cores = workers)
  on.exit(options(oopts))

  future <- MulticoreFuture(..., workers = workers, envir = envir)
  if (!future$lazy) future <- run(future)
  invisible(future)
}
class(multicore) <- c("multicore", "multiprocess", "future", "function")



#' Get number of cores currently used
#'
#' Get number of children (and don't count the current process)
#' used by the current \R session.  The number of children
#' is the total number of subprocesses launched by this
#' process that are still running and whose values have yet
#' not been collected.
#'
#' @return A non-negative integer.
#'
#' @keywords internal
usedCores <- function() {
  ## If multicore processing is not supported, then there should be no
  ## multicore workers in use
  if (!supportsMulticore(warn = FALSE)) return(0L)
  
  ## Number of unresolved multicore futures
  reg <- sprintf("multicore-%s", session_uuid())
  futures <- FutureRegistry(reg, action = "list", earlySignal = TRUE)
  nfutures <- length(futures)
  ncores <- nfutures

  ## Total number of multicore processes
  ## To please R CMD check
  ns <- getNamespace("parallel")
  children <- get("children", envir = ns, mode = "function")
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
      warning(sprintf("Hmm... %d active multicore processes were detected, but without any active multicore futures (it is not clear by what mechanism they were created). Because of this, the 'future' package do not know how to resolve/collect them and will therefore treat them as they do not exist.", nchildren))
      ncores <- 0L
    }
  }

  ncores
}



#' Request a core for multicore processing
#'
#' If no cores are available, the current process
#' blocks until a core is available.
#'
#' @param await A function used to try to "collect"
#'        finished multicore subprocesses.
#'
#' @param workers Total number of workers available.
#'
#' @param timeout Maximum waiting time (in seconds) allowed
#'        before a timeout error is generated.
#'
#' @param delta Then base interval (in seconds) to wait
#'        between each try.
#'
#' @param alpha A multiplicative factor used to increase
#'        the wait interval after each try.
#'
#' @return Invisible TRUE. If no cores are available after
#'         extensive waiting, then a timeout error is thrown.
#'
#' @keywords internal
requestCore <- function(await, workers = availableCores(), timeout = getOption("future.wait.timeout", as.numeric(Sys.getenv("R_FUTURE_WAIT_TIMEOUT", 30 * 24 * 60 * 60))), delta = getOption("future.wait.interval", as.numeric(Sys.getenv("R_FUTURE_WAIT_INTERVAL", "0.2"))), alpha = getOption("future.wait.alpha", as.numeric(Sys.getenv("R_FUTURE_WAIT_ALPHA", "1.01")))) {
  stop_if_not(length(workers) == 1L, is.numeric(workers), is.finite(workers), workers >= 1)
  stop_if_not(is.function(await))
  stop_if_not(is.finite(timeout), timeout >= 0)
  stop_if_not(is.finite(alpha), alpha > 0)

  debug <- getOption("future.debug", FALSE)
  if (debug) mdebugf("requestCore(): workers = %d", workers)

  ## No additional cores available?
  if (workers == 0L) {
    stop("INTERNAL ERROR: requestCore() was asked to find a free core, but no cores are available (workers = 0).")
  }

  
  t0 <- Sys.time()
  dt <- 0
  iter <- 1L
  interval <- delta
  finished <- FALSE
  while (dt <= timeout) {
    ## Check for available cores
    used <- usedCores()
    finished <- (used < workers)
    if (finished) break

    if (debug) mdebugf("Poll #%d (%s): usedCores() = %d, workers = %d", iter, format(round(dt, digits = 2L)), used, workers)

    ## Wait
    Sys.sleep(interval)
    interval <- alpha * interval

    ## Finish/close cores, iff possible
    await()

    iter <- iter + 1L
    dt <- difftime(Sys.time(), t0)
  }

  if (!finished) {
    msg <- sprintf("TIMEOUT: All %d cores are still occupied after %s (polled %d times)", workers, format(round(dt, digits = 2L)), iter)
    if (debug) mdebug(msg)
    stop(msg)
  }

  invisible(unname(finished))
}
