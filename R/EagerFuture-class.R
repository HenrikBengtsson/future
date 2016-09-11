#' An eager future is a future whose value will be resolved immediately
#'
#' @inheritParams UniprocessFuture-class
#'
#' @return An object of class \code{EagerFuture}.
#'
#' @seealso
#' To evaluate an expression using "eager future", see function
#' \code{\link{eager}()}.
#'
#' @export
#' @name EagerFuture-class
#' @keywords internal
EagerFuture <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, globals=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)

  ## Global objects
  assignToTarget <- (is.list(globals) || inherits(globals, "Globals"))
  gp <- getGlobalsAndPackages(expr, envir=envir, tweak=tweakExpression, globals=globals, resolve=TRUE)

  ## Assign?
  if (assignToTarget && length(gp) > 0) {
    target <- new.env(parent=envir)
    globalsT <- gp$globals
    for (name in names(globalsT)) {
      target[[name]] <- globalsT[[name]]
    }
    globalsT <- NULL
    envir <- target
  }
  gp <- NULL
  
  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, local=local, ...)
  structure(f, class=c("EagerFuture", class(f)))
}
