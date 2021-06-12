## The RStudio Console does not support setup_strategy = "parallel"
## https://github.com/rstudio/rstudio/issues/6692#issuecomment-785346223
## Unless our R option is already set explicitly (or via the env var),
## be agile to how RStudio handles it for the 'parallel' package
## This bug has been fixed in R-devel r80472.
parallelly_disable_parallel_setup_if_needed <- function() {
  if (!is.null(getOption("parallelly.makeNodePSOCK.setup_strategy"))) return()

  ## We only need to disable 'parallel' setup for certain R versions
  rver <- getRversion()
  if (rver < "4.0.0" || rver > "4.2.0") return()
  if (rver == "4.2.0") {
    if (R.version[["status"]] != "Under development (unstable)") return()
    rev <- as.integer(R.version[["svn rev"]])
    if (length(rev) == 1L && is.finite(rev) && rev >= 80472) return()
  }
  
  ## We only need to disable 'parallel' setup if running in the RStudio Console
  if (Sys.getenv("RSTUDIO") != "1") return()
  if (nzchar(Sys.getenv("RSTUDIO_TERM"))) return()
  
  ns <- getNamespace("parallel")
  if (!exists("defaultClusterOptions", mode = "environment", envir = ns)) {
    return()
  }
  
  defaultClusterOptions <- get("defaultClusterOptions", mode = "environment", envir = ns)
  value <- defaultClusterOptions$setup_strategy
  if (!is.character(value)) return()

  ## OK, nothing has been set before, we're on an R version which has the
  ## bug, and we're running in the RStudio Console
  options(parallelly.makeNodePSOCK.setup_strategy = value)
}
