#' Create a multicore future whose value will be resolved asynchroneously in a parallel process
#'
#' A multicore future is a future that uses multicore evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done and from which globals are obtained.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param maxCores The maximum number of CPU cores that can
#' be active at the same time before blocking.
#' @param ... Not used.
#'
#' @return A \link{MulticoreFuture} (or a \link{EagerFuture}
#' if multicore futures are not supported).
#'
#' @example incl/multicore.R
#'
#' @details
#' This function will block if all CPU cores are occupied and
#' will be unblocked as soon as one of the already running
#' multicore futures is resolved.  For the total number of
#' CPU cores availble to the current R process, see
#' \code{\link{availableCores}()}.
#'
#' Not all systems support multicore futures.  For instance,
#' it is not supported on Microsoft Windows.  Trying to create
#' multicore futures on non-supported systems will silently
#' fall back to using \link{eager} futures, which effectively
#' corresponds to a multicore future that can handle one parallel
#' process (the current one) before blocking.
#'
#' The preferred way to create an multicore future is not to call
#' this function directly, but to register it via
#' \code{\link{plan}(multicore)} such that it becomes the default
#' mechanism for all futures.  After this \code{\link{future}()}
#' and \code{\link{\%<=\%}} will create \emph{multicore futures}.
#'
#' @seealso
#' \code{\link{availableCores}() > 1L} to check whether multicore
#' futures are supported or not.
#'
#' @export
multicore <- function(expr, envir=parent.frame(), substitute=TRUE, maxCores=availableCores(), ...) {
  if (substitute) expr <- substitute(expr)
  maxCores <- as.integer(maxCores)
  stopifnot(is.finite(maxCores), maxCores >= 1L)

  ## Fall back to lazy futures, iff multicore is not suported
  if (maxCores == 1L) {
    ## covr: skip=1
    return(eager(expr, envir=envir, substitute=FALSE, local=TRUE))
  }

  oopts <- options(mc.cores=maxCores)
  on.exit(options(oopts))

  future <- MulticoreFuture(expr=expr, envir=envir, substitute=FALSE)
  run(future)
}


#' Check whether multicore processing is supported or not
#'
#' Multicore futures are only supported on systems supporting
#' multicore processing.  R supports this on most systems,
#' except on the Microsoft Windows.
#'
#' @return TRUE if multicore processing is supported, otherwise FALSE.
#'
#' @seealso
#' To use multicore futures, use \code{\link{plan}(\link{multicore})}.
#'
#' @export
supportsMulticore <- local({
  supported <- NA
  function() {
    if (is.na(supported)) {
      ns <- getNamespace("parallel")
      supported <<- exists("mcparallel", mode="function", envir=ns, inherits=FALSE)
    }
    supported
  }
})

