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
#' If \code{"auto"}, the first non-empty set found.
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
#'    Query TORQUE/PBS environment variable \env{PBS_NODEFILE}.
#'    If this is set and specifies an existing file, then the set
#'    of workers is read from that file, where one worker (node)
#'    is given per line.
#'    An example of a job submission that results in this is
#'    \code{qsub -l nodes=4:ppn=2}, which requests four nodes each
#'    with two cores.
#'  \item \code{"SGE"} -
#'    Query Sun/Oracle Grid Engine (SGE) environment variable
#'    \env{PE_HOSTFILE}.
#'    An example of a job submission that results in this is
#'    \code{qsub -pe mpi 8} (or \code{qsub -pe ompi 8}), which
#'    requests eight cores on a any number of machines.
#' }
#'
#' @seealso
#' To get the number of available workers on the current machine,
#' see \code{\link{availableCores}()}.
#'
#' @importFrom utils file_test
#' @export
#' @keywords internal
availableWorkers <- function(methods=getOption("future.availableWorkers.methods", c("mc.cores+1", "_R_CHECK_LIMIT_CORES_", "PBS", "SGE", "Slurm", "system")), na.rm=TRUE, default="localhost", which=c("auto", "min", "max", "all")) {
  ## Local functions
  getenv <- function(name) {
    as.character(trim(Sys.getenv(name, NA_character_)))
  }

  getopt <- function(name) {
    as.character(getOption(name, NA_character_))
  }
 
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
  methods_localhost <- c("_R_CHECK_LIMIT_CORES_", "mc.cores", "mc.cores+1", "system")
  methodsT <- setdiff(methods, methods_localhost)
  for (method in methodsT) {
    if (method == "PBS") {
      pathname <- getenv("PBS_NODEFILE")
      if (is.na(pathname)) next
      if (!file_test("-f", pathname)) {
        warning(sprintf("Environent variable %s was set but no such file %s exists", sQuote("PBS_NODEFILE"), sQuote(pathname)))
        next
      }
      data <- read_pbs_nodefile(pathname)
      w <- data$node

      ## Sanity checks
      pbs_np <- as.integer(getenv("PBS_NP"))
      if (!identical(pbs_np, length(w))) {
        warning(sprintf("Identified %d workers from the %s file (%s), which does not match environment variable %s = %d", length(w), sQuote("PBS_NODEFILE"), sQuote(pathname), sQuote("PBS_NP"), pbs_np))
      }

      pbs_nodes <- as.integer(getenv("PBS_NUM_NODES"))
      pbs_ppn <- as.integer(getenv("PBS_NUM_PPN"))
      pbs_np <- pbs_nodes * pbs_ppn
      if (!identical(pbs_np, length(w))) {
        warning(sprintf("Identified %d workers from the %s file (%s), which does not match environment variables %s * %s = %d * %d = %d", length(w), sQuote("PBS_NODEFILE"), sQuote(pathname), sQuote("PBS_NUM_NODES"), sQuote("PBS_NUM_PPN"), pbs_nodes, pbs_ppn, pbs_np))
      }

      ## TO DO: Add validation of 'w' (from PBS_HOSTFILE) toward
      ## counts in PBS_NP and / or PBS_NUM_NODES * PBS_NUM_PPN.
    } else if (method == "SGE") {
      pathname <- getenv("PE_HOSTFILE")
      if (is.na(pathname)) next
      if (!file_test("-f", pathname)) {
        warning(sprintf("Environent variable %s was set but no such file %s exists", sQuote("PE_HOSTFILE"), sQuote(pathname)))
        next
      }
      data <- read_pe_hostfile(pathname)
      w <- expand_nodes(data)

      ## Sanity checks
      nslots <- as.integer(getenv("NSLOTS"))
      if (!identical(nslots, length(w))) {
        warning(sprintf("Identified %d workers from the %s file (%s), which does not match environment variable %s = %d", length(w), sQuote("PE_HOSTFILE"), sQuote(pathname), sQuote("NSLOTS"), nslots))
      }
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

  nnodes <- unlist(lapply(workers, FUN = length), use.names = TRUE)
  if (which == "auto") {
    ## For default localhost sets, use the minimum allowed number of
    ## workers **according to availableCores()**.
    methodsT <- intersect(names(workers), methods_localhost)
    methodsT <- methodsT[is.finite(ncores[methodsT]) & ncores[methodsT] > 0]
    if (length(methodsT) > 1L) {
      min <- min(ncores[methodsT], na.rm = TRUE)
      if (is.finite(min)) {
        nnodes[methodsT] <- min
        workers[methodsT] <- list(rep("localhost", times = min))
      }
    }
    
    ## Now, pick the first positive and finite value
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



#' @importFrom utils read.table
read_pbs_nodefile <- function(pathname, sort = TRUE) {
  ## One (node) per line
  lines <- readLines(pathname)
  lines <- trim(lines)

  ## Sanity checks
  stopifnot(
    all(nzchar(lines)),
    !anyNA(lines),
    !any(grepl("[[:space:]]", lines))
  )

  data <- data.frame(node = lines, stringsAsFactors = FALSE)

  if (sort) {
    data <- data[order(data$node), , drop = FALSE]
  }

  data
}


#' @importFrom utils read.table
read_pe_hostfile <- function(pathname, sort = TRUE) {
  ## One (node, ncores, queue, comment) per line, e.g.
  ## opt88 3 short.q@opt88 UNDEFINED
  ## iq242 2 short.q@iq242 UNDEFINED
  ## opt116 1 short.q@opt116 UNDEFINED
  data <- read.table(pathname, header = FALSE, sep = " ", stringsAsFactors = FALSE)
  
  ## Sanity checks
  stopifnot(ncol(data) >= 2)
  
  colnames(data)[1:2] <- c("node", "count")
  if (ncol(data) >= 3) colnames(data)[3] <- "via"
  if (ncol(data) >= 4) colnames(data)[4] <- "notes"

  stopifnot(
    is.character(data$node),
    !anyNA(data$node),
    !any(grepl("[[:space:]]", data$node)),
    is.integer(data$count),
    !anyNA(data$count),
    all(is.finite(data$count)),
    all(data$count > 0)
  )

  if (sort) {
    data <- data[order(data$node, data$count), , drop = FALSE]
  }
  
  data
}


expand_nodes <- function(data) {
  nodes <- mapply(data$node, data$count, FUN = function(node, count) {
    rep(node, times = count)
  }, SIMPLIFY = FALSE, USE.NAMES = FALSE)
  unlist(nodes, recursive = FALSE, use.names = FALSE)
}
