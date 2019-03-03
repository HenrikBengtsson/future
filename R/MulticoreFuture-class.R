#' An multicore future is a future whose value will be resolved asynchronously in a parallel process
#'
#' @inheritParams MultiprocessFuture-class
#' @inheritParams Future-class
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

  f <- MultiprocessFuture(expr = expr, envir = envir, substitute = FALSE, job = NULL, version = "1.8", ...)
  f$.callResult <- TRUE
  structure(f, class = c("MulticoreFuture", class(f)))
}


#' @export
run.MulticoreFuture <- function(future, ...) {
  debug <- getOption("future.debug", FALSE)
  
  if (future$state != "created") {
    label <- future$label
    if (is.null(label)) label <- "<none>"
    stop(FutureError(sprintf("A future ('%s') can only be launched once.", label), future = future))
  }
  
  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  mcparallel <- importParallel("mcparallel")

  expr <- getExpression(future)
  envir <- future$envir

  reg <- sprintf("multicore-%s", session_uuid())
  requestCore(
    await = function() FutureRegistry(reg, action = "collect-first", earlySignal = TRUE),
    workers = future$workers
  )

  ## Add to registry
  FutureRegistry(reg, action = "add", future = future, earlySignal = TRUE)

  future.args <- list(expr)
  job <- do.call(parallel::mcparallel, args = future.args, envir = envir)

  future$job <- job
  future$state <- "running"

  if (debug) mdebug("%s started", class(future)[1])
  
  invisible(future)
}

#' @export
resolved.MulticoreFuture <- function(x, timeout = 0.2, ...) {
  ## Is future even launched?
  if (x$state == "created") return(FALSE)

  ## Is value already collected?
  if (!is.null(x$result)) return(TRUE)

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(x)

  job <- x$job
  stop_if_not(inherits(job, "parallelJob"))

  selectChildren <- importParallel("selectChildren")
  
  ## NOTE: We cannot use mcollect(job, wait = FALSE, timeout = 0.2),
  ## because that will return NULL if there's a timeout, which is
  ## an ambigous value because the future expression may return NULL.
  ## WORKAROUND: Adopted from parallel::mccollect().
  ## FIXME: Can we use result() instead? /HB 2018-07-16
  pid <- selectChildren(children = job, timeout = timeout)
  res <- (is.integer(pid) || is.null(pid))

  ## Signal conditions early? (happens only iff requested)
  if (res) signalEarly(x, ...)

  res
}


#' @export
result.MulticoreFuture <- function(future, ...) {
  ## Has the result already been collected?
  result <- future$result
  if (!is.null(result)) {
    if (inherits(result, "FutureError")) stop(result)
    return(result)
  }

  if (future$state == "created") {
    future <- run(future)
  }

  ## Assert that the process that created the future is
  ## also the one that evaluates/resolves/queries it.
  assertOwner(future)

  ## If not, wait for process to finish, and
  ## then collect and record the value
  mccollect <- importParallel("mccollect")
  job <- future$job
  stop_if_not(inherits(job, "parallelJob"))

  ## WORKAROUNDS for R (< 3.6.0):
  ##  1. Pass single job as list, cf.
  ##     https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=17413
  jobs <- if (getRversion() >= "3.6.0") job else list(job)
  
  result <- mccollect(jobs = jobs, wait = TRUE)[[1L]]
  
  ## NOTE: In Issue #218 it was suggested that parallel:::rmChild() could
  ## fix this, but there seems to be more to this story, because we still
  ## get some of those warning even after removing children here.
  rmChild <- importParallel("rmChild")
  rmChild(child = job)

  ## Sanity checks
  if (!inherits(result, "FutureResult")) {
    ## SPECIAL: Check for fallback 'fatal error in wrapper code'
    ## try-error from parallel:::mcparallel().  If detected, then
    ## turn into an error with a more informative error message, cf.
    ## https://github.com/HenrikBengtsson/future/issues/35
    if (identical(result, structure("fatal error in wrapper code", class = "try-error"))) {
      label <- future$label
      if (is.null(label)) label <- "<none>"
      msg <- result
      ex <- FutureError(sprintf("Detected an error (%s) by the 'parallel' package while trying to retrieve the value of a %s (%s). This could be because the forked R process that evaluates the future was terminated before it was completed: %s", sQuote(msg), class(future)[1], sQuote(label), sQuote(hexpr(future$expr))), future = future)
    } else if (is.null(result)) {
      label <- future$label
      if (is.null(label)) label <- "<none>"

      pid <- job$pid
      pid_info <- if (is.numeric(pid)) sprintf("PID %g", pid) else NULL

      info <- pid_info
      msg <- sprintf("Failed to retrieve the result of %s (%s) from the forked worker (on localhost; %s)", class(future)[1], label, info)

      ## POST-MORTEM ANALYSIS:
      postmortem <- list()
    
      ## (a) Did a localhost worker process terminate?
      if (is.numeric(pid)) {
        alive <- pid_exists(pid)
        if (is.na(alive)) {
          msg2 <- "Failed to determined whether a process with this PID exists or not, i.e. cannot infer whether the forked localhost worker is alive or not."
        } else if (alive) {
          msg2 <- "A process with this PID exists, which suggests that the forked localhost worker is still alive."
        } else {
          msg2 <- "No process exists with this PID, i.e. the forked localhost worker is no longer alive."
        }
        postmortem$alive <- msg2
      }

      postmortem <- unlist(postmortem, use.names = FALSE)
      if (!is.null(postmortem)) {
         postmortem <- sprintf("Post-mortem diagnostic: %s",
                               paste(postmortem, collapse = ". "))
         msg <- paste0(msg, ". ", postmortem)
      }

      ex <- FutureError(msg, future = future)
    } else {
      ex <- UnexpectedFutureResultError(future)
    }
    future$result <- ex
    stop(ex)
  }
  
  future$result <- result
  
  ## BACKWARD COMPATIBILITY
  future$state <- if (inherits(result[["condition"]], "error")) "failed" else "finished"

  ## Remove from registry
  reg <- sprintf("multicore-%s", session_uuid())
  FutureRegistry(reg, action = "remove", future = future, earlySignal = TRUE)

  result
}


#' @export
getExpression.MulticoreFuture <- function(future, mc.cores = 1L, ...) {
  ## Assert that no arguments but the first is passed by position
  assert_no_positional_args_but_first()
  NextMethod(mc.cores = mc.cores)
}
