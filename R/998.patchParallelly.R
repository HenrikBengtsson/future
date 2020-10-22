## https://github.com/HenrikBengtsson/parallelly/issues/23
patchParallelly <- function() {
  ns <- getNamespace("parallelly")
  fcn <- get("session_info", mode = "function", envir = ns)
  ## Already patched?
  if (!is.null(attr(fcn, "patched"))) return(invisible(fcn))

  formals(fcn)$pkgs <- FALSE
  attr(fcn, "patched") <- TRUE

  base:::unlockBinding("session_info", env = ns)
  assign("session_info", fcn, envir = ns)
  base:::lockBinding("session_info", env = ns)
  
  invisible(fcn)
}
