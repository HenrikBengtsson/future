#' Specify globals for a future assignment
#'
#' @usage fassignment \%globals\% globals
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#' @inheritParams multiprocess
#'
#' @export
`%globals%` <- function(fassignment, globals) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)

  ## Temporarily set 'globals' argument
  args <- getOption("future.disposable", list())
  args["globals"] <- list(globals)
  options(future.disposable = args)

  eval(fassignment, envir = envir)
}
