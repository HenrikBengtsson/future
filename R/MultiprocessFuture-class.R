#' An multiprocess future is a future whose value will be resolved asynchroneously in a parallel process
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{MultiprocessFuture}.
#'
#' @seealso
#' To evaluate an expression using "multiprocess future", see function
#' \code{\link{multiprocess}()}.
#'
#' @export
#' @name MultiprocessFuture-class
#' @keywords internal
MultiprocessFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, ...) {
  if (substitute) expr <- substitute(expr)

  f <- Future(expr=expr, envir=envir, substitute=FALSE, ...)
  structure(f, class=c("MultiprocessFuture", class(f)))
}



#' @export
getExpression.MultiprocessFuture <- function(future, ...) {
  strategies <- plan("list")
  if (length(strategies) == 1L) {
    return(NextMethod("getExpression"))
  }

  ## Identify package
  pkgs <- lapply(strategies, FUN=environment)
  pkgs <- lapply(pkgs, FUN=environmentName)
  pkgs <- unique(unlist(pkgs))

  ## Sanity check by verifying packages can be loaded already here
  ## If there is somethings wrong in 'pkgs', we get the error
  ## already before launching the future.
  for (pkg in pkgs) loadNamespace(pkg)

  enter <- bquote({
    ## covr: skip=5
    .future.mc.cores.old <- getOption("mc.cores")
    options(mc.cores=0L)
    for (pkg in .(pkgs)) library(pkg, character.only=TRUE)
    oplans <- future::plan("list")
    future::plan(.(strategies[-1]))
  })

  exit <- bquote({
    ## covr: skip=2
    options(mc.cores=.future.mc.cores.old)
    future::plan(.(strategies))
  })

  makeExpression(expr=future$expr, enter=enter, exit=exit)
} ## getExpression()
