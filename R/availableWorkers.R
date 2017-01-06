#' Get set of available workers
#'
#' @param methods A character vector specifying how to infer the number
#' of available cores.
#'
#' @param na.rm If TRUE, only non-missing settings are considered/returned.
#'
#' @param default The default set of workers.
#'
#' @param which A character specifying which set / sets to return.
#' If \code{"first"}, the first non-empty set found.
#' If \code{"min"}, the minimum value is returned.
#' If \code{"max"}, the maximum value is returned (be careful!)
#' If \code{"all"}, all values are returned.#'
#'
#' @return Return a character vector of workers, which typically consists
#' of names of machines / compute nodes, but may also be IP numbers.
#'
#' @details
#' The default set of workers for each method is
#' \code{rep("localhost", times = availableCores(method))}, which means
#' that each will at least use as many parallel workers on the current
#' machine that \code{\link{availableCores}()} allows for that method.
#'
#' In addition, the following settings ("methods") are also acknowledged:
#' \itemize{
#'  \item \code{"PBS"} -
#'    Query Torque/PBS environment variable \env{PBS_NODEFILE}.
#'    If this is set and specifies an existing file, then the set
#'    of workers is read from that file, where one worker (node)
#'    is given per line.
#' }
#'
#' @seealso
#' To get the number of available workers on the current machine,
#' see \code{\link{availableCores}()}.
#'
#' @importFrom utils file_test
#' @export
#' @keywords internal
availableWorkers <- function(methods=getOption("future.availableCores.methods", c("PBS", "SGE", "Slurm", "_R_CHECK_LIMIT_CORES_", "mc.cores+1", "system")), na.rm=TRUE, default="localhost", which=c("first", "min", "max", "all")) {
  ## Local functions
  getenv <- function(name) {
    as.character(trim(Sys.getenv(name, NA_character_)))
  } # getenv()

  getopt <- function(name) {
    as.character(getOption(name, NA_character_))
  } # getopt()

  split <- function(s) {
    x <- unlist(strsplit(s, split = "[,]", fixed = FALSE), use.names = FALSE)
    x <- trim(x)
    x <- x[nzchar(x)]
    x
  }

  which <- match.arg(which)
  stopifnot(is.character(default), length(default) >= 1, !anyNA(default))


  ## Default is to use the current machine
  ncores <- availableCores(methods = methods, na.rm = FALSE, which = "all")
  workers <- lapply(ncores, FUN = function(n) {
    if (length(n) == 0 || is.na(n)) n <- 0L
    rep("localhost", times = n)
  })

  ## Acknowledge known HPC settings (skip others)
  methodsT <- setdiff(methods, c("_R_CHECK_LIMIT_CORES_", "mc.cores", "mc.cores+1", "system"))
  for (method in methodsT) {
    if (method == "PBS") {
      pathname <- getenv("PBS_NODEFILE")
      if (is.na(pathname)) next
      if (!file_test("-f", pathname)) {
        warning(sprintf("Environent variable %s was set but no such file %s exists", sQuote("PBS_NODEFILE"), sQuote(pathname)))
	next
      }
      ## One node per line
      w <- readLines(pathname)
    } else {
      ## Fall back to querying option and system environment variable
      ## with the given name
      w <- getopt(method)
      if (is.na(w)) w <- getenv(method)
      if (is.na(w)) next
      w <- split(w)
    }

    ## Drop missing or empty values?
    if (na.rm) w <- w[!is.na(w)]

    workers[[method]] <- w
  }

  nnodes <- unlist(lapply(workers, FUN = length), use.names = FALSE)
  if (which == "first") {
    idx <- which(is.finite(nnodes) & nnodes > 0L, useNames = FALSE)[1]
    workers <- if (is.na(idx)) character(0L) else workers[[idx]]
  } else if (which == "min") {
    idx <- which.min(nnodes)
    workers <- workers[[idx]]
  } else if (which == "max") {
    idx <- which.max(nnodes)
    workers <- workers[[idx]]
  }

  ## Fall back to default?
  if (is.character(workers) && length(workers) == 0) workers <- default

  ## Sanity checks
  min_count <- as.integer(na.rm)
  if (is.list(workers)) {
    lapply(workers, FUN = function(w) {
      stopifnot(is.character(w), length(w) >= 0L, all(nchar(w) > 0))
    })
  } else {
    stopifnot(is.character(workers), length(workers) >= min_count, all(nchar(workers) > 0))
  }

  workers
} # availableWorkers()

