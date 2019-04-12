#' Check whether multicore/forked processing is supported or not
#'
#' Multicore futures require an operating system that supports \emph{forked}
#' processing.  Operating systems such as Unix and macOS supports forking,
#' whereas Microsoft Windows does not.
#'
#' @return TRUE if forked processing is supported and not disabled,
#'         otherwise FALSE.
#'
#' @section Support for process forking:
#' The Microsoft Windows operating system does not support processes forking.
#' Unix-like operating system such as Linux and macOS support forking.
#' For some R environments it is considered unsafe to perform parallel
#' processing based on \emph{forking}. For example, \href{https://github.com/rstudio/rstudio/issues/2597#issuecomment-482187011}{RStudio Inc. recommends
#' against using forked processing when running R from within the RStudio
#' software}.  Because of this, the future ecosystem disables forked
#' processing by default when it detects it runs \R from within RStudio
#' despite running on a Unix-like operating system.
#'
#' @section Enable or disable forked processing:
#' It is possible to disable forked processing for futures by setting \R
#' option \code{future.fork.enable} to \code{FALSE}.  Alternatively, one can
#' set environment variable \code{R_FUTURE_FORK_ENABLE} to \code{false}.
#' This will cause \code{plan(multicore)} to work as \code{plan(sequential)},
#' and \code{plan(multiprocess)} to work as \code{plan(multisession)}.
#' Analogously, it is possible to override disabled forking by setting one
#' of these to \code{TRUE}.
#'
#' @seealso
#' To use multicore futures, use \code{\link{plan}(\link{multicore})}.
#' 
#' @export
#' @keywords internal
supportsMulticore <- local({
  supportedByOS <- NA
  function() {
    if (is.na(supportedByOS)) {
      ns <- getNamespace("parallel")
      supportedByOS <<- exists("mcparallel", mode = "function", envir = ns,
                               inherits = FALSE)
    }

    ## Forked processing is not supported by the OS?
    if (!supportedByOS) return(FALSE)

    ## Is forked processing disabled via R settings?
    value <- getOption("future.fork.enable", Sys.getenv("R_FUTURE_FORK_ENABLE", "NA"))
    stop_if_not(length(value) == 1L)
    value <- as.logical(value)
    if (!is.na(value)) return(value)

    ## Try to decide whether forked processing is safe or not

    ## Forked processing should be avoided within RStudio
    ## [https://github.com/rstudio/rstudio/issues/2597#issuecomment-482187011]
    is_rstudio <- (Sys.getenv("RSTUDIO") == "1")
    if (is_rstudio) return(FALSE)
    
    TRUE
  }
})
