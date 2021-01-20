## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## DEPRECATED
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
#' @export
values <- function(...) {
  .Deprecated(msg = "values() is deprecated in future (>= 1.20.0). Instead, use values().", package = .packageName)
  value(...)
}
