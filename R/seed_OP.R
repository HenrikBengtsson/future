#' Set random seed for future assignment
#'
#' @usage fassignment \%seed\% seed
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#' @inheritParams multiprocess
#'
#' @export
`%seed%` <- function(fassignment, seed) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)

  ## Temporarily set 'seed' argument
  args <- getOption("future.disposable", list())
  args["seed"] <- list(seed)
  options(future.disposable = args)

  eval(fassignment, envir = envir)
}
