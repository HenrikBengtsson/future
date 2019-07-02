#' Check whether multicore/forked processing is supported or not
#'
#' Multicore futures require an operating system that supports \emph{forked}
#' processing.  Operating systems such as Unix and macOS supports forking,
#' whereas Microsoft Windows does not.
#'
#' @param \dots Internal usage only.
#'
#' @return TRUE if forked processing is supported and not disabled,
#'         otherwise FALSE.
#'
#' @section Support for process forking:
#' The Microsoft Windows operating system does not support processes forking.
#' Unix-like operating system such as Linux and macOS support forking.
#'
#' For some R environments it is considered unstable to perform parallel
#' processing based on \emph{forking}. Because of this, the future ecosystem
#' disables forked processing by default when it detects that \R runs from
#' environment that is known to be unstable for forked processing, despite
#' the underlying operating system supported it.
#' This is for example the case when using RStudio, cf.
#' \href{https://github.com/rstudio/rstudio/issues/2597#issuecomment-482187011}{RStudio Inc. recommends against using forked processing when running R from within the RStudio software}.
#' A warning will be produced informing the user about this the first time
#' 'multicore' or 'multiprocess' futures are used in the \R session.
#' This warning can be disabled by setting R option
#' \option{future.supportsMulticore.unstable}, or environment variable
#' \env{R_FUTURE_SUPPORTSMULTICORE_UNSTABLE} to \code{"quiet"}.
#'
#' @section Enable or disable forked processing:
#' It is possible to disable forked processing for futures by setting \R
#' option \option{future.fork.enable} to \code{FALSE}.  Alternatively, one can
#' set environment variable \env{R_FUTURE_FORK_ENABLE} to \code{false}.
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
  function(...) {
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

    ## Forked processing should be avoided when R run from RStudio
    if (!supportsMulticoreAndRStudio(...)) return(FALSE)
    
    TRUE
  }
})


supportsMulticoreAndRStudio <- local({
  alreadyWarned <- FALSE
  
  function(warn = FALSE) {
   ## Forked processing should be avoided within RStudio
   ## [https://github.com/rstudio/rstudio/issues/2597#issuecomment-482187011]
   is_rstudio <- (Sys.getenv("RSTUDIO") == "1")
   if (!is_rstudio) return(TRUE)
  
   if (!warn || alreadyWarned) return(FALSE)
   
   action <- getOption("future.supportsMulticore.unstable", Sys.getenv("R_FUTURE_SUPPORTSMULTICORE_UNSTABLE", "warn"))
   if (action == "warn") {
     warning(FutureWarning("[ONE-TIME WARNING] Forked processing ('multicore') is disabled in future (>= 1.13.0) when running R from RStudio, because it is considered unstable. Because of this, plan(\"multicore\") will fall back to plan(\"sequential\"), and plan(\"multiprocess\") will fall back to plan(\"multisession\") - not plan(\"multicore\") as in the past. For more details, how to control forked processing or not, and how to silence this warning in future R sessions, see ?future::supportsMulticore"))
   }

   alreadyWarned <<- TRUE

   FALSE
  }
})
