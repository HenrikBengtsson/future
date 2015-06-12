#' Evaluate a future using a specific plan
#'
#' @usage x %<=% { expr } %plan% strategy
#'
#' @export
`%plan%` <- function(x, y) {
  lhs <- substitute(x)
  strategy <- y
  envir <- parent.frame(1)

  ## Temporary use a different plan
  oplan <- plan()
  on.exit(plan(oplan))
  plan(strategy)

  eval(lhs, envir=envir)
}
