
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

  ## Use random seed?
  seeds <- vector("list", length = length(x))
  seed <- future.args$seed
  if (!is.null(seed)) {
    ## Current RNG state (may not exist)
    .GlobalEnv <- globalenv()
    oseed <- .GlobalEnv$.Random.seed

    orng <- RNGkind("L'Ecuyer-CMRG")[1L]
    on.exit(RNGkind(orng))
  
    ## Reset RNG state afterwards?
    on.exit({
      if (is.null(oseed)) {
        rm(list = ".Random.seed", envir = .GlobalEnv, inherits = FALSE)
      } else {
        .GlobalEnv$.Random.seed <- oseed
      }
    }, add = TRUE)
  
    ## Generate sequence of all RNG seeds
    set.seed(seed)
    .seed <- .GlobalEnv$.Random.seed
    for (ii in seq_along(x)) {
      .seed <- parallel::nextRNGStream(.seed)
      seeds[[ii]] <- .seed
    }
      
    rm(list = ".seed")    
  } ## if (use_seed)

  ## 2. Apply function with fixed set of globals
  fs <- vector("list", length = length(x))
  names(fs) <- names(x)
  
  for (ii in seq_along(x)) {
    ## Subsetting outside future is more efficient
    globals$x_ii <- x[[ii]]

    ## Random seed
    seed <- seeds[[ii]]
    
    fs[[ii]] <- future(FUN(x_ii, ...), envir=envir, lazy = lazy, seed = seed, globals = globals)
  }

  ## Not needed anymore
  rm(list=c("x_ii", "globals", "ii", "envir"))

  ## Resolve and return as values
  values(fs)
}


## BACKWARD COMPATIBILITY (although never exported)
flapply <- future_lapply
