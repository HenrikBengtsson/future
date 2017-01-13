
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
#' @importFrom parallel nextRNGStream nextRNGSubStream
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
    stopifnot(is.integer(seed), all(is.finite(seed)))

    orng <- RNGkind("L'Ecuyer-CMRG")[1L]
    on.exit(RNGkind(orng))

    ## Passed a L'Ecuyer-CMRG seed?
    if (length(seed) == 7) {
      if (!is.integer(seed) || !all(is.finite(seed)) || seed[1] != 407L) {
        msg <- "Argument 'seed' must be L'Ecuyer-CMRG RNG seed as returned by parallel::nextRNGStream() or an single integer."
        mdebug(msg)
        mdebug(capture.output(print(seed)))
        stop(msg)
      }
      .seed <- seed
    } else {
      ## Current RNG state (may not exist)
      .GlobalEnv <- globalenv()
      oseed <- .GlobalEnv$.Random.seed
  
      ## Reset RNG state afterwards?
      on.exit({
        if (is.null(oseed)) {
           rm(list = ".Random.seed", envir = .GlobalEnv, inherits = FALSE)
        } else {
          .GlobalEnv$.Random.seed <- oseed
        }
      }, add = TRUE)
    
      ## Generate initial L'Ecuyer-CMRG seed.
      set.seed(seed)
      .seed <- .GlobalEnv$.Random.seed
    }
    
    ## Generate sequence of _all_ RNG seeds needed
    for (ii in seq_along(x)) {
      ## Main RNG stream seeds
      .seed <- nextRNGStream(.seed)

      ## RNG substream seed for each future
      ##
      ## This way each future can in turn generate further  seeds, also
      ## recursively, with minimal risk of generating the same seeds as
      ## another future.  This should make it safe to recursively call
      ## future_lapply(). /HB 2017-01-11
      seeds[[ii]] <- nextRNGSubStream(.seed)
    }
  } ## if (!is.null(seed))

  ## 2. Apply function with fixed set of globals
  fs <- vector("list", length = length(x))
  names(fs) <- names(x)
  
  for (ii in seq_along(x)) {
    ## Subsetting outside future is more efficient
    globals$x_ii <- x[[ii]]

    ## Random L'Ecuyer-CMRG seed.
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
