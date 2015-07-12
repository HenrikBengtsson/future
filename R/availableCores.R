#' Get number of available cores on current machine
#'
#' @param methods A character vector specifying how to infer the number
#' of available cores (and in what order).
#'
#' @return Return a positive integer equal or greater to one.
#'
#' @details
#' The following methods for inferring the number of cores are supported:
#' \itemize{
#'  \item \code{"PBS"} -
#'    Query Torque/PBS environment variable \code{PBS_NUM_PPN}.
#'    Depending on PBS system configuration, this \emph{resource} parameter
#'    may or may not default to one.  It can be specified when submitting
#'    a job as in, for instance, \code{qsub -l nodes=4:ppn=2}, which
#'    requests four nodes each with two cores.
#'  \item \code{"system"} -
#'    Query \code{\link[parallel]{detectCores}()}.
#' }
#'
#' @seealso \code{\link[parallel]{detectCores}()}
#'
#' @export
#' @importFrom parallel detectCores
#' @keywords internal
availableCores <- function(methods=getOption("availableCoresMethods", c("PBS", "system"))) {
  for (method in methods) {
    ncores <- NA_integer_
    if (method == "PBS") {
      ## Number of cores assigned by Torque/PBS?
      ncores <- as.integer(Sys.getenv("PBS_NUM_PPN", NA))
      if (is.finite(ncores) && ncores > 0L) break
    } else if (method == "system") {
      ## Number of cores available according to parallel::detectCores()
      ncores <- detectCores()
      if (is.finite(ncores) && ncores > 0L) break
    }
  }

  ## The default is to use a single core
  if (is.na(ncores)) ncores <- 1L

  ncores
}
