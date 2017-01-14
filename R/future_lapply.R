
#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' @param FUN  A function taking at least one argument.
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#' @param future.args (optional) Additional arguments passed to
#'        \code{\link{future}()}.
#'
#' @return A list with same length and names as \code{x}.
#'
#' @example incl/future_lapply.R
#'
#' @aliases flapply
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @export
#' @keywords internal
future_lapply <- function(x, FUN, ..., future.args = NULL) {
  stopifnot(is.function(FUN))
  if (!is.null(future.args)) {
    stopifnot(is.list(future.args), !is.null(names(future.args)))
  }

  ## Nothing to do?
  nx <- length(x)
  if (nx == 0) return(list())
  
  globals <- future.args$globals

  ## Collect all globals (once)?
  envir <- environment()
  if (is.null(globals)) {
    x_ii <- NULL
    globals <- c("FUN", "x_ii", names(list(...)), "...")
    globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
  }

  lazy <- future.args$lazy
  if (is.null(lazy)) lazy <- FALSE

  ## Use random seed?
  seeds <- vector("list", length = nx)
  seed <- future.args$seed
  if (!is.null(seed)) {
    stopifnot(is.numeric(seed), all(is.finite(seed)))
    seed <- as.integer(seed)

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


  ## 2. Chunking
  chunk <- future.args$chunk
  if (is.null(chunk)) {
    nbr_of_futures <- nbrOfWorkers()
  } else {
    stopifnot(length(chunk) == 1)
  
    ## Treat 'chunk' as the number of futures per chunks.
    nbr_of_futures_per_worker <- as.numeric(chunk)
    stopifnot(!is.na(nbr_of_futures_per_worker), nbr_of_futures_per_worker >= 0)
  
    nbr_of_futures <- nbr_of_futures_per_worker * nbrOfWorkers()
    if (nbr_of_futures < 1) {
      nbr_of_futures <- 1L
    } else if (nbr_of_futures > nx) {
      nbr_of_futures <- nx
    }
  }

  chunks <- splitIndices(nx, ncl = nbr_of_futures)
  fs <- vector("list", length = length(chunks))

  ## Avoid FUN() clash with lapply(..., FUN) below.
  names <- names(globals)
  names[names == "FUN"] <- ".FUN"
  names(globals) <- names
  
  ## Add 'seeds_ii' placeholder
  globals <- c(globals, list(seeds_ii = NULL))

  ## To please R CMD check
  .FUN <- seeds_ii <- NULL


  ## 3. Creating futures
  for (ii in seq_along(chunks)) {
    chunk <- chunks[[ii]]
    mdebug(sprintf("Chunk #%d of %d ...", ii, length(chunks)))

    ## Subsetting outside future is more efficient
    globals_ii <- globals
    globals_ii[["x_ii"]] <- x[chunk]
    globals_ii["seeds_ii"] <- list(seeds[chunk])

    fs[[ii]] <- future({
      lapply(seq_along(x_ii), FUN = function(jj) {
         x_jj <- x_ii[[jj]]
         seed_jj <- seeds_ii[[jj]]
	   if (!is.null(seed_jj)) {
	     assign(".Random.seed", seed_jj, envir = globalenv(), inherits = FALSE)
	   }
	   .FUN(x_jj, ...)
	})
    }, envir = envir, lazy = lazy, globals = globals_ii)

    ## Not needed anymore
    rm(list = c("chunk", "globals_ii"))

    mdebug(sprintf("Chunk #%d of %d ... DONE", ii, length(chunks)))
  } ## for (ii ...)

  ## Not needed anymore
  rm(list = c("chunks", "globals", "envir"))

  ## 4. Resolving futures
  values <- values(fs)
  
  ## Not needed anymore
  rm(list = "fs")
  
  values <- Reduce(c, values)
  names(values) <- names(x)

  values
}


## BACKWARD COMPATIBILITY (although never exported)
flapply <- future_lapply
