
#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' @param FUN  A function taking at least one argument.
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#' @param future.args (optional) Additional arguments passed to
#'        \code{\link{future}()}.
#'
#' @return A list.
#'
#' @aliases flapply
#' @keywords internal
future_lapply <- function(x, FUN, ..., future.args = NULL) {
  stopifnot(is.function(FUN))
  if (!is.null(future.args)) {
    stopifnot(is.list(future.args), !is.null(names(future.args)))
  }
  
  lazy <- future.args$lazy
  if (is.null(lazy)) lazy <- FALSE
  
  globals <- future.args$globals
  x_ii <- NULL

  ## Collect all globals (once)?
  if (is.null(globals)) {
    envir <- environment()
    globals <- c("FUN", "x_ii", names(list(...)), "...")
    globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
  }

  ## 2. Apply function with fixed set of globals
  fs <- vector("list", length = length(x))
  names(fs) <- names(x)
  
  for (ii in seq_along(x)) {
    ## Subsetting outside future is more efficient
    globals$x_ii <- x[[ii]]
    
    fs[[ii]] <- future(FUN(x_ii, ...), envir=envir, lazy = lazy, globals = globals)
  }

  ## Not needed anymore
  rm(list=c("x_ii", "globals", "ii", "envir"))

  ## Resolve and return as values
  values(fs)
}


## BACKWARD COMPATIBILITY (although never exported)
flapply <- future_lapply
