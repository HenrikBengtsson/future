#' Get number of available cores on current machine
#'
#' The current/main \R session counts as one, meaning the minimum
#' number of cores available is always at least one.
#'
#' @param constraints An optional character specifying under what
#' constraints ("purposes") we are requesting the values.
#' For instance, on systems where multicore processing is not supported
#' (i.e. Windows), using `constrains = "multicore"` will force a
#' single core to be reported.
#'
#' @param methods A character vector specifying how to infer the number
#' of available cores.
#'
#' @param na.rm If TRUE, only non-missing settings are considered/returned.
#'
#' @param default The default number of cores to return if no non-missing
#' settings are available.
#'
#' @param which A character specifying which settings to return.
#' If `"min"`, the minimum value is returned.
#' If `"max"`, the maximum value is returned (be careful!)
#' If `"all"`, all values are returned.
#'
#' @return Return a positive (>= 1) integer.
#' If `which = "all"`, then more than one value may be returned.
#' Together with `na.rm = FALSE` missing values may also be returned.
#'
#' @details
#' The following settings ("methods") for inferring the number of cores
#' are supported:
#' \itemize{
#'  \item `"system"` -
#'    Query \code{\link[parallel]{detectCores}()}.
#'  \item `"mc.cores"` -
#'    If available, returns the value of option
#'    \code{\link[base:options]{mc.cores}}.
#'    Note that \option{mc.cores} is defined as the number of
#'    _additional_ \R processes that can be used in addition to the
#'    main \R process.  This means that with `mc.cores = 0` all
#'    calculations should be done in the main \R process, i.e. we have
#'    exactly one core available for our calculations.
#'    The \option{mc.cores} option defaults to environment variable
#'    \env{MC_CORES} (and is set accordingly when the \pkg{parallel}
#'    package is loaded).  The \option{mc.cores} option is used by for
#'    instance \code{\link[=mclapply]{mclapply}()} of the \pkg{parallel}
#'    package.
#'  \item `"PBS"` -
#'    Query TORQUE/PBS environment variables \env{PBS_NUM_PPN} and \env{NCPUS}.
#'    Depending on PBS system configuration, these _resource_
#'    parameter may or may not default to one.
#'    An example of a job submission that results in this is
#'    `qsub -l nodes=1:ppn=2`, which requests one node with two cores.
#'  \item `"SGE"` -
#'    Query Sun/Oracle Grid Engine (SGE) environment variable
#'    \env{NSLOTS}.
#'    An example of a job submission that results in this is
#'    `qsub -pe smp 2` (or `qsub -pe by_node 2`), which
#'    requests two cores on a single machine.
#'  \item `"Slurm"` -
#'    Query Simple Linux Utility for Resource Management (Slurm)
#'    environment variable \env{SLURM_CPUS_PER_TASK}.
#'    This may or may not be set.  It can be set when submitting a job,
#'    e.g. `sbatch --cpus-per-task=2 hello.sh` or by adding
#'    `#SBATCH --cpus-per-task=2` to the \file{hello.sh} script.
#'    If \env{SLURM_CPUS_PER_TASK} is not set, then it will fall back to
#'    use \env{SLURM_CPUS_ON_NODE} if the job is a single-node job
#'    (\env{SLURM_JOB_NUM_NODES} is 1), e.g. `sbatch --ntasks=2 hello.sh`.
#'  \item `"LSF"` - 
#'    Query Platform Load Sharing Facility (LSF) environment variable
#'    \env{LSB_DJOB_NUMPROC}.
#'    Jobs with multiple (CPU) slots can be submitted on LSF using
#'    `bsub -n 2 -R "span[hosts=1]" < hello.sh`.
#'  \item `"custom"` -
#'    If option \option{future.availableCores.custom} is set and a function,
#'    then this function will be called (without arguments) and it's value
#'    will be coerced to an integer, which will be interpreted as a number
#'    of available cores.  If the value is NA, then it will be ignored.
#' }
#' For any other value of a `methods` element, the \R option with the
#' same name is queried.  If that is not set, the system environment
#' variable is queried.  If neither is set, a missing value is returned.
#'
#' @section Advanced usage:
#' It is possible to override the maximum number of cores on the machine
#' as reported by `availableCores(methods = "system")`.  This can be
#' done by first specifying
#' `options(future.availableCores.methods = "mc.cores")` and
#' then the number of cores to use, e.g. `options(mc.cores = 8)`.
#' Having said this, it is almost always better to do this by explicitly
#' setting the number of workers when specifying the future strategy,
#' e.g. `plan(multiprocess, workers = 8)`.
#'
#' @seealso
#' To get the number of available workers regardless of machine,
#' see [availableWorkers()].
#'
#' @export
#' @keywords internal
availableCores <- function(constraints = NULL, methods = getOption("future.availableCores.methods", c("system", "mc.cores", "_R_CHECK_LIMIT_CORES_", "PBS", "SGE", "Slurm", "LSF", "fallback", "custom")), na.rm = TRUE, default = c(current = 1L), which = c("min", "max", "all")) {
  ## Local functions
  getenv <- function(name) {
    as.integer(trim(Sys.getenv(name, NA_character_)))
  } # getenv()

  getopt <- function(name) {
    as.integer(getOption(name, NA_integer_))
  } # getopt()

  which <- match.arg(which, choices = c("min", "max", "all"))
  stop_if_not(length(default) == 1, is.finite(default), default >= 1L)

  ncores <- rep(NA_integer_, times = length(methods))
  names(ncores) <- methods
  for (kk in seq_along(methods)) {
    method <- methods[kk]
    if (method == "Slurm") {
      ## Number of cores assigned by Slurm

      ## The assumption is that the following works regardless of
      ## number of nodes requested /HB 2020-09-18
      ## Example: --cpus-per-task={n}
      n <- getenv("SLURM_CPUS_PER_TASK")
      if (is.na(n)) {
        ## Example: --nodes={nnodes} (defaults to 1, short: -N {nnodes})
        ## From 'man sbatch':
        ## SLURM_JOB_NUM_NODES (and SLURM_NNODES for backwards compatibility)
        ## Total number of nodes in the job's resource allocation.
        nnodes <- getenv("SLURM_JOB_NUM_NODES")
        if (is.na(nnodes)) nnodes <- getenv("SLURM_NNODES")
        if (is.na(nnodes)) nnodes <- 1L  ## Can this happen? /HB 2020-09-18

        if (nnodes == 1L) {
          ## Example: --nodes=1 --ntasks={n} (short: -n {n})
          ## IMPORTANT: 'SLURM_CPUS_ON_NODE' appears to be rounded up when nodes > 1.
          ## Example 1: With --nodes=2 --cpus-per-task=3 we see SLURM_CPUS_ON_NODE=4
          ## although SLURM_CPUS_PER_TASK=3. 
          ## Example 2: With --nodes=2 --ntasks=7, we see SLURM_CPUS_ON_NODE=6,
          ## SLURM_JOB_CPUS_PER_NODE=6,2, no SLURM_CPUS_PER_TASK, and
          ## SLURM_TASKS_PER_NODE=5,2.
          ## Conclusions: We can only use 'SLURM_CPUS_ON_NODE' for nnodes = 1.
          n <- getenv("SLURM_CPUS_ON_NODE")
        } else {
          ## Parse `SLURM_TASKS_PER_NODE`
          ntasks_per_node <- Sys.getenv("SLURM_TASKS_PER_NODE", NA_character_)
          if (!is.na(ntasks_per_node)) {
            ## Examples:
            ## SLURM_TASKS_PER_NODE=5,2
            ## SLURM_TASKS_PER_NODE=2(x2),1(x3)
            ntasks_per_node <- strsplit(ntasks_per_node, split = ",", fixed = TRUE)[[1]]
            ## TODO: Parse ... /HB 2020-09-16
            ## TODO: How do we infer which component to use on this host? /HB 2020-09-16
          }
        }
      }

      ## TODO?: Can we validate above assumptions/results? /HB 2020-09-18
      if (FALSE && !is.na(n)) {
        ## Is any of the following useful?

        ## Example: --ntasks={ntasks} (no default, short: -n {ntasks})
        ## From 'man sbatch':
        ## SLURM_NTASKS (and SLURM_NPROCS for backwards compatibility)
        ## Same as -n, --ntasks
        ntasks <- getenv("SLURM_NTASKS")
        if (is.na(ntasks)) ntasks <- getenv("SLURM_NPROCS")
      }
    } else if (method == "PBS") {
      ## Number of cores assigned by TORQUE/PBS
      n <- getenv("PBS_NUM_PPN")
      if (is.na(n)) {
        ## PBSPro sets 'NCPUS' but not 'PBS_NUM_PPN'
        n <- getenv("NCPUS")
      }
    } else if (method == "SGE") {
      ## Number of cores assigned by Sun/Oracle Grid Engine (SGE)
      n <- getenv("NSLOTS")
    } else if (method == "LSF") {
      ## Number of slots assigned by LSF
      n <- getenv("LSB_DJOB_NUMPROC")
    } else if (method == "mc.cores") {
      ## Number of cores by option defined by 'parallel' package
      n <- getopt("mc.cores")
      if (!is.na(n) && n == 0) n <- 1L  ## Because options(mc.cores = 0) may be set
    } else if (method == "mc.cores+1") {
      ## Number of cores by option defined by 'parallel' package
      n <- getopt("mc.cores") + 1L
    } else if (method == "_R_CHECK_LIMIT_CORES_") {
      ## A flag set by R CMD check for constraining number of
      ## cores allowed to be use in package tests.  Here we
      ## acknowledge this and sets number of cores to the
      ## maximum two allowed.  This way we don't have to explicitly
      ## use options(mc.cores = 2L) in example code, which may be
      ## misleading to the reader.
      chk <- tolower(Sys.getenv("_R_CHECK_LIMIT_CORES_", ""))
      chk <- (nzchar(chk) && (chk != "false"))
      n <- if (chk) 2L else NA_integer_
    } else if (method == "system") {
      ## Number of cores available according to parallel::detectCores()
      n <- detectCores()
    } else if (method == "fallback") {
      ## Number of cores available according to future.availableCores.fallback
      n <- getOption("future.availableCores.fallback", NA_integer_)
      n <- as.integer(n)
    } else if (method == "custom") {
      fcn <- getOption("future.availableCores.custom", NULL)
      if (!is.function(fcn)) next
      n <- fcn()
      n <- as.integer(n)
      if (length(n) != 1L) {
        stop("Function specified by option 'future.availableCores.custom' does not a single value")
      }
    } else {
      ## covr: skip=3
      ## Fall back to querying option and system environment variable
      ## with the given name
      n <- getopt(method)
      if (is.na(n)) n <- getenv(method)
    }
    ncores[kk] <- n
  }

  ## Validate settings
  ncoresT <- ncores[!is.na(ncores)]
  ncoresT <- ncoresT[ncoresT <= 0]
  if (length(ncoresT) > 0) {
    msg <- sprintf("Detected invalid (zero or less) core settings: %s",
         paste(paste0(sQuote(names(ncoresT)), " = ", ncoresT), collapse = ", "))
    mdebug(msg)
    stop(msg)
  }

  ## Drop missing values?
  if (na.rm) {
    ncores <- ncores[!is.na(ncores)]
  }

  ## Fall back to the default?
  if (length(ncores) == 0) ncores <- default

  ## Keep only one
  if (length(ncores) >= 2 && (which %in% c("min", "max"))) {
    ## SPECIAL: The 'fallback' should only be used as a fallback if no other
    ## options are explicitly set / available.
    idx_fallback <- which(names(ncores) == "fallback")
    if (length(idx_fallback) == 1) {
      ## If 'system' and 'fallback' are the only options, then use 'fallback' ...
      if (length(ncores) == 2 && "system" %in% names(ncores)) {
        ncores <- ncores[idx_fallback]
      } else {
        ## ... otherwise, ignore 'fallback'.
        ncores <- ncores[-idx_fallback]
      }
    }
    
    if (which == "min") {
      ## which.min() to preserve name
      ncores <- ncores[which.min(ncores)]
    } else if (which == "max") {
      ## which.max() to preserve name
      ncores <- ncores[which.max(ncores)]
    }
  }

  if (!is.null(constraints)) {
    if (constraints == "multicore") {
      ## SPECIAL: On some OSes such as Windows, multicore processing
      ## is not supported.  If so, we should override all values to
      ## to reflect that only a single core is available
      if (!supportsMulticore()) ncores[] <- 1L
    }
  }

  ## Sanity check
  stop_if_not(all(ncores >= 1L, na.rm = TRUE))

  ncores
} # availableCores()
