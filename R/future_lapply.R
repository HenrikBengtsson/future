#' Apply a Function over a List or Vector via Futures
#'
#' @param x  A vector-like object to iterate over.
#' 
#' @param FUN  A function taking at least one argument.
#' 
#' @param ...  (optional) Additional arguments pass to \code{FUN()}.
#' 
#' @param future.lazy Specifies whether the futures should be resolved
#'        lazily or eagerly (default).
#' 
#' @param future.seed A logical or an integer (of length one or seven),
#'        or a list of \code{length(x)} with pre-generated random seeds.
#'        For details, see below section.
#'  
#' @param future.globals A logical, a character vector, or a named list for
#'        controlling how globals are handled. For details, see below section.
#'
#' @param future.packages (optional) a character vector specifying packages
#'        to be attached in the R environment evaluating the future.
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
#' Regardless of type of futures and scheduling ("chunking") strategy, this
#' function guarantees to generate the exact same sequence of random
#' numbers \emph{given the same initial seed / RNG state}.  This is achieved
#' by pregenerating the random seeds for all iterations (over \code{x}) by
#' using L'Ecuyer-CMRG RNG streams.  In each iteration, these seeds are set
#' before calling \code{FUN(x[[ii]], ...)}.
#' For RNG reproducibility, a fixed seed (integer) may be given, either as a
#' full L'Ecuyer-CMRG RNG seed (vector of 1+6 integers) or as a seed for
#' \code{set.seed(future.seed)} generating such a full L'Ecuyer-CMRG seed.
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
#' Note that as.list(seq_along(x)) is \emph{not} a valid set of such
#' \code{.Random.seed} values.
#' \emph{Use this alternative with caution.}
#' 
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
#' @importFrom globals globalsByName globalsOf cleanup
#' @importFrom parallel nextRNGStream nextRNGSubStream splitIndices
#' @importFrom utils str
#' @export
#' @keywords internal
future_lapply <- function(x, FUN, ..., future.lazy = FALSE, future.globals = TRUE, future.packages = NULL, future.seed = TRUE, future.scheduling = 1.0) {
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

  packages <- NULL
  globals <- future.globals
  if (is.logical(globals)) {
    ## Gather all globals?
    if (globals) {
      mdebug("Finding globals ...")
  
      globals <- c("FUN", names(list(...)), "...")
      globals <- globalsByName(globals, envir = envir, mustExist = FALSE)
      mdebug(" - preliminary global set #1: [%d] %s", length(globals), hpaste(names(globals)))
  
      ## Do we need to scan the globals for for further global variables?
      ns <- lapply(globals, FUN = function(g) environmentName(environment(g)))
      ns <- unlist(ns, use.names = FALSE)
      globalsR <- globals[!ns %in% loadedNamespaces()]
      mdebug(" - preliminary global set #2: [%d] %s", length(globalsR), hpaste(sQuote(names(globalsR))))
      
      globalsR <- globalsR[sapply(globalsR, FUN = typeof) == "closure"]
      mdebug(" - preliminary global set #3: [%d] %s", length(globalsR), hpaste(sQuote(names(globalsR))))

      packages <- NULL
      globals <- globalsR
      while (length(globalsR) > 0) {
        new_globals <- list()
        
        namesR <- names(globalsR)
        mdebug(" - Scanning %s globals (%s) for additional globals: ",
               length(globalsR), hpaste(sQuote(namesR)))
        
        for (kk in seq_along(globalsR)) {
          obj <- globalsR[[kk]]
          env <- environment(obj)  ## (was 'envir' in future 1.3.0)
          if (is.null(env)) next
          globalsT <- globalsOf(obj, envir = env, mustExist = FALSE)
          mdebug("   + global #%d (%s) contains %d additional globals: %s", kk, sQuote(namesR[kk]), length(globalsT), hpaste(sQuote(names(globalsT))))
          if (length(globalsT) == 0) next

          globalsT <- cleanup(globalsT, drop = c("missing", "base-packages", "primitives", "internals"))
          if (length(globalsT) == 0) {
            mdebug("     after filtering out missing, internal, primitive and base-package globals, 0 remain.")
            next
          }
          mdebug("     after filtering out missing, internal, primitive and base-package globals, %d remain: %s", length(globalsT), hpaste(sQuote(names(globalsT))))
          
          ## Don't add already found globals
          keep <- !is.element(names(globalsT), c(namesR, names(new_globals)))
          globalsT <- globalsT[keep]
          if (length(globalsT) == 0) {
            mdebug("     after filtering already known ones, 0 remain.")
            next
          }
          mdebug("     after filtering already known ones, %d remain: %s", length(globalsT), hpaste(sQuote(names(globalsT))))

          ## Don't export globals in loaded namespaces, instead make sure
          ## the corresponding packages are attached.
          ## (FIXME: Here namespace == package. /HB 2017-03-08)
          ns <- lapply(globalsT, FUN = function(g) {
            environmentName(environment(g))
          })
          ns <- unlist(ns, use.names = FALSE)
          globalsT <- globalsT[!ns %in% loadedNamespaces()]

          ## Record namespaces that are packages to be attached
          ns <- unique(ns)
          ns <- intersect(ns, loadedNamespaces())
          packages <- c(packages, ns)
          if (length(globalsT) == 0) {
            mdebug("     after filtering out those in namespaces, 0 remain.")
            next
          }
          mdebug("     after filtering out those in namespaces, %d remain: %s", length(globalsT), hpaste(sQuote(names(globalsT))))
                    
          globals <- c(globals, globalsT)
          new_globals <- c(new_globals, globalsT)
        }

        globalsR <- new_globals
      } ## while()
      globalsR <- globalsT <- new_globals <- keep <- env <- NULL

      packages <- unique(packages)
      stopifnot(!anyDuplicated(names(globals)))
      
      mdebug(" - globals found: [%d] %s", length(globals), hpaste(sQuote(names(globals))))
      mdebug(" - needed namespaces: [%d] %s", length(packages), hpaste(sQuote(packages)))
      mdebug("Finding globals ... DONE")
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
    mdebug("Generating random seeds ...")

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
      mdebug("Using a pre-define stream of random seeds ...", nx)
      
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
      
      mdebug("Using a pre-define stream of random seeds ... DONE", nx)
    } else {
      mdebug("Generating random seed streams for %d elements ...", nx)
      
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
  
      mdebug("Generating random seed streams for %d elements ... DONE", nx)
    }
    
    mdebug("Generating random seeds ... DONE")
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
  mdebug("Number of chunks: %d", length(chunks))   

  
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## 4. Create futures
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## Add argument placeholders
  globals <- c(globals, list(...future.x_ii = NULL, ...future.seeds_ii = NULL))

  ## To please R CMD check
  ...future.FUN <- ...future.x_ii <- ...future.seeds_ii <- NULL

  fs <- vector("list", length = length(chunks))
  mdebug("Number of futures (= number of chunks): %d", length(fs))
  
  for (ii in seq_along(chunks)) {
    chunk <- chunks[[ii]]
    mdebug("Chunk #%d of %d ...", ii, length(chunks))

    ## Subsetting outside future is more efficient
    globals_ii <- globals
    globals_ii[["...future.x_ii"]] <- x[chunk]

    ## Using RNG seeds or not?
    if (is.null(seeds)) {
      fs[[ii]] <- future({
        lapply(seq_along(...future.x_ii), FUN = function(jj) {
           ...future.x_jj <- ...future.x_ii[[jj]]
           ...future.FUN(...future.x_jj, ...)
        })
      }, envir = envir, lazy = future.lazy, globals = globals_ii, packages = packages)
    } else {
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

    mdebug("Chunk #%d of %d ... DONE", ii, length(chunks))
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
