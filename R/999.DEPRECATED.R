## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## DEPRECATED & DEFUNCT
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#' @export
values <- function(...) {
  .Defunct(msg = "values() is defunct in future (>= 1.20.0). Use value() instead.", package = .packageName)
}


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
