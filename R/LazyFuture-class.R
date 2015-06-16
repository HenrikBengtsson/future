#' A lazy future is a future whose value will be resolved at the time when it is requested
#'
#' @param object An R \link[base]{environment}.
#' @param ... Not used.
#'
#' @return An object of class \code{LazyFuture}.
#'
#' @seealso
#' To evaluate an expression using "lazy future", see function
#' \code{\link{lazy}()}.
#'
#' @export
#' @name LazyFuture-class
#' @keywords internal
LazyFuture <- function(object=new.env(parent=emptyenv()), ...) {
  if (!is.environment(object)) {
    stop(sprintf("Argument 'object' is not an environment: ", class(object)))
  }
  Future(structure(object, class=c("LazyFuture", class(object))))
}


#' @export
value.LazyFuture <- function(future, onError=c("signal", "return"), ...) {
  onError <- match.arg(onError)

  if (onError == "signal") {
    value <- suppressWarnings({
      get("value", envir=future, inherits=FALSE)
    })
  } else {
    value <- tryCatch({
      suppressWarnings({
        get("value", envir=future, inherits=FALSE)
      })
    }, simpleError = function(ex) {
      ex
    })
  }

  value
}

#' @export
resolved.LazyFuture <- function(future, ...) {
  value(future, onError="return")
  TRUE
}
