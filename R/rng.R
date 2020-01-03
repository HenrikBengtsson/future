get_random_seed <- function() {
  env <- globalenv()
  env$.Random.seed
}

set_random_seed <- function(seed) {
  env <- globalenv()
  if (is.null(seed)) {
    rm(list = ".Random.seed", envir = env, inherits = FALSE)
  } else {
    env$.Random.seed <- seed
  }
}

next_random_seed <- function(seed = get_random_seed()) {
  sample.int(n = 1L, size = 1L, replace = FALSE)
  seed_next <- get_random_seed()
  stop_if_not(!any(seed_next != seed))
  invisible(seed_next)
}

is_valid_random_seed <- function(seed) {
  oseed <- get_random_seed()
  on.exit(set_random_seed(oseed))
  env <- globalenv()
  env$.Random.seed <- seed
  res <- tryCatch({
    sample.int(n = 1L, size = 1L, replace = FALSE)
  }, simpleWarning = function(w) w)
  !inherits(res, "simpleWarning")
}

## For RNGkind("L'Ecuyer-CMRG") we should have (see help('RNGkind')):
##   .Random.seed <- c(rng.kind, n) where length(n) == 6L.
## From R source code: check for rng.kind %% 10000L == 407L
is_lecyer_cmrg_seed <- function(seed) {
  is.numeric(seed) &&
    length(seed) == 7L &&
    all(is.finite(seed)) &&
    (seed[1] %% 10000L == 407L)
}

# @importFrom utils capture.output
as_lecyer_cmrg_seed <- function(seed) {
  ## Generate a L'Ecuyer-CMRG seed (existing or random)?
  if (is.logical(seed)) {
    stop_if_not(length(seed) == 1L)
    if (!is.na(seed) && !seed) {
      stop("Argument 'seed' must be TRUE if logical: ", seed)
    }

    oseed <- get_random_seed()
    
    ## Already a L'Ecuyer-CMRG seed?  Then use that as is.
    if (!is.na(seed) && seed) {
      if (is_lecyer_cmrg_seed(oseed)) return(oseed)
    }
    
    ## Otherwise, generate a random one.
    on.exit(set_random_seed(oseed), add = TRUE)
    RNGkind("L'Ecuyer-CMRG")
    return(get_random_seed())
  }

  stop_if_not(is.numeric(seed), all(is.finite(seed)))
  seed <- as.integer(seed)

  ## Already a L'Ecuyer-CMRG seed?
  if (is_lecyer_cmrg_seed(seed)) {
    return(seed)
  }

  ## Generate a new L'Ecuyer-CMRG seed?
  if (length(seed) == 1L) {
    oseed <- get_random_seed()
    on.exit(set_random_seed(oseed), add = TRUE)
    RNGkind("L'Ecuyer-CMRG")
    set.seed(seed)
    return(get_random_seed())
  }
  
  stop("Argument 'seed' must be L'Ecuyer-CMRG RNG seed as returned by parallel::nextRNGStream() or an single integer: ", capture.output(str(seed)))
}

#' Produce Reproducible Seeds for Parallel Random Number Generation
#'
#' @param count The number of RNG seeds to produce.
#'
#' @param seed A logical specifying whether RNG seeds should be generated
#' or not.  (`seed = NULL` corresponds to `seed = FALSE`).
#' If a list, then it should be of length `count` and each element should
#' consist of a valid RNG seed.
#'
#' @param debug If `TRUE`, debug output is produced, otherwise not.
#'
#' @return Returns a non-named list of length `count`, or `NULL`.
#' Any seed returned is a valid RNG seed.
#' 
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @importFrom utils capture.output str
#' 
#' @keywords internal
make_rng_seeds <- function(count, seed = FALSE,
                           debug = getOption("future.debug", FALSE)) {
  ## Don't use RNGs? (seed = {FALSE, NULL})
  if (is.null(seed)) return(NULL)
  if (is.logical(seed) && !is.na(seed) && !seed) return(NULL)

  stop_if_not(is.numeric(count), length(count) == 1L, !is.na(count),
              count >= 0L)
  
  ## Placeholder for all RNG stream seeds.
  seeds <- NULL
  
  # Use RNGs?
  if (debug) mdebug("Generating random seeds ...")

  ## A pregenerated sequence of random seeds?
  if (is.list(seed)) {
    if (debug) mdebugf("Using a pre-define stream of %d random seeds ...", count)

    seeds <- seed
    nseeds <- length(seeds)
    if (nseeds != count) {
      stop(sprintf("Argument 'seed' is a list, which specifies the sequence of seeds to be used for each element iterated over, but length(seed) != number of elements: %g != %g", nseeds, count))
    }

    ## Assert same type of RNG seeds?
    ns <- unique(unlist(lapply(seeds, FUN = length), use.names = FALSE))
    if (length(ns) != 1L) {
      stop("The elements of the list specified in argument 'seed' are not all of the same lengths (did you really pass RNG seeds?): ", hpaste(ns))
    }

    ## Did use specify scalar integers as meant for set.seed()?
    if (ns == 1L) {
      stop("Argument 'seed' is invalid. Pre-generated random seeds must be valid .Random.seed seeds, which means they should be all integers and consists of two or more elements, not just one.")
    }

    types <- unlist(lapply(seeds, FUN = typeof), use.names = FALSE)
    if (!all(types == "integer")) {
      stop("The elements of the list specified in argument 'seed' are not all integers (did you really pass RNG seeds?): ", hpaste(unique(types)))
    }
    
    ## Check if valid random seeds are specified.
    ## For efficiency, only look at the first one.
    if (!is_valid_random_seed(seeds[[1]])) {
      stop("The list in argument 'seed' does not seem to hold elements that are valid .Random.seed values: ", capture.output(str(seeds[[1]])))
    }

    if (debug) {
      mdebugf("Using a pre-define stream of %d random seeds ... DONE", count)
      mdebug("Generating random seeds ... DONE")
    }
    
    return(seeds)
  }

  
  if (debug) mdebugf("Generating random seed streams for %d elements ...", count)
    
  ## Generate sequence of _all_ RNG seeds starting with an initial seed
  ## '.seed' that is based on argument 'seed'.
  .seed <- as_lecyer_cmrg_seed(seed)

  ## future_*apply() should return with the same RNG state regardless of
  ## future strategy used. This is be done such that RNG kind is preserved
  ## and the seed is "forwarded" one step from what it was when this
  ## function was called. The forwarding is done by generating one random
  ## number. Note that this approach is also independent on the number of
  ## elements iterated over and the different FUN() calls.
  oseed <- next_random_seed()
  on.exit(set_random_seed(oseed))

  seeds <- vector("list", length = count)
  for (ii in seq_len(count)) {
    ## RNG substream seed used when calling FUN() for element(s) 'ii':
    ## This way each future can in turn generate further seeds, also
    ## recursively, with minimal risk of generating the same seeds as
    ## another future. This should make it safe to recursively call
    ## future_*apply(). /HB 2017-01-11
    seeds[[ii]] <- nextRNGSubStream(.seed)
    
    ## Main random seed for next iteration (= ii + 1)
    .seed <- nextRNGStream(.seed)
  }
  
  if (debug) {
    mdebugf("Generating random seed streams for %d elements ... DONE", count)
    mdebug("Generating random seeds ... DONE")
  }

  seeds
} # make_rng_seeds()
