#' Specify globals for a future assignment
#'
#' @usage fassignment \%globals\% globals
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#' @param globals A named list specifying globals to be used.
#'
#' @details
#' `a %globals% b` is short for `a %tweak% list(globals = b)`.
#'
#' @export
`%globals%` <- function(fassignment, globals) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)
  args <- list(fassignment, list(globals=globals))
  do.call(`%tweak%`, args=args, envir=envir)
}
