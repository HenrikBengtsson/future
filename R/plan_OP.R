#' Evaluate a future using a specific plan
#'
#' @usage x %<=% { expr } %plan% strategy
#'
#' @export
`%plan%` <- function(x, y) {
  lhs <- substitute(x)
  strategy <- substitute(y)
  envir <- parent.frame(1)

  ## Temporary use a different plan
  oplan <- plan()
  on.exit(plan(oplan, substitute=FALSE))
  plan(strategy, substitute=FALSE)

  eval(lhs, envir=envir)
}
