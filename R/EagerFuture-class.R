#' An eager future is a future whose value will be resolved immediately
#'
#' @param object An R \link[base]{environment}.
#' @param ... Not used.
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
EagerFuture <- function(object=new.env(parent=emptyenv()), ...) {
  if (!is.environment(object)) {
    stop(sprintf("Argument 'object' is not an environment: ", class(object)))
  }
  Future(structure(object, class=c("EagerFuture", class(object))))
}


#' @export
value.EagerFuture <- function(future, ...) {
  ## NOTE: Because the expression of an eager future is evaluated
  ##       at the same time the future is created (and before it is
  ##       returned), the returned future will:
  ##       (a) always be resolved, and
  ##       (b) it's value can never throw an error (because then the
  ##           future would never have created in the first place)
  get("value", envir=future, inherits=FALSE)
}


#' @export
resolved.EagerFuture <- function(future, ...) {
  TRUE
}
