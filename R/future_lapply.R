#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' 
#' @param FUN  A function taking at least one argument.
#' 
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#' 
#' @param future.lazy Specifies whether the futures should be resolved
#'        lazily or eagerly.  The default is eager.
#' 
#' @param future.seed If \code{TRUE} (default), a L'Ecuyer-CMRG RNG seed
#'        is randomly created and used.  This L'Ecuyer-CMRG RNG seed will
#'        then generate the stream of seeds for all elements in \code{x}.
#'        For RNG reproducibility, a fixed seed (integer) may be given,
#'        either as a full L'Ecuyer-CMRG RNG seed (vector of 1+6 integers)
#'        or as a seed for \code{set.seed(future.seed)} generating the full
#'        L'Ecuyer-CMRG seed.
#'        If none of the function calls \code{FUN(x[[i]], ...)} uses random
#'        number generation, then \code{future.seed = FALSE} may be used.
#'        In such cases, the RNG state is also guaranteed not to change.
#' 
#' @param future.globals A logical, a character vector, or a named list for
#'        controlling how globals are handled. For details, see below section.
#' 
#' @param future.scheduling Average number of futures ("chunks") per worker.
#'        If \code{0.0}, then a single future is used to process all elements
#'        of \code{x}.
#'        If \code{1.0} or \code{TRUE}, then one future per worker is used.
#'        If \code{2.0}, then each worker will process two futures
#'        (if there are enough elements in \code{x}).
#'        If \code{Inf} or \code{FALSE}, then one future per element of
#'        \code{x} is used.
#'
#' @return A list with same length and names as \code{x}.
#'
#' @section Global variables:
#' Argument \code{future.globals} may be used to control how globals
#' should be handled similarly how the \code{globals} argument is used with
#' \code{\link{future}()}.
#' Since all function calls use the same set of globals, this function can do
#' any gathering of globals upfront (once), which is more efficient than if
#' it would be done for each future independently.
#' If \code{TRUE}, \code{NULL} or not is specified (default), then globals
#' are automatically identified and gathered.
#' If a character vector of names is specified, then those globals are gathered.
#' If a named list, then those globals are used as is.
#' In all cases, \code{FUN} and any \code{...} arguments are automatically
#' passed as globals to each future created as they are always needed.
#'
#' @example incl/future_lapply.R
#'
#' @aliases flapply
#' @importFrom globals globalsByName globalsOf cleanup
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @importFrom utils str
#' @export
#' @keywords internal
future_lapply <- function(x, FUN, ..., future.lazy = FALSE, future.globals = TRUE, future.seed = TRUE, future.scheduling = 1.0) {
  stopifnot(is.function(FUN))
  
  stopifnot(is.logical(future.lazy))

  stopifnot(!is.null(future.seed))
  
  stopifnot(length(future.scheduling) == 1, !is.na(future.scheduling),
            is.numeric(future.scheduling) || is.logical(future.scheduling))

  ## Nothing to do?
  nx <- length(x)
  if (nx == 0) return(list())

  debug <- getOption("future.debug", FALSE)
  
  envir <- environment()
  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 1. Global variables
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## The default is to gather globals
  if (is.null(future.globals)) future.globals <- TRUE

  globals <- future.globals
  if (is.logical(globals)) {
    ## Gather all globals?
    if (globals) {
      mdebug("Finding globals ...")
  
      globals <- c("FUN", names(list(...)), "...")
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
    } else {
      globals <- list(FUN = FUN)
    }
  } else if (is.character(globals)) {
    globals <- unique(c(globals, "FUN", names(list(...)), "..."))
    globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
  } else if (is.list(globals)) {
    names <- names(globals)
    if (length(globals) > 0 && is.null(names)) {
      stop("Invalid argument 'future.globals'. All globals must be named.")
    }
  } else {
    stop("Invalid argument 'future.globals': ", mode(globals))
  }
  stopifnot(is.list(globals))
  
  names <- names(globals)
  if (!is.element("FUN", names)) {
    globals <- c(globals, FUN = FUN)
  }
  if (!is.element("...", names)) {
    dotdotdot <- globalsByName("...", envir = envir, mustExist = TRUE)
    globals <- c(globals, dotdotdot)
  }

  ## Assert there are no reserved variables names among globals
  reserved <- intersect(c("...future.FUN", "...future.x_ii",
                          "...future.seeds_ii"), names)
  if (length(reserved) > 0) {
    stop("Detected globals using reserved variables names: ",
         paste(sQuote(reserved), collapse = ", "))
  }
 
  ## Avoid FUN() clash with lapply(..., FUN) below.
  names <- names(globals)
  names[names == "FUN"] <- "...future.FUN"
  names(globals) <- names

  if (debug) {
    mdebug("Globals to be used in all iterations:")
    mdebug(paste(capture.output(str(globals)), collapse = "\n"))
  }


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 2. Reproducible RNG (for sequential and parallel processing)
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  seed <- future.seed

  ## Placeholder for all seeds (== '.Random.seed':s) needed for all elements.
  ## Will be all NULLs if RNGs are not used
  seeds <- vector("list", length = nx)
  
  ## Don't use RNGs?
  if (is.logical(seed) && !seed) seed <- NULL

  # Use RNGs?
  if (!is.null(seed)) {
    ## Use L'Ecuyer-CMRG RNGkind in this function call. Undo afterward.
    ## NOTE: This will generate a new .Random.seed (also iff missing)
    orng <- RNGkind("L'Ecuyer-CMRG")[1L]
    on.exit(RNGkind(orng))

    if (is.logical(seed) && seed) {
      ## Get current L'Ecuyer-CMRG seed (see comment above)
      seed <- get(".Random.seed", envir = globalenv())
    }

    stopifnot(is.numeric(seed), all(is.finite(seed)))
    seed <- as.integer(seed)

    ## Passed a L'Ecuyer-CMRG seed or a seed for set.seed()?
    if (length(seed) == 7) {
      ## (a) Passed a L'Ecuyer-CMRG seed
      if (!is.integer(seed) || !all(is.finite(seed)) || seed[1] != 407L) {
        msg <- "Argument 'seed' must be L'Ecuyer-CMRG RNG seed as returned by parallel::nextRNGStream() or an single integer."
        mdebug(msg)
        mdebug(capture.output(print(seed)))
        stop(msg)
      }
      .seed <- seed
    } else {
      ## (b) Passed a seed meant for set.seed()
      
      ## Current RNG state
      .GlobalEnv <- globalenv()
      oseed <- .GlobalEnv$.Random.seed
  
      ## Reset RNG state afterwards?
      on.exit({
        ## NOTE: Is this really needed?  Doesn't above RNGkind() guarantee
        ## it exists?
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


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 3. Load balancing ("chunking")
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.logical(future.scheduling)) {
    if (future.scheduling) {
      nbr_of_futures <- max(nx, nbrOfWorkers())
    } else {
      nbr_of_futures <- nx
    }
  } else {
    ## Treat 'future.scheduling' as the number of futures per worker.
    stopifnot(future.scheduling >= 0)
    nbr_of_futures <- future.scheduling * max(nx, nbrOfWorkers())
    if (nbr_of_futures < 1) {
      nbr_of_futures <- 1L
    } else if (nbr_of_futures > nx) {
      nbr_of_futures <- nx
    }
  }

  chunks <- splitIndices(nx, ncl = nbr_of_futures)
  fs <- vector("list", length = length(chunks))
  mdebug("Number of futures / chunks: %d", length(fs))

  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 4. Create futures
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Add argument placeholders
  globals <- c(globals, list(...future.x_ii = NULL, ...future.seeds_ii = NULL))

  ## To please R CMD check
  ...future.FUN <- ...future.x_ii <- ...future.seeds_ii <- NULL
  
  for (ii in seq_along(chunks)) {
    chunk <- chunks[[ii]]
    mdebug(sprintf("Chunk #%d of %d ...", ii, length(chunks)))

    ## Subsetting outside future is more efficient
    globals_ii <- globals
    globals_ii[["...future.x_ii"]] <- x[chunk]
    globals_ii["...future.seeds_ii"] <- list(seeds[chunk])

    fs[[ii]] <- future({
      lapply(seq_along(...future.x_ii), FUN = function(jj) {
         ...future.x_jj <- ...future.x_ii[[jj]]
         ...future.seed_jj <- ...future.seeds_ii[[jj]]
         if (!is.null(...future.seed_jj)) {
           assign(".Random.seed", ...future.seed_jj, envir = globalenv(), inherits = FALSE)
         }
         ...future.FUN(...future.x_jj, ...)
      })
    }, envir = envir, lazy = future.lazy, globals = globals_ii)

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
