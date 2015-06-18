#' Create an multicore future whose value will be resolved asynchroneously in a parallel process
#'
#' An multicore future is a future that uses multicore evaluation,
#' which means that its \emph{value is computed and resolved in
#' parallel in another process}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param ... Not used.
#'
#' @return An \link{MulticoreFuture}.
#'
#' @example incl/multicore.R
#'
#' @details
#' Not all systems support multicore futures.  For instance,
#' it is not supported on Microsoft Windows.  Use
#' \code{\link{supportsMulticore}()} to check whether multicore
#' futures are supported or not.
#'
#' The preferred way to create an multicore future is not to call this function
#' directly, but to register it via \code{\link{plan}(multicore)} such that it
#' becomes the default mechanism for all futures.  After this
#' \code{\link{future}()} and \code{\link{\%<=\%}} will create
#' \emph{multicore futures}.
#'
#' @seealso
#' \code{\link{supportsMulticore}()} to check whether multicore
#' futures are supported or not.
#'
#' @export
multicore <- function(expr, envir=parent.frame(), substitute=TRUE, ...) {
  if (substitute) expr <- substitute(expr)
  future <- MulticoreFuture(expr=expr, envir=envir, substitute=FALSE)
  future <- run(future)
  future
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
supportsMulticore <- function() {
  ns <- getNamespace("parallel")
  exists("mcparallel", mode="function", envir=ns, inherits=FALSE)
}

