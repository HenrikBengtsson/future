## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## DEMOTED (to be DEPRECATED)
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#' @export
values <- function(...) UseMethod("values")

#' @export
values.Future <- value.Future

#' @export
values.list <- value.list

#' @export
values.environment <- value.environment

#' @export
values.listenv <- value.listenv
