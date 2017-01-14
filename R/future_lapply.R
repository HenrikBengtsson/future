
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
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @export
#' @keywords internal
future_lapply <- function(x, FUN, ..., future.args = NULL) {
  stopifnot(is.function(FUN))
  if (!is.null(future.args)) {
    stopifnot(is.list(future.args), !is.null(names(future.args)))
  }

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


  ## 2. Chunking?
  chunk <- future.args$chunk
  if (is.null(chunk)) chunk <- FALSE
  if (chunk) {
    nbr_of_workers <- min(nbrOfWorkers(), length(x))
    chunks <- splitIndices(length(x), ncl = nbr_of_workers)
    fs <- vector("list", length = length(chunks))

    ## Avoid FUN() clash with lapply(..., FUN) below.
    names <- names(globals)
    names[names == "FUN"] <- ".FUN"
    names(globals) <- names
    
    ## Add 'seeds_ii' placeholder
    globals <- c(globals, list(seeds_ii = NULL))

    ## To please R CMD check
    .FUN <- seeds_ii <- NULL

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
      rm(list=c("chunk", "globals_ii"))

      mdebug(sprintf("Chunk #%d of %d ... DONE", ii, length(chunks)))
    } ## for (ii ...)

    ## Not needed anymore
    rm(list=c("chunks", "globals", "envir"))

    values <- values(fs)
    
    ## Not needed anymore
    rm(list="fs")
    
    values <- Reduce(c, values)
    names(values) <- names(x)
  } else {
    ## 3. Apply function with fixed set of globals
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
    values <- values(fs)
  }

  values
}


## BACKWARD COMPATIBILITY (although never exported)
flapply <- future_lapply
