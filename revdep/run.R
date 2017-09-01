availableCores <- function() {
  getenv <- function(name) {
    as.integer(Sys.getenv(name, NA_character_))
  }
  getopt <- function(name) {
    as.integer(getOption(name, NA_integer_))
  }
  if (is.finite(n <- getopt("mc.cores") + 1L)) return(n)
  if (is.finite(n <- getopt("Ncpus") + 1L)) return(n)
  if (is.finite(n <- getenv("PBS_NUM_PPN"))) return(n)
  if (is.finite(n <- getenv("SLURM_CPUS_PER_TASK"))) return(n)
  if (is.finite(n <- getenv("NSLOTS"))) return(n)
  1L
}

revdep_framework <- Sys.getenv("_R_CHECK_REVDEP_", "devtools")
if (revdep_framework == "devtools") {
  library("devtools")
  revdep_check(bioconductor = TRUE, recursive = FALSE, threads = availableCores(), reset = FALSE)
  revdep_check_save_summary()
  revdep_check_print_problems()
} else if (revdep_framework == "revdepchecks") {
  library("revdepcheck")
  revdep_check(bioc = TRUE, num_workers = availableCores(), timeout = 30*60, quiet = FALSE)
  revdep_report_summary()
  revdep_report_problems()
} else {
  stop("Unknown revdep framework: ", revdep_framework)
}
