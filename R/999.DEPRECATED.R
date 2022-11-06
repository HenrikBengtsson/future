## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## DEPRECATED & DEFUNCT
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#' @rdname sequential
#' @export
transparent <- function(...) {
  .Defunct(msg = "Transparent futures are defunct. Use plan(sequential, split = TRUE) instead")
}
class(transparent) <- c("transparent", "sequential", "uniprocess", "future", "function")


#' @rdname UniprocessFuture-class
#' @export
TransparentFuture <- function(...) {
  .Defunct(msg = "Transparent futures are defunct. Use plan(sequential, split = TRUE) instead")
}
