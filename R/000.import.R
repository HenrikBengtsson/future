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


## We are currently importing the following non-exported functions:
## * cluster futures:
##   - parallel:::defaultCluster()  ## non-critical / not really needed /
##                                  ## can be dropped in R (>= 3.5.0)
##   - parallel:::sendCall()        ## run()
##   - parallel:::recvResult()      ## value()
## * multicore futures:
##   - parallel:::selectChildren()  ## resolved()
##   - parallel:::rmChild()         ## value()
## As well as the following ones (because they are not exported on Windows):
## * multicore futures:
##   - parallel::mcparallel()       ## run()
##   - parallel::mccollect()        ## value()
if (packageVersion("parallelly") > "1.33.0") {
  importParallel <- import_parallelly("importParallel")
} else {
  importParallel <- local({
    ns <- NULL
    cache <- list()
    
    function(name = NULL) {
      res <- cache[[name]]
      if (is.null(res)) {
        ns <<- getNamespace("parallel")
  
        ## SPECIAL: parallel::getDefaultCluster() was added in R devel r73712
        ## (to become 3.5.0) on 2017-11-11.  The fallback in R (< 3.5.0) is
        ## to use parallel:::defaultCluster(). /HB 2017-11-11
        if (name == "getDefaultCluster") {
          if (!exists(name, mode = "function", envir = ns, inherits = FALSE)) {
            name <- "defaultCluster"
          }
        }
  
        if (!exists(name, mode = "function", envir = ns, inherits = FALSE)) {
          ## covr: skip=3
          msg <- sprintf("This type of future processing is not supported on this system (%s), because parallel:::%s() is not available", sQuote(.Platform$OS.type), name)
          mdebug(msg)
          stop(msg, call. = FALSE)
        }
  
        res <- get(name, mode = "function", envir = ns, inherits = FALSE)
  
        if (name %in% c("mccollect", "selectChildren") &&
            getRversion() >= "3.5.0" && getRversion() <= "3.5.1") {
          ## Suppress warnings produced by parallel::mccollect() and
          ## parallel::selectChildren() in R 3.5.0 and and R 3.5.1
          ## (https://github.com/HenrikBengtsson/future/issues/218), e.g.
          ##
          ##  "Warning in selectChildren(pids[!fin], -1) :
          ##   cannot wait for child 32193 as it does not exist"
          ##
          res_org <- res
          res <- function(...) suppressWarnings(res_org(...))
        }
        
        cache[[name]] <<- res
      }
      res
    }
  })
}
