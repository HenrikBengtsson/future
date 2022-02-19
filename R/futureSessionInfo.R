#' Get future-specific session information and validate current backend
#'
#' @param test If TRUE, one or more futures are created to query workers
#' and validate their information.
#'
#' @return Nothing.
#'
#' @example incl/futureSessionInfo.R
#'
#' @export
futureSessionInfo <- function(test = TRUE) {
  mprint0 <- function(...) mprint(..., prefix = NULL, debug = TRUE)
  mprintf0 <- function(...) mdebugf(..., prefix = NULL, debug = TRUE)   
  mstr0 <- function(...) mstr(..., prefix = NULL, debug = TRUE)

  message("*** Package versions")
  p <- c("future", "parallelly", "parallel", "globals", "listenv")
  v <- vapply(p, FUN = function(pkg) {
    as.character(packageVersion(pkg))
  }, FUN.VALUE = NA_character_)
  message(comma(sprintf("%s %s", p, v)))
  message()

  message("*** Allocations")
  message("availableCores():")
  mprint0(availableCores(which = "all"))

  message("availableWorkers():")
  workers <- availableWorkers(which = "all")
  workers <- workers[sapply(workers, FUN = length) > 0]
  mprint0(workers)
  message()

  message("*** Settings")
  names <- c(
    "future.plan",
    "future.fork.multithreading.enable",
    "future.globals.maxSize",
    "future.globals.onReference",
    "future.resolve.recursive",
    "future.rng.onMisuse",
    "future.wait.timeout",
    "future.wait.interval",
    "future.wait.alpha",
    "future.startup.script"
  )    
  for (name in names) {
    value <- getOption(name, default = NULL)
    if (is.character(value)) value <- sQuote(value)
    if (is.null(value)) value <- "<not set>"
    mprintf0("- %s=%s", name, value)
  }
  message()
  
  message("*** Backends")
  msgf("Number of workers: %d\n", nbrOfWorkers())
  mprint0(plan("list"))
  message()

  message("*** Basic tests")
  if (test) {
    fs <- list()
    for (ii in seq_len(nbrOfWorkers())) {
      fs[[ii]] <- future({
        info <- data.frame(
          worker = ii,
          pid    = Sys.getpid(),
          r      = getRversion(),
          as.list(Sys.info())
        )
      }, label = sprintf("futureSessionInfo-%d", ii))
    }
    vs <- value(fs)
    vs <- do.call(rbind, vs)
    rownames(vs) <- NULL
    mprint0(vs)
    npid <- length(unique(vs$pid))
    if (npid != nbrOfWorkers()) {
      mprintf0("WARNING: Number of unique PIDs does not match number expected workers: %d != %d", npid, nbrOfWorkers())
    } else {
      mprintf0("Number of unique PIDs: %d (as expected)", npid)
    }
  }
  
  invisible()
}
