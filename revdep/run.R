library("revdepcheck")
options(warn = 1L)

availableCores <- function() {
  getenv <- function(name) as.integer(Sys.getenv(name, NA_character_))
  getopt <- function(name) as.integer(getOption(name, NA_integer_))
  if (is.finite(n <- getopt("mc.cores") + 1L)) return(n)
  if (is.finite(n <- getopt("Ncpus") + 1L)) return(n)
  if (is.finite(n <- getenv("PBS_NUM_PPN"))) return(n)
  if (is.finite(n <- getenv("SLURM_CPUS_PER_TASK"))) return(n)
  if (is.finite(n <- getenv("NSLOTS"))) return(n)
  1L
}

## WORKAROUND: Remove checked pkgs that use file links, which otherwise
## produce warnings which are promoted to errors by revdepcheck.
unlink("revdep/checks/aroma.affymetrix", recursive = TRUE)

revdep_check(bioc = TRUE, num_workers = availableCores(),
             timeout = as.difftime(30, units = "mins"), quiet = FALSE)
