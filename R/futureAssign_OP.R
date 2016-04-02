#' @importFrom listenv get_variable parse_env_subset
futureAssignInternal <- function(target, expr, envir=parent.frame(), substitute=FALSE) {
  target <- parse_env_subset(target, envir=envir, substitute=substitute)
  assign.env <- target$envir

  name <- target$name
  if (inherits(target$envir, "listenv")) {
    if (target$exists) {
      name <- get_variable(target$envir, target$idx, mustExist=TRUE, create=FALSE)
    } else {
      if (!is.na(name) && nzchar(name)) {
        name <- get_variable(target$envir, name, mustExist=FALSE, create=TRUE)
      } else if (all(is.finite(target$idx))) {
        name <- get_variable(target$envir, target$idx, mustExist=FALSE, create=TRUE)
      } else {
        msg <- "INTERNAL ERROR: Zero length variable name and unknown index."
        mdebug(msg)
        stop(msg)
      }
    }
  }

  futureAssign(name, expr, envir=envir, assign.env=assign.env, substitute=FALSE)
} # futureAssignInternal()


`%<-%` <- `%<=%` <- function(x, value) {
  target <- substitute(x)
  expr <- substitute(value)
  envir <- parent.frame(1)
  futureAssignInternal(target, expr, envir=envir, substitute=FALSE)
}

`%->%` <- `%=>%` <- function(value, x) {
  target <- substitute(x)
  expr <- substitute(value)
  envir <- parent.frame(1)
  futureAssignInternal(target, expr, envir=envir, substitute=FALSE)
}
