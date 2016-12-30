#' Control lazy / eager evaluation for a future assignment
#'
#' @usage fassignment \%lazy\% value
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<-\% \{ expr \}}.
#' @param value If \code{TRUE}, the future is resolved using lazy evaluation, otherwise eager evaluation.
#'
#' @export
`%lazy%` <- function(fassignment, value) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)

  ## Temporarily set 'lazy' argument
  args <- getOption("future.disposable", list())
  args$lazy <- value
  options(future.disposable = args)

  eval(fassignment, envir=envir)
}
