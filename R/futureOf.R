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
#' @param drop if TRUE and \code{var} is NULL, then returned list
#' only contains futures, otherwise also \code{default} values.
#'
#' @return A \link{Future} (or \code{default}).
#' If \code{var} is NULL, then a named list of Future:s are returned.
#'
#' @example incl/futureOf.R
#'
#' @export
#' @importFrom listenv map parse_env_subset
futureOf <- function(var=NULL, envir=parent.frame(), mustExist=TRUE, default=NA, drop=FALSE) {
  ## Local functions
  get_future <- function(target, mustExist=TRUE, default=NA) {
    res <- default

    if (!target$exists) {
      msg <- sprintf("No such future variable: %s", target$code)
      if (mustExist) stop(msg, call.=FALSE)
      attr(res, "reason") <- msg
      return(res)
    }

    envir <- target$envir
    if (inherits(envir, "listenv")) {
      map <- map(envir)
      name <- map[target$idx]
    } else {
      name <- target$name
    }

    future_name <- sprintf(".future_%s", name)
    if (!exists(future_name, envir=envir, inherits=FALSE)) {
      envirName <- environmentName(envir)
      if (!nzchar(envirName)) envirName <- "<noname>"
      msg <- sprintf("Future (%s) not found in %s %s: %s", sQuote(future_name), class(envir)[1], sQuote(envirName), sQuote(target$code))
      if (mustExist) stop(msg, call.=FALSE)
      attr(res, "reason") <- msg
      return(res)
    }

    get(future_name, envir=envir, inherits=FALSE)
  } # get_future()

  ## Argument 'expr':
  expr <- substitute(var)


  ## Inspect by expression?
  if (!is.null(expr)) {
    target <- parse_env_subset(expr, envir=envir, substitute=FALSE)
    future <- get_future(target, mustExist=mustExist)
    return(future)
  }


  ## Otherwise, inspect all variables in environment
 if (inherits(envir, "listenv")) {
    map <- map(envir)
    res <- list()
    length(res) <- length(map)
    names(res) <- names(map)

    for (idx in seq_along(res)) {
      target <- parse_env_subset(idx, envir=envir, substitute=FALSE)
      future <- get_future(target, mustExist=FALSE, default=default)
      if (!is.null(future) || !is.atomic(future) || !is.na(future)) {
        res[[idx]] <- future
      }
    }
  } else {
    vars <- ls(envir=envir, all.names=TRUE)
    vars <- grep("^.future_", vars, invert=TRUE, value=TRUE)
    res <- lapply(vars, FUN=function(var) {
      target <- parse_env_subset(var, envir=envir, substitute=FALSE)
      get_future(target, mustExist=FALSE, default=default)
    })
    names(res) <- vars
  }

  ## Keep only futures?
  if (drop && length(res) > 0) {
    keep <- sapply(res, FUN=inherits, "Future")
    res <- res[keep]
  }

  res
}
