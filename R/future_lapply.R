
#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' @param FUN  A function taking at least one argument.
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#' @param future.args (optional) Additional arguments passed to
#'        \code{\link{future}()}.
#' @param future.seed L'Ecuyer-CMRG RNG seed used to generate the stream
#'        of seeds for all elements in \code{x}.  If \code{TRUE}, a
#'        random initial seed is used.
#' @param future.scheduling Average number of futures per worker.
#'        If \code{1.0} or \code{TRUE}, then one future per worker is used.
#'        If \code{Inf} or \code{FALSE}, then one future per element of
#'        \code{x} is used.
#'        If \code{0.0}, then a single future is used to process all elements
#'        of \code{x}.
#'
#' @return A list with same length and names as \code{x}.
#'
#' @example incl/future_lapply.R
#'
#' @importFrom globals globalsByName globalsOf cleanup
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @export
future_lapply <- function(x, FUN, ..., future.args = NULL, future.seed = TRUE, future.scheduling = 1.0) {
  stopifnot(is.function(FUN))
  
  if (!is.null(future.args)) {
    stopifnot(is.list(future.args), !is.null(names(future.args)))
  }
  
  stopifnot(length(future.scheduling) == 1, !is.na(future.scheduling),
            is.numeric(future.scheduling) || is.logical(future.scheduling))

  ## Nothing to do?
  nx <- length(x)
  if (nx == 0) return(list())
  
  globals <- future.args$globals

  ## Collect all globals (once)?
  envir <- environment()
  if (is.null(globals)) {
    mdebug("Finding globals ...")
    x_ii <- NULL

    globals <- c("FUN", "x_ii", names(list(...)), "...")
    globals <- globalsByName(globals, envir = envir, mustExist = FALSE)

    ## Do we need to scan the globals for for further global variables?
    ns <- lapply(globals, FUN = function(g) environmentName(environment(g)))
    ns <- unlist(ns, use.names = FALSE)
    globalsR <- globals[!ns %in% loadedNamespaces()]
    globalsR <- globalsR[sapply(globalsR, FUN = typeof) == "closure"]
    if (length(globalsR) > 0) {
      for (kk in seq_along(globalsR)) {
        obj <- globalsR[[kk]]
        globalsT <- globalsOf(obj, envir = envir, mustExist = FALSE)
        globalsT <- cleanup(globalsT)
        mdebug(" - globals of %s: %s", sQuote(names(globalsR)[kk]), paste(sQuote(names(globalsT)), collapse = ", "))
        globals <- c(globals, globalsT)
      }
    }
    mdebug(" - globals: %s", paste(sQuote(names(globals)), collapse = ", "))
    mdebug("Finding globals ... DONE")
  }

  lazy <- future.args$lazy
  if (is.null(lazy)) lazy <- FALSE

  ## Use random seed?
  seed <- future.seed  
  if (!is.null(seed) || is.logical(seed)) {
    ## This will generate a new .Random.seed (also iff missing)
    orng <- RNGkind("L'Ecuyer-CMRG")[1L]
    on.exit(RNGkind(orng))

    ## Use the global seed?
    if (is.logical(seed)) {
      if (seed) {
        seed <- get(".Random.seed", envir = globalenv())
      } else {
        ## Don't use a random seed (unusual, but supported)
        seed <- NULL
      }
    }
  }
  
  seeds <- vector("list", length = nx)
  if (!is.null(seed)) {
    stopifnot(is.numeric(seed), all(is.finite(seed)))
    seed <- as.integer(seed)

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
      mdebug("Generating random seeds ...")
      
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
    
    mdebug("Generating random seeds ... DONE")
  } ## if (!is.null(seed))


  ## 2. Load balancing ("chunking")
  if (is.logical(future.scheduling)) {
    if (future.scheduling) {
      nbr_of_futures <- nbrOfWorkers()
    } else {
      nbr_of_futures <- nx
    }
  } else {
    ## Treat 'future.scheduling' as the number of futures per worker.
    stopifnot(future.scheduling >= 0)
    nbr_of_futures <- future.scheduling * nbrOfWorkers()
    if (nbr_of_futures < 1) {
      nbr_of_futures <- 1L
    } else if (nbr_of_futures > nx) {
      nbr_of_futures <- nx
    }
  }

  chunks <- splitIndices(nx, ncl = nbr_of_futures)
  fs <- vector("list", length = length(chunks))
  mdebug("Number of futures / chunks: %d", length(fs))

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
