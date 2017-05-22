#' An multicore future is a future whose value will be resolved asynchronously in a parallel process
#'
#' @inheritParams MultiprocessFuture-class
#'
#' @return An object of class \code{MulticoreFuture}.
#'
#' @seealso
#' To evaluate an expression using "multicore future", see function
#' \code{\link{multicore}()}.
#'
#' @export
#' @name MulticoreFuture-class
#' @keywords internal
MulticoreFuture <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, globals = TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  args <- list(...)
  lazy <- args$lazy
  if (is.null(lazy)) lazy <- FALSE

  ## Global objects
  assignToTarget <- (is.list(globals) || inherits(globals, "Globals"))
  gp <- getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression, globals = globals)

  ## Assign?
   if (length(gp) > 0 && (lazy || assignToTarget)) {
    target <- new.env(parent = envir)
    globalsT <- gp$globals
    for (name in names(globalsT)) {
      target[[name]] <- globalsT[[name]]
    }
    globalsT <- NULL
    envir <- target
  }
  gp <- NULL

  f <- MultiprocessFuture(expr = expr, envir = envir, substitute = FALSE, job = NULL, ...)
  structure(f, class = c("MulticoreFuture", class(f)))
}


#' @export
run.MulticoreFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
  if (future$state != 'created') {
    stop("A future can only be launched once.")
  }
  
  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  mcparallel <- importParallel("mcparallel")

  expr <- getExpression(future)
  envir <- future$envir

  requestCore(
    await = function() FutureRegistry("multicore", action = "collect-first"),
    workers = future$workers
  )

  ## Add to registry
  FutureRegistry("multicore", action = "add", future = future)

  future.args <- list(expr)
  job <- do.call(parallel::mcparallel, args = future.args, envir = envir)

  future$job <- job
  future$state <- 'running'

  if (debug) mdebug("%s started", class(future)[1])
  
  invisible(future)
}

#' @export
resolved.MulticoreFuture <- function(x, timeout = 0.2, ...) {
  ## Is future even launched?
  if (x$state == 'created') return(FALSE)

  ## Is value already collected?
  if (x$state %in% c('finished', 'failed', 'interrupted')) return(TRUE)

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(x)

  selectChildren <- importParallel("selectChildren")
  job <- x$job
  stopifnot(inherits(job, "parallelJob"))

  ## NOTE: We cannot use mcollect(job, wait = FALSE, timeout = 0.2),
  ## because that will return NULL if there's a timeout, which is
  ## an ambigous value because the future expression may return NULL.
  ## WORKAROUND: Adopted from parallel::mccollect().
  pid <- selectChildren(job, timeout = timeout)
  res <- (is.integer(pid) || is.null(pid))

  ## Signal conditions early? (happens only iff requested)
  if (res) signalEarly(x, ...)

  res
}

#' @export
value.MulticoreFuture <- function(future, signal = TRUE, ...) {
  ## Has the value already been collected?
  if (future$state %in% c('finished', 'failed', 'interrupted')) {
    return(NextMethod("value"))
  }

  if (future$state == 'created') {
    future <- run(future)
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  ## If not, wait for process to finish, and
  ## then collect and record the value
  mccollect <- importParallel("mccollect")
  job <- future$job
  stopifnot(inherits(job, "parallelJob"))
  res <- mccollect(job, wait = TRUE)[[1L]]

  ## SPECIAL: Check for fallback 'fatal error in wrapper code'
  ## try-error from parallel:::mcparallel().  If detected, then
  ## turn into an error with a more informative error message, cf.
  ## https://github.com/HenrikBengtsson/future/issues/35
  if (identical(res, structure("fatal error in wrapper code", class = "try-error"))) {
    stop(FutureError(sprintf("Detected an error ('%s') by the 'parallel' package while trying to retrieve the value of a %s (%s). This could be because the forked R process that evaluates the future was terminated before it was completed.", res, class(future)[1], sQuote(hexpr(future$expr))), future = future))
  }

  ## Update value and state
  condition <- attr(res, "condition")
  if (inherits(condition, "simpleError")) {
    future$state <- 'failed'
    future$value <- condition
  } else {
    future$value <- res
    future$state <- 'finished'
  }
  res <- NULL ## Not needed anymore

  ## Remove from registry
  FutureRegistry("multicore", action = "remove", future = future)

  NextMethod("value")
}


#' @export
getExpression.MulticoreFuture <- function(future, mc.cores = 1L, ...) {
  NextMethod("getExpression", mc.cores = mc.cores)
}
