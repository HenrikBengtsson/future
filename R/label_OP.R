#' Specify label for a future assignment
#'
#' @usage fassignment \%label\% label
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#' @inheritParams multiprocess
#'
#' @details
#' \code{a \%label\% b} is short for \code{a \%tweak\% list(label = b)}.
#'
#' @export
`%label%` <- function(fassignment, label) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)
  args <- list(fassignment, list(label=label))
  do.call(`%tweak%`, args=args, envir=envir)
}
