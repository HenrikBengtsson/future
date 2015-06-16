#' A lazy future represents a future whose value will be resolved at the time when it is requested
#'
#' A lazy future is a future that uses lazy evaluation, which means
#' that its \emph{value is only computed and resolved at the time when the
#' value is requested}.  This means that the future will not be resolved
#' if the value is never requested.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param globals If TRUE, global objects are resolved at the point of
#' time when the future is created, otherwise they are resolved when
#' the future is resolved.
#' @param ... Not used.
#'
#' @return A \link{LazyFuture}.
#'
#' @example incl/lazy.R
#'
#' @details
#' Note that the "lazy future" strategy also applies to any global variables
#' used in the expression, i.e. if the value of a global variables changes
#' between the time point the lazy future was created and its acutally
#' resolvement, then the value will be based on the most recent value of
#' global variable (not the value at the time the future was created).
#' This is a special "feature" due to the "lazy" (delayed) evaluation of
#' this particular future.  Ideally, globals are resolved at the time when
#' the future is created.  See example for an illustration of this.
#'
#' This function can be registered as the default \link{future} evaluator,
#' i.e. \code{plan(lazy)}.
#'
#' @seealso Internally, \code{\link[base]{delayedAssign}()} is utilized to
#' create a "\emph{\link[base]{promise}}", which hold the future's value.
#'
#' @importFrom globals globalsOf packagesOf cleanup
#' @export
lazy <- function(expr, envir=parent.frame(), substitute=TRUE, globals=TRUE, local=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  globals <- as.logical(globals)
  local <- as.logical(local)
  if (!local && globals) {
    stop("Argument 'globals' must be FALSE whenever 'local' is FALSE. Lazy future evaluation in the calling environment (local=FALSE) can only be done if global objects are resolved at the same time (globals=FALSE).")
  }


  ## Evaluate in "local" environment?
  if (local || globals) {
    envir <- new.env(parent=envir)
  }


  ## Resolve futures at this point in time?
  if (globals) {
    globals <- globalsOf(expr, envir=envir, tweak=tweakExpression,
                         primitive=FALSE, base=FALSE, unlist=TRUE)

    if (length(globals) > 0L) {
      ## Append packages associated with globals
      pkgs <- packagesOf(globals)

      ## Drop all globals which are already part of one of
      ## the packages in 'pkgs'.  They will be available
      ## when those packages are attached.
      pkgsG <- sapply(globals, FUN=function(obj) {
        environmentName(environment(obj))
      })
      keep <- !is.element(pkgsG, pkgs)
      globals <- globals[keep]
      pkgsG <- keep <- NULL ## Not needed anymore

      ## Now drop globals that are primitive functions or
      ## that are part of the base packages, which now are
      ## part of 'pkgs' if needed.
      globals <- cleanup(globals)
    }

    ## Inject global objects?
    for (name in names(globals)) {
      envir[[name]] <- globals[[name]]
    }
    globals <- NULL ## Not needed anymore
  }


  future <- LazyFuture()
  delayedAssign("value", eval(expr, envir=envir), assign.env=future)

  future
}
