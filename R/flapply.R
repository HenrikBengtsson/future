
#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' @param FUN  A function taking at least one argument.
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#'
#' @return A list.
#'
#' @keywords internal
flapply <- function(x, FUN, ...) {
  stopifnot(is.function(FUN))

  ## 1. Collect all globals (once)
  envir <- environment()
  x_ii <- NULL
  globals <- c("FUN", "x_ii", names(list(...)), "...")
  globals <- globalsByName(globals, envir=envir, mustExist=FALSE)

  ## 2. Apply function with fixed set of globals
  fs <- vector("list", length = length(x))
  names(fs) <- names(x)
  
  for (ii in seq_along(x)) {
    ## Subsetting outside future is more efficient
    globals$x_ii <- x[[ii]]
    
    fs[[ii]] <- future(FUN(x_ii, ...), envir=envir, globals=globals)
  }

  ## Not needed anymore
  rm(list=c("x_ii", "globals", "ii", "envir"))

  ## Resolve and return as values
  values(fs)
} # flapply()
