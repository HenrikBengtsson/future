#' Get the future of a future variable
#'
#' Get the future of a future variable that has been created directly
#' or indirectly via \code{\link{future}()}.
#'
#' @param var the variable.  If NULL, all futures in the
#' environment are returned.
#' @param envir the environment where to search from.
#' @param mustExist If TRUE and the variable does not exists, then
#' an informative error is thrown, otherwise NA is returned.
#' @param default the default value if future was not found.
#'
#' @return A \link{Future} (or NA).  If \code{var} is NULL, then a
#' named list of Future:s are returned.
#'
#' @example incl/futureOf.R
#'
#' @export
#' @importFrom listenv map parse_env_subset
futureOf <- function(var=NULL, envir=parent.frame(), mustExist=TRUE, default=NA_character_) {
  res <- default

  get_future <- function(target, mustExist=TRUE) {
    if (!target$exists) {
      msg <- sprintf("No such future variable: %s", target$code)
      if (mustExist) stop(msg, call.=FALSE)
      attr(res, "reason") <- msg
      return(res)
    }

    envir <- target$envir
    if (inherits(envir, "listenv")) {
      name <- map(envir)[target$idx]
    } else {
      name <- target$name
    }

    future_name <- sprintf(".future_%s", name)
    if (!exists(future_name, envir=envir, inherits=FALSE)) {
      msg <- sprintf("Future (%s) not found in %s %s: %s", sQuote(future_name), class(envir)[1], sQuote(environmentName(envir)), sQuote(target$code))
      if (mustExist) stop(msg, call.=FALSE)
      attr(res, "reason") <- msg
      return(res)
    }

    get(future_name, envir=envir, inherits=FALSE)
  } # get_future()

  expr <- substitute(var)

  ## Inspect all variables in environment?
  if (is.null(expr)) {
    vars <- ls(envir=envir, all.names=TRUE)
    vars <- grep("^.future_", vars, invert=TRUE, value=TRUE)
    res <- lapply(vars, FUN=function(var) {
      target <- parse_env_subset(var, envir=envir, substitute=FALSE)
      get_future(target, mustExist=FALSE)
    })
    names(res) <- vars
    keep <- sapply(res, FUN=inherits, "Future")
    res <- res[keep]
    return(res)
  }

  target <- parse_env_subset(expr, envir=envir, substitute=FALSE)
  get_future(target, mustExist=mustExist)
}
