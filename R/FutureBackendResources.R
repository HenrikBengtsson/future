#' Creates a backend resource object
#'
#' @return
#' Returns an environment of class `FutureBackendResources`.
#' 
#' @keywords internal
FutureBackendResources <- local({
  make_env <- function(expr, envir = parent.frame()) {
    expr <- substitute(expr)
    env <- new.env(parent = envir)
    eval(expr, envir = env, enclos = baseenv())
    env
  }

  function() {
    this <- environment()
    this$hostname <- Sys.info()[["nodename"]]
    this$pwd <- getwd()
    this$r_version <- getRversion()


    ## ======================================================================
    ## Test functions:
    ## These functions can be evaluated on the worker just before evaluating
    ## the future expression.  If the resource specifications are not met,
    ## this is the last defense preventing us from continuing.
    ##
    ## Should return either TRUE or FALSE. Everything else is an error.
    ## ... or should we make them assert functions, that returns either TRUE
    ## or an ResourceNotSupportedError? The advantage with the latter is that
    ## the error can provide an informative message
    ## ======================================================================
    this$tests <- make_env({
      localhost <- function() {
        (Sys.info()[["nodename"]] == this$hostname)
      }
      
      host <- function(hostnames) {
        hostnames[hostnames %in% c("localhost", "127.0.0.1")] <- this$hostname
        Sys.info()[["nodename"]] %in% hostnames
      }
      
      fork <- function() {
        parallelly::isForkedChild()
      }
      
      rng <- function(kind = "L'Ecuyer-CMRG") {
        if (kind == "L'Ecuyer-CMRG") return(TRUE)
        FALSE
      }
      
      r_version <- function(min = 0, max = .Machine$integer.max) {
        v <- getRversion()
        (v >= min && v <= max)
      }
      
      package <- function(packages = character(0L)) {
        for (pkg in packages) {
          pd <- suppressWarnings(utils::packageDescription(pkg))
          if (is.logical(pd) && is.na(pd)) return(FALSE)
        }
        TRUE
      }
      
      package_version <- function(package, min = 0, max = .Machine$integer.max) {
        v <- tryCatch(packageVersion(package), error = identity)
        if (inherits(v, "error")) return(FALSE)
        v >= min && v <= max
      }
      
      capability <- function(what = character(0L)) {
        res <- base::capabilities()[what]
        if (any(res)) return(FALSE)
        all(res)
      }
      
      directory <- function(paths = character(0L)) {
        all(utils::file_test("-d", paths))
      }
      
      file <- function(pathnames = character(0L)) {
        all(utils::file_test("-f", pathnames))
      }
    }) ## 'tests'
    
  
  
    ## ======================================================================
    ## Providing functions:
    ##
    ## These functions exists for the "scheduler" to query the parallel
    ## backends on their capabilities.  If the registered parallel backends
    ## can support the resources requested, then we will always fall back to
    ## the sequential backend in the current R session.  If that does not
    ## support the resources, then a FutureError will be thrown.
    ##
    ## If a future backend does not support querying, we will fall back to
    ## trial and error, i.e. we'll try to launch the future, and check the
    ## results for the below assertion functions.  If we get an
    ## ResourceNotSupportedError back, then we reset the future and try
    ## another registered backend.  After some number attempts, we will
    ## give up and fall back to try with the sequential backend.
    ##
    ## In a future version of future, we will implement a FutureBackend
    ## class that supports queries of resources, check number of workers,
    ## etc. This will allow us to have multiple FutureBackend:s registered,
    ## instead of a fixed one as today.
    ## ======================================================================
    this$provides <- new.env(parent = this)
  
    ## Use 'tests' by default
    for (name in names(this[["tests"]])) {
      this$provides[[name]] <- this$tests[[name]]
    }
        
  
    this$can_provide <- function(expr, substitute = TRUE) {
      if (substitute) expr <- substitute(expr)
      res <- eval(expr, envir = this[["provides"]])
      stopifnot(is.logical(res), length(res) == 1L,!is.na(res))
      res
    }
  
    this$test <- function(expr, substitute = TRUE) {
      if (substitute) expr <- substitute(expr)
      res <- eval(expr, envir = this[["tests"]])
      stopifnot(is.logical(res), length(res) == 1L,!is.na(res))
      res
    }
    
    this$assert <- function(expr, substitute = TRUE) {
      if (substitute) expr <- substitute(expr)
      res <- this$test(expr, substitute = FALSE)
      if (res) return(invisible(TRUE))
      ex <- simpleError(sprintf("One or more of the resources are not met: %s", paste(deparse(expr), collapse = "; ")))
      class(ex) <- c("ResourceNotSupported", class(ex))
      stop(ex)
    }
  
    class(this) <- c("FutureBackendResources", class(this))
    this
  }
}) ## FutureBackendResources()


#' @export
print.FutureBackendResources <- function(x, ...) {
  s <- c(sprintf("%s:", class(x)[1]))
  for (name in c("hostname", "pwd", "r_version")) {
    s <- c(s, sprintf("- %s: %s", name, sQuote(as.character(x[[name]]))))
  }
  s <- c(s, "")
  s <- paste(s, collapse = "\n")
  cat(s)
  invisible(x)
}
