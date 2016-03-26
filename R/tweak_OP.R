#' Temporarily tweaks the arguments of the current strategy
#'
#' @usage fassignment \%tweak\% tweaks
#'
#' @param fassignment The future assignment, e.g.
#'        \code{x \%<=\% \{ expr \}}.
#' @param tweaks A named list (or vector) with arguments that
#' should be changed relative to the current strategy.
#'
#' @export
`%tweak%` <- function(fassignment, tweaks) {
  fassignment <- substitute(fassignment)
  envir <- parent.frame(1)
  stopifnot(is.vector(tweaks))
  tweaks <- as.list(tweaks)
  stopifnot(!is.null(names(tweaks)))

  ## Temporarily use a different plan
  oplan <- plan("list")
  on.exit(plan(oplan, substitute=FALSE, .call=NULL))

  ## Tweak current strategy and apply
  plans <- oplan
  args <- c(list(plans[[1]], penvir=envir), tweaks)
  plans[[1]] <- do.call(tweak, args=args)
  plan(plans, substitute=FALSE, .call=NULL)

  eval(fassignment, envir=envir)
}
