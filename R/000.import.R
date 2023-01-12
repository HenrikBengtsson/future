import_from <- function(name, mode = "function", default = NULL, package) {
  ns <- getNamespace(package)
  if (exists(name, mode = mode, envir = ns, inherits = FALSE)) {
    get(name, mode = mode, envir = ns, inherits = FALSE)
  } else if (!is.null(default)) {
    default
  } else {
    stopf("No such '%s' %s: %s()", package, mode, name)
  }
}

import_parallelly <- function(...) {
  import_from(..., package = "parallelly")
}
