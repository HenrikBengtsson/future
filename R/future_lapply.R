#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' 
#' @param FUN  A function taking at least one argument.
#' 
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#' 
#' @param future.globals A logical, a character vector, or a named list for
#'        controlling how globals are handled. For details, see below section.
#'
#' @param future.packages (optional) a character vector specifying packages
#'        to be attached in the R environment evaluating the future.
#' 
#' @param future.seed A logical or an integer (of length one or seven),
#'        or a list of \code{length(x)} with pre-generated random seeds.
#'        For details, see below section.
#'  
#' @param future.lazy Specifies whether the futures should be resolved
#'        lazily or eagerly (default).
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
#' @section Reproducible random number generation (RNG):
#' Unless \code{future.seed = FALSE}, this function guarantees to generate
#' the exact same sequence of random numbers \emph{given the same initial
#' seed / RNG state} - this regardless of type of futures and scheduling
#' ("chunking") strategy.
#' 
#' RNG reproducibility is achieved by pregenerating the random seeds for all
#' iterations (over \code{x}) by using L'Ecuyer-CMRG RNG streams.  In each
#' iteration, these seeds are set before calling \code{FUN(x[[ii]], ...)}.
#' \emph{Note, for large \code{length(x)} this may introduce a large overhead.}
#' As input (\code{future.seed}), a fixed seed (integer) may be given, either
#' as a full L'Ecuyer-CMRG RNG seed (vector of 1+6 integers) or as a seed
#' generating such a full L'Ecuyer-CMRG seed.
#' If \code{future.seed = TRUE}, then \code{\link[base:Random]{.Random.seed}}
#' is returned if it holds a L'Ecuyer-CMRG RNG seed, otherwise one is created
#' randomly.
#' If \code{future.seed = NA}, a L'Ecuyer-CMRG RNG seed is randomly created.
#' If none of the function calls \code{FUN(x[[i]], ...)} uses random number
#' generation, then \code{future.seed = FALSE} may be used.
#'
#' In addition to the above, it is possible to specify a pre-generated
#' sequence of RNG seeds as a list such that
#' \code{length(future.seed) == length(x)} and where each element is an
#' integer seed that can be assigned to \code{\link[base:Random]{.Random.seed}}.
#' Use this alternative with caution.
#' \emph{Note that as.list(seq_along(x)) is \emph{not} a valid set of such
#' \code{.Random.seed} values.}
#' 
#' In all cases but \code{future.seed = FALSE}, the RNG state of the calling
#' R processes after this function returns is guaranteed to be
#' "forwarded one step" from the RNG state that was before the call and
#' in the same way regardless of \code{future.seed}, \code{future.scheduling}
#' and future strategy used.  This is done in order to guarantee that an \R
#' script calling \code{future_lapply()} multiple times should be numerically
#' reproducible given the same initial seed.
#'
#' @example incl/future_lapply.R
#'
#' @importFrom globals globalsByName cleanup
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @importFrom utils capture.output str
#' @export
#' @keywords internal
future_lapply <- function(x, FUN, ..., future.globals = TRUE, future.packages = NULL, future.seed = FALSE, future.lazy = FALSE, future.scheduling = 1.0) {
  stopifnot(is.function(FUN))
  
  stopifnot(is.logical(future.lazy))

  stopifnot(!is.null(future.seed))
  
  stopifnot(length(future.scheduling) == 1, !is.na(future.scheduling),
            is.numeric(future.scheduling) || is.logical(future.scheduling))

  ## Nothing to do?
  nx <- length(x)
  if (nx == 0) return(list())

  debug <- getOption("future.debug", FALSE)
  
  if (debug) mdebug("future_lapply() ...")

  ## NOTE TO SELF: We'd ideally have a 'future.envir' argument also for
  ## future_lapply(), cf. future().  However, it's not yet clear to me how
  ## to do this, because we need to have globalsOf() to search for globals
  ## from the current environment in order to identify the globals of 
  ## arguments 'FUN' and '...'. /HB 2017-03-10
  future.envir <- environment()  ## Not used; just to clarify the above.
  
  envir <- future.envir
  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 1. Global variables
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## The default is to gather globals
  if (is.null(future.globals)) future.globals <- TRUE

  packages <- NULL
  globals <- future.globals
  if (is.logical(globals)) {
    ## Gather all globals?
    if (globals) {
      if (debug) mdebug("Finding globals ...")

      expr <- do.call(call, args = c(list("FUN"), list(...)))
      gp <- getGlobalsAndPackages(expr, envir = envir, tweak = tweakExpression, globals = TRUE)
      globals <- gp$globals
      packages <- gp$packages
      gp <- NULL
      
      if (debug) {
        mdebug(" - globals found: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
        mdebug(" - needed namespaces: [%d] %s", length(packages), hpaste(sQuote(packages)))
        mdebug("Finding globals ... DONE")
      }
    } else {
      ## globals = FALSE
      globals <- c("FUN", names(list(...)), "...")
      globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
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
  globals <- as.FutureGlobals(globals)
  stopifnot(inherits(globals, "FutureGlobals"))
  
  names <- names(globals)
  if (!is.element("FUN", names)) {
    globals <- c(globals, FUN = FUN)
  }
  
  if (!is.element("...", names)) {
    if (debug) mdebug("Getting '...' globals ...")
    dotdotdot <- globalsByName("...", envir = envir, mustExist = TRUE)
    dotdotdot <- as.FutureGlobals(dotdotdot)
    dotdotdot <- resolve(dotdotdot)
    attr(dotdotdot, "total_size") <- objectSize(dotdotdot)
    if (debug) mdebug("Getting '...' globals ... DONE")
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
    mdebug("Globals to be used in all futures:")
    mdebug(paste(capture.output(str(globals)), collapse = "\n"))
  }


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 2. Packages
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.null(future.packages)) {
    stopifnot(is.character(future.packages))
    future.packages <- unique(future.packages)
    stopifnot(!anyNA(future.packages), all(nzchar(future.packages)))
    packages <- unique(c(packages, future.packages))
  }
  
  if (debug) {
    mdebug("Packages to be attached in all futures:")
    mdebug(paste(capture.output(str(packages)), collapse = "\n"))
  }


  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 3. Reproducible RNG (for sequential and parallel processing)
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  seed <- future.seed

  ## Placeholder for all RNG stream seeds.
  seeds <- NULL
  
  ## Don't use RNGs? (seed = FALSE)
  if (is.logical(seed) && !is.na(seed) && !seed) seed <- NULL

  # Use RNGs?
  if (!is.null(seed)) {
    if (debug) mdebug("Generating random seeds ...")

    ## future_lapply() should return with the same RNG state regardless of
    ## future strategy used. This is be done such that RNG kind is preserved
    ## and the seed is "forwarded" one step from what it was when this
    ## function was called. The forwarding is done by generating one random
    ## number. Note that this approach is also independent on length(x) and
    ## the diffent FUN() calls.
    oseed <- next_random_seed()
    on.exit(set_random_seed(oseed))    

    ## A pregenerated sequence of random seeds?
    if (is.list(seed)) {
      if (debug) mdebug("Using a pre-define stream of random seeds ...", nx)
      
      nseed <- length(seed)
      if (nseed != nx) {
        stop("Argument 'seed' is a list, which specifies the sequence of seeds to be used for each element in 'x', but length(seed) != length(x): ", nseed, " != ", nx)
      }

      ## Assert same type of RNG seeds?
      ns <- unique(unlist(lapply(seed, FUN = length), use.names = FALSE))
      if (length(ns) != 1) {
        stop("The elements of the list specified in argument 'seed' are not all of the same lengths (did you really pass RNG seeds?): ", hpaste(ns))
      }

      ## Did use specify scalar integers as meant for set.seed()?
      if (ns == 1L) {
        stop("Argument 'seed' is invalid. Pre-generated random seeds must be valid .Random.seed seeds, which means they should be all integers and consists of two or more elements, not just one.")
      }

      types <- unlist(lapply(seed, FUN = typeof), use.names = FALSE)
      if (!all(types == "integer")) {
        stop("The elements of the list specified in argument 'seed' are not all integers (did you really pass RNG seeds?): ", hpaste(unique(types)))
      }
      
      ## Check if valid random seeds are specified.
      ## For efficiency, only look at the first one.
      if (!is_valid_random_seed(seed[[1]])) {
        stop("The list in argument 'seed' does not seem to hold elements that are valid .Random.seed values: ", capture.output(str(seeds[[1]])))
      }

      seeds <- seed
      
      if (debug) mdebug("Using a pre-define stream of random seeds ... DONE", nx)
    } else {
      if (debug) mdebug("Generating random seed streams for %d elements ...", nx)
      
      ## Generate sequence of _all_ RNG seeds starting with an initial seed
      ## '.seed' that is based on argument 'seed'.
      .seed <- as_lecyer_cmrg_seed(seed)

      seeds <- vector("list", length = nx)
      for (ii in seq_len(nx)) {
        ## RNG substream seed used in call FUN(x[[ii]], ...):
        ## This way each future can in turn generate further seeds, also
        ## recursively, with minimal risk of generating the same seeds as
        ## another future. This should make it safe to recursively call
        ## future_lapply(). /HB 2017-01-11
        seeds[[ii]] <- nextRNGSubStream(.seed)
        
        ## Main random seed for next iteration (= ii + 1)
        .seed <- nextRNGStream(.seed)
      }
  
      if (debug) mdebug("Generating random seed streams for %d elements ... DONE", nx)
    }
    
    if (debug) mdebug("Generating random seeds ... DONE")
  } ## if (!is.null(seed))

  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 4. Load balancing ("chunking")
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.logical(future.scheduling)) {
    if (future.scheduling) {
      nbr_of_futures <- nbrOfWorkers()
      if (nbr_of_futures > nx) nbr_of_futures <- nx
    } else {
      nbr_of_futures <- nx
    }
  } else {
    ## Treat 'future.scheduling' as the number of futures per worker.
    stopifnot(future.scheduling >= 0)
    nbr_of_workers <- nbrOfWorkers()
    if (nbr_of_workers > nx) nbr_of_workers <- nx
    nbr_of_futures <- future.scheduling * nbr_of_workers
    if (nbr_of_futures < 1) {
      nbr_of_futures <- 1L
    } else if (nbr_of_futures > nx) {
      nbr_of_futures <- nx
    }
  }

  chunks <- splitIndices(nx, ncl = nbr_of_futures)
  if (debug) mdebug("Number of chunks: %d", length(chunks))   

  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 5. Create futures
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Add argument placeholders
  globals_extra <- as.FutureGlobals(list(...future.x_ii = NULL, ...future.seeds_ii = NULL))
  attr(globals_extra, "resolved") <- TRUE
  attr(globals_extra, "total_size") <- 0
  globals <- c(globals, globals_extra)

  ## At this point a globals should be resolved and we should know their total size
##  stopifnot(attr(globals, "resolved"), !is.na(attr(globals, "total_size")))

    ## To please R CMD check
  ...future.FUN <- ...future.x_ii <- ...future.seeds_ii <- NULL

  nchunks <- length(chunks)
  fs <- vector("list", length = nchunks)
  if (debug) mdebug("Number of futures (= number of chunks): %d", nchunks)
  
  if (debug) mdebug("Launching %d futures (chunks) ...", nchunks)
  for (ii in seq_along(chunks)) {
    chunk <- chunks[[ii]]
    if (debug) mdebug("Chunk #%d of %d ...", ii, length(chunks))

    ## Subsetting outside future is more efficient
    globals_ii <- globals
    globals_ii[["...future.x_ii"]] <- x[chunk]
##    stopifnot(attr(globals_ii, "resolved"))
    
    ## Using RNG seeds or not?
    if (is.null(seeds)) {
      if (debug) mdebug(" - seeds: <none>")
      fs[[ii]] <- future({
        lapply(seq_along(...future.x_ii), FUN = function(jj) {
           ...future.x_jj <- ...future.x_ii[[jj]]
           ...future.FUN(...future.x_jj, ...)
        })
      }, envir = envir, lazy = future.lazy, globals = globals_ii, packages = packages)
    } else {
      if (debug) mdebug(" - seeds: [%d] <seeds>", length(chunk))
      globals_ii[["...future.seeds_ii"]] <- seeds[chunk]
      fs[[ii]] <- future({
        lapply(seq_along(...future.x_ii), FUN = function(jj) {
           ...future.x_jj <- ...future.x_ii[[jj]]
           assign(".Random.seed", ...future.seeds_ii[[jj]], envir = globalenv(), inherits = FALSE)
           ...future.FUN(...future.x_jj, ...)
        })
      }, envir = envir, lazy = future.lazy, globals = globals_ii, packages = packages)
    }
    
    ## Not needed anymore
    rm(list = c("chunk", "globals_ii"))

    if (debug) mdebug("Chunk #%d of %d ... DONE", ii, nchunks)
  } ## for (ii ...)
  if (debug) mdebug("Launching %d futures (chunks) ... DONE", nchunks)

  ## Not needed anymore
  rm(list = c("chunks", "globals", "envir"))

  ## 4. Resolving futures
  if (debug) mdebug("Resolving %d futures (chunks) ...", nchunks)
  values <- values(fs)
  if (debug) mdebug("Resolving %d futures (chunks) ... DONE", nchunks)
  
  ## Not needed anymore
  rm(list = "fs")
  
  if (debug) mdebug("Reducing values from %d chunks ...", nchunks)
  values <- Reduce(c, values)
  names(values) <- names(x)
  if (debug) mdebug("Reducing values from %d chunks ... DONE", nchunks)

  if (debug) mdebug("future_lapply() ... DONE")
  
  values
}
