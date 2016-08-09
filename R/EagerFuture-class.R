#' An eager future is a future whose value will be resolved immediately
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param \dots Additional named elements of the future.
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

  ## Validate globals at this point in time?
  if (is.logical(globals)) {
    stopifnot(length(globals) == 1, !is.na(globals))
    if (globals) {
      getGlobalsAndPackages(expr, envir=envir, tweak=tweakExpression, resolve=TRUE, persistent=FALSE)
    }
  } else if (is.list(globals)) {
    if (length(globals) > 0) {
      names <- names(globals)
      stopifnot(!is.null(names), all(nchar(names) > 0))
      target <- new.env(parent=envir)
      for (name in names) {
        target[[name]] <- globals[[name]]
      }
      envir <- target
    }
  } else {
    stop("Unknown data type of argument 'globals': ", sQuote(mode(globals)))
  }

  f <- UniprocessFuture(expr=expr, envir=envir, substitute=FALSE, local=local, ...)
  structure(f, class=c("EagerFuture", class(f)))
}
