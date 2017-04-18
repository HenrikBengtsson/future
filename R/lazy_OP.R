#' Control lazy / eager evaluation for a future assignment
#'
#' @usage fassignment \%lazy\% lazy
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#' @inheritParams multiprocess
#'
#' @export
`%lazy%` <- function(fassignment, lazy) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)

  ## Temporarily set 'lazy' argument
  args <- getOption("future.disposable", list())
  args["lazy"] <- list(lazy)
  options(future.disposable = args)

  eval(fassignment, envir = envir)
}
