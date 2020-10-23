isFALSE <- function(x) {
  is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

isNA <- function(x) {
  is.logical(x) && length(x) == 1L && is.na(x)
}

assert_no_positional_args_but_first <- function(call = sys.call(sys.parent())) {
  ast <- as.list(call)
  if (length(ast) <= 2L) return()
  names <- names(ast[-(1:2)])
  if (is.null(names) || any(names == "")) {
    stop(sprintf("Function %s() requires that all arguments beyond the first one are passed by name and not by position: %s", as.character(call[[1L]]), deparse(call, width.cutoff = 100L)))
  }
}

stop_if_not <- function(...) {
  res <- list(...)
  for (ii in 1L:length(res)) {
    res_ii <- .subset2(res, ii)
    if (length(res_ii) != 1L || is.na(res_ii) || !res_ii) {
        mc <- match.call()
        call <- deparse(mc[[ii + 1]], width.cutoff = 60L)
        if (length(call) > 1L) call <- paste(call[1L], "....")
        stop(sprintf("%s is not TRUE", sQuote(call)),
             call. = FALSE, domain = NA)
    }
  }
  
  NULL
}

## From R.utils 2.0.2 (2015-05-23)
hpaste <- function(..., sep = "", collapse = ", ", lastCollapse = NULL, maxHead = if (missing(lastCollapse)) 3 else Inf, maxTail = if (is.finite(maxHead)) 1 else Inf, abbreviate = "...") {
  if (is.null(lastCollapse)) lastCollapse <- collapse

  # Build vector 'x'
  x <- paste(..., sep = sep)
  n <- length(x)

  # Nothing todo?
  if (n == 0) return(x)
  if (is.null(collapse)) return(x)

  # Abbreviate?
  if (n > maxHead + maxTail + 1) {
    head <- x[seq_len(maxHead)]
    tail <- rev(rev(x)[seq_len(maxTail)])
    x <- c(head, abbreviate, tail)
    n <- length(x)
  }

  if (!is.null(collapse) && n > 1) {
    if (lastCollapse == collapse) {
      x <- paste(x, collapse = collapse)
    } else {
      xT <- paste(x[1:(n-1)], collapse = collapse)
      x <- paste(xT, x[n], sep = lastCollapse)
    }
  }

  x
} # hpaste()


trim <- function(s) {
  sub("[\t\n\f\r ]+$", "", sub("^[\t\n\f\r ]+", "", s))
} # trim()


hexpr <- function(expr, trim = TRUE, collapse = "; ", maxHead = 6L, maxTail = 3L, ...) {
  code <- deparse(expr)
  if (trim) code <- trim(code)
  hpaste(code, collapse = collapse, maxHead = maxHead, maxTail = maxTail, ...)
} # hexpr()


## From R.filesets
asIEC <- function(size, digits = 2L) {
  if (length(size) > 1L) return(sapply(size, FUN = asIEC, digits = digits))
  units <- c("bytes", "KiB", "MiB", "GiB", "TiB", "PiB", "EiB", "ZiB", "YiB")
  for (unit in units) {
    if (size < 1000) break;
    size <- size / 1024
  }

  if (unit == "bytes") {
    fmt <- sprintf("%%.0f %s", unit)
  } else {
    fmt <- sprintf("%%.%df %s", digits, unit)
  }
  sprintf(fmt, size)
} # asIEC()

#' @importFrom utils capture.output
envname <- function(env) {
  if (!is.environment(env)) return(NA_character_)
  name <- environmentName(env)
  if (name == "") {
    class <- class(env)
    if (identical(class, "environment")) {
      ## e.g. new.env()
      name <- capture.output(print(env))
    } else {
      ## It might be that 'env' is on a class that extends 'environment',
      ## e.g. R.oo::Object() or R6::R6Class().
      ## IMPORTANT: The unset class must be temporary, because changing
      ## the class of an environment will
      name <- local({
        on.exit(class(env) <- class)
        class(env) <- NULL
        capture.output(print(env))
      })	
    }
    if (length(name) > 1L) name <- name[1]
    name <- gsub("(.*: |>)", "", name)
  } else {
    ## e.g. globals:::where("plan")
    name <- gsub("package:", "", name, fixed = TRUE)
  }
  name
}

now <- function(x = Sys.time(), format = "[%H:%M:%OS3] ") {
  ## format(x, format = format) ## slower
  format(as.POSIXlt(x, tz = ""), format = format)
}

mdebug <- function(..., debug = getOption("future.debug", FALSE)) {
  if (!debug) return()
  message(now(), ...)
}

mdebugf <- function(..., appendLF = TRUE,
                    debug = getOption("future.debug", FALSE)) {
  if (!debug) return()
  message(now(), sprintf(...), appendLF = appendLF)
}

#' @importFrom utils capture.output
mprint <- function(..., appendLF = TRUE, debug = getOption("future.debug", FALSE)) {
  if (!debug) return()
  message(paste(now(), capture.output(print(...)), sep = "", collapse = "\n"), appendLF = appendLF)
}

#' @importFrom utils capture.output str
mstr <- function(..., appendLF = TRUE, debug = getOption("future.debug", FALSE)) {
  if (!debug) return()
  message(paste(now(), capture.output(str(...)), sep = "", collapse = "\n"), appendLF = appendLF)
}


## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Used by run() for ClusterFuture.
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Because these functions are exported, we want to keep their
## environment() as small as possible, which is why we use local().
## Without, the environment would be that of the package itself
## and all of the package content would be exported.

## Removes all variables in the global environment.
grmall <- local(function(envir = .GlobalEnv) {
  vars <- ls(envir = envir, all.names = TRUE)
  rm(list = vars, envir = envir, inherits = FALSE)
  ## Return a value identifiable for troubleshooting purposes
  invisible("future-grmall")
})

## Assigns a value to the global environment.
gassign <- local(function(name, value, envir = .GlobalEnv) {
  assign(name, value = value, envir = envir)
  ## Return a value identifiable for troubleshooting purposes
  invisible("future-grassign")
})

## Evaluates an expression in global environment.
geval <- local(function(expr, substitute = FALSE, envir = .GlobalEnv, enclos = baseenv(), ...) {
  if (substitute) expr <- substitute(expr)
  eval(expr, envir = envir, enclos = enclos)
})

## Vectorized version of require() with bells and whistles
requirePackages <- local(function(pkgs) {
  requirePackage <- function(pkg) {
    if (require(pkg, character.only = TRUE)) return()

    ## Failed to attach package
    msg <- sprintf("Failed to attach package %s in %s", sQuote(pkg), R.version$version.string)
    data <- utils::installed.packages()

    ## Installed, but fails to load/attach?
    if (is.element(pkg, data[, "Package"])) {
      keep <- (data[, "Package"] == pkg)
      data <- data[keep, ,drop = FALSE]
      pkgs <- sprintf("%s %s (in %s)", data[, "Package"], data[, "Version"], sQuote(data[, "LibPath"]))
      msg <- sprintf("%s, although the package is installed: %s", msg, paste(pkgs, collapse = ", "))
    } else {
      paths <- .libPaths()
      msg <- sprintf("%s, because the package is not installed in any of the libraries (%s), which contain %d installed packages.", msg, paste(sQuote(paths), collapse = ", "), nrow(data))
    }

    stop(msg)
  } ## requirePackage()

  ## require() all packages
  pkgs <- unique(pkgs)
  lapply(pkgs, FUN = requirePackage)
}) ## requirePackages()


## When 'default' is specified, this is 30x faster than
## base::getOption().  The difference is that here we use
## use names(.Options) whereas in 'base' names(options())
## is used.
getOption <- local({
  go <- base::getOption
  function(x, default = NULL) {
    if (missing(default) || match(x, table = names(.Options), nomatch = 0L) > 0L) go(x) else default
  }
}) ## getOption()


detectCores <- local({
  res <- NULL
  function() {
    if (is.null(res)) {
      ## Get number of system cores from option, system environment,
      ## and finally detectCores().  This also designed such that
      ## it is indeed possible to return NA_integer_.
      value <- getOption("future.availableCores.system")
      if (!is.null(value)) {
        value <- as.integer(value)
        return(value)
      }
      
      value <- parallel::detectCores()
      
      ## If unknown, set default to 1L
      if (is.na(value)) value <- 1L
      value <- as.integer(value)
      
      ## Assert positive integer
      stop_if_not(length(value) == 1L, is.numeric(value),
                is.finite(value), value >= 1L)

      res <<- value
    }
    res
  }
})


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
        msg <- sprintf("This type of future processing is not supported on this system (%s), because parallel function %s() is not available", sQuote(.Platform$OS.type), name)
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


parseCmdArgs <- function() {
  cmdargs <- getOption("future.cmdargs", commandArgs())
  args <- list()

  ## Option --parallel=<n> or -p <n>
  idx <- grep("^(-p|--parallel=.*)$", cmdargs)
  if (length(idx) > 0) {
    ## Use only last, iff multiple are given
    if (length(idx) > 1) idx <- idx[length(idx)]

    cmdarg <- cmdargs[idx]
    if (cmdarg == "-p") {
      cmdarg <- cmdargs[idx+1L]
      value <- as.integer(cmdarg)
      cmdarg <- sprintf("-p %s", cmdarg)
    } else {
      value <- as.integer(gsub("--parallel=", "", cmdarg))
    }

    max <- availableCores(methods = "system")
    if (is.na(value) || value <= 0L) {
      msg <- sprintf("future: Ignoring invalid number of processes specified in command-line option: %s", cmdarg)
      warning(msg, call. = FALSE, immediate. = TRUE)
    } else if (value > max) {
      msg <- sprintf("future: Ignoring requested number of processes, because it is greater than the number of cores/child processes available (= %d) to this R process: %s", max, cmdarg)
      warning(msg, call. = FALSE, immediate. = TRUE)
    } else {
      args$p <- value
    }
  }

  args
} # parseCmdArgs()



## A version of base::sample() that does not change .Random.seed
stealth_sample <- function(x, size = length(x), replace = FALSE, ...) {
  oseed <- .GlobalEnv$.Random.seed
  on.exit({
    if (is.null(oseed)) {
      rm(list = ".Random.seed", envir = .GlobalEnv, inherits = FALSE)
    } else {
      .GlobalEnv$.Random.seed <- oseed
    }
  })
  sample(x, size = size, replace = replace, ...)
}


myExternalIP <- local({
  ip <- NULL
  function(force = FALSE, random = TRUE, mustWork = TRUE) {
    if (!force && !is.null(ip)) return(ip)

    mdebug("myExternalIP() ...")
    
    ## FIXME: The identification of the external IP number relies on a
    ## single third-party server.  This could be improved by falling back
    ## to additional servers, cf. https://github.com/phoemur/ipgetter
    urls <- c(
      "https://httpbin.org/ip",
      "https://myexternalip.com/raw",
      "https://diagnostic.opendns.com/myip",
      "https://api.ipify.org/",
      "http://httpbin.org/ip",
      "http://myexternalip.com/raw",
      "http://diagnostic.opendns.com/myip",
      "http://api.ipify.org/"
    )

    ## Randomize order of lookup URLs to lower the load on a specific
    ## server.
    if (random) urls <- stealth_sample(urls)

    ## Only wait 5 seconds for server to respond
    setTimeLimit(cpu = 5, elapsed = 5, transient = TRUE)
    on.exit(setTimeLimit(cpu = Inf, elapsed = Inf, transient = FALSE))
    
    value <- NULL
    for (url in urls) {
      mdebugf(" - query: %s", sQuote(url))
      value <- tryCatch({
        readLines(url, warn = FALSE)
      }, error = function(ex) NULL)

      mdebugf(" - answer: %s", sQuote(paste(value, collapse = "\n")))
      
      ## Nothing found?
      if (is.null(value)) next
; 
      ## Keep only lines that look like they contain IP v4 numbers
      ip4_pattern <- ".*[^[:digit:]]*([[:digit:]]+[.][[:digit:]]+[.][[:digit:]]+[.][[:digit:]]+).*"
      value <- grep(ip4_pattern, value, value = TRUE)
      mdebugf(" - IPv4 maybe strings: %s", sQuote(paste(value, collapse = "\n")))
  
      ## Extract the IP numbers
      value <- gsub(ip4_pattern, "\\1", value)
  
      ## Trim and drop empty results (just in case)
      value <- trim(value)
      value <- value[nzchar(value)]
      mdebugf(" - IPv4 words: %s", sQuote(paste(value, collapse = "\n")))
  
      ## Nothing found?
      if (length(value) == 0) next

      ## Match?
      if (length(value) == 1 && nzchar(value)) break
    } ## for (url ...)
    
    ## Nothing found?
    if (is.null(value)) {
      if (mustWork) {
        stop(sprintf("Failed to identify external IP from any of the %d external services: %s", length(urls), paste(sQuote(urls), collapse = ", ")))
      }
      mdebug("myExternalIP() ... failed")
      return(NA_character_)
    }

    ## Sanity check
    stop_if_not(length(value) == 1, is.character(value), !is.na(value), nzchar(value))

    ## Cache result
    ip <<- value

    mdebug("myExternalIP() ... done")
    
    ip
  }
}) ## myExternalIP()


myInternalIP <- local({
  ip <- NULL

  ## Known private network IPv4 ranges:
  ##   (1)    10.0.0.0 -  10.255.255.255
  ##   (2)  172.16.0.0 -  172.31.255.255
  ##   (3) 192.168.0.0 - 192.168.255.255
  ## https://en.wikipedia.org/wiki/Private_network#Private_IPv4_address_spaces
  isPrivateIP <- function(ips) {
    ips <- strsplit(ips, split = ".", fixed = TRUE)
    ips <- lapply(ips, FUN = as.integer)
    res <- logical(length = length(ips))
    for (kk in seq_along(ips)) {
      ip <- ips[[kk]]
      if (ip[1] == 10) {
        res[kk] <- TRUE
      } else if (ip[1] == 172) {
        if (ip[2] >= 16 && ip[2] <= 31) res[kk] <- TRUE
      } else if (ip[1] == 192) {
        if (ip[2] == 168) res[kk] <- TRUE
      }
    }
    res
  } ## isPrivateIP()

  function(force = FALSE, which = c("first", "last", "all"), mustWork = TRUE) {
    if (!force && !is.null(ip)) return(ip)
    which <- match.arg(which, choices = c("first", "last", "all"))

    value <- NULL
    os <- R.version$os
    pattern <- "[0-9]+[.][0-9]+[.][0-9]+[.][0-9]+"
    if (grepl("^linux", os)) {
      ## (i) Try command 'hostname -I'
      res <- tryCatch({
        system2("hostname", args = "-I", stdout = TRUE)
      }, error = identity)

      ## (ii) Try commands 'ifconfig'
      if (inherits(res, "simpleError")) {
        res <- tryCatch({
          system2("ifconfig", stdout = TRUE)
        }, error = identity)
      }

      ## (ii) Try command '/sbin/ifconfig'
      if (inherits(res, "simpleError")) {
        res <- tryCatch({
          system2("/sbin/ifconfig", stdout = TRUE)
        }, error = identity)
      }
      
      ## Failed?
      if (inherits(res, "simpleError")) res <- NA_character_
      
      res <- grep(pattern, res, value = TRUE)
      res <- unlist(strsplit(res, split = "[ ]+", fixed = FALSE), use.names = FALSE)
      res <- grep(pattern, res, value = TRUE)
      res <- unlist(strsplit(res, split = ":", fixed = FALSE), use.names = FALSE)
      res <- grep(pattern, res, value = TRUE)
      res <- unique(trim(res))
      ## Keep private network IPs only (just in case)
      value <- res[isPrivateIP(res)]
    } else if (grepl("^mingw", os)) {
      res <- system2("ipconfig", stdout = TRUE)
      res <- grep("IPv4", res, value = TRUE)
      res <- grep(pattern, res, value = TRUE)
      res <- unlist(strsplit(res, split = "[ ]+", fixed = FALSE), use.names = FALSE)
      res <- grep(pattern, res, value = TRUE)
      res <- unique(trim(res))
      ## Keep private network IPs only (just in case)
      value <- res[isPrivateIP(res)]
    } else {
      if (mustWork) {
        stop(sprintf("remote(..., myip = '<internal>') is yet not implemented for this operating system (%s). Please specify the 'myip' IP number manually.", os))
      }
      return(NA_character_)
    }

    ## Trim and drop empty results (just in case)
    value <- trim(value)
    value <- value[nzchar(value)]

    ## Nothing found?
    if (length(value) == 0 && !mustWork) return(NA_character_)

    if (length(value) > 1) {
      value <- switch(which,
        first = value[1],
        last  = value[length(value)],
        all   = value,
        value
      )
    }
    ## Sanity check

    stop_if_not(is.character(value), length(value) >= 1, !any(is.na(value)))

    ## Cache result
    ip <<- value

    ip
  }
}) ## myInternalIP()




## A *rough* estimate of size of an object + its environment.
#' @keywords internal 
#' @importFrom utils object.size
objectSize <- function(x, depth = 3L, enclosure = getOption("future.globals.objectSize.enclosure", FALSE)) {
  # Nothing to do?
  if (isNamespace(x)) return(0)
  if (depth <= 0) return(0)
  
  if (!is.list(x) && !is.environment(x)) {
    size <- unclass(object.size(x))
    ## Issue #176 is because of this
    if (enclosure) x <- environment(x)
  } else {
    size <- 0
  }

  ## Nothing more to do?
  if (depth == 1) return(size)

  .scannedEnvs <- new.env()
  scanned <- function(e) {
    for (name in names(.scannedEnvs))
      if (identical(e, .scannedEnvs[[name]])) return(TRUE)
    FALSE
  }
  
  objectSize_list <- function(x, depth) {
    ## Nothing to do?
    if (depth <= 0) return(0)

    if (inherits(x, "FutureGlobals")) {
      size <- attr(x, "total_size", exact = TRUE)
      if (!is.na(size)) return(size)
    }

    depth <- depth - 1L
    size <- 0

    ## Use the true length that corresponds to what .subset2() uses
    nx <- .length(x)

    for (kk in seq_len(nx)) {
      ## NOTE: Use non-class dispatching subsetting to avoid infinite loop,
      ## e.g. x <- packageVersion("future") gives x[[1]] == x.
      x_kk <- .subset2(x, kk)
      if (missing(x_kk)) {
        ## e.g. x <- alist(a=)
      } else if (is.list(x_kk)) {
        size <- size + objectSize_list(x_kk, depth = depth)
      } else if (is.environment(x_kk)) {
        if (!scanned(x_kk)) size <- size + objectSize_env(x_kk, depth = depth)
      } else {
        size <- size + unclass(object.size(x_kk))
      }
    }
    size
  } ## objectSize_list()
  
  objectSize_env <- function(x, depth) {
    # Nothing to do?
    if (depth <= 0) return(0)
    depth <- depth - 1L
    if (isNamespace(x)) return(0)
##    if (inherits(x, "Future")) return(0)

    size <- 0

    ## Get all objects in the environment
    elements <- ls(envir = x, all.names = TRUE)
    if (length(elements) == 0) return(0)

    ## Skip variables that are future promises in order
    ## to avoid inspecting promises that are already
    ## under investigation.
    skip <- grep("^.future_", elements, value = TRUE)
    if (length(skip) > 0) {
      skip <- gsub("^.future_", "", elements)
      elements <- setdiff(elements, skip)
      if (length(elements) == 0) return(0)
    }
    
    ## Avoid scanning the current environment again
    name <- sprintf("env_%d", length(.scannedEnvs))
    .scannedEnvs[[name]] <- x

    for (element in elements) {
      ## FIXME: Some elements may not exist, although ls() returns them
      ## and exists() say they do exist, cf. Issue #161 /HB 2017-08-24
      ## NOTE: Hmm... is it possible to test for the existence or are
      ## we doomed to have to use of tryCatch() here?
      res <- tryCatch({
        x_kk <- .subset2(x, element)
        NULL  ## So that 'x_kk' is not returned, which may be missing()
      }, error = identity)

      ## A promise that cannot be resolved? This could be a false positive,
      ## e.g. an expression not to be resolved, cf. Issue #161 /HB 2017-08-24
      if (inherits(res, "error")) next

      ## Nothing to do?
      if (missing(x_kk)) next
      
      if (is.list(x_kk)) {
        size <- size + objectSize_list(x_kk, depth = depth)
      } else if (is.environment(x_kk)) {
##        if (!inherits(x_kk, "Future") && !scanned(x_kk)) {
        if (!scanned(x_kk)) {
          size <- size + objectSize_env(x_kk, depth = depth)
        }
      } else {
        size <- size + unclass(object.size(x_kk))
      }
    }
  
    size
  } ## objectSize_env()

  ## Suppress "Warning message:
  ##   In doTryCatch(return(expr), name, parentenv, handler) :
  ##   restarting interrupted promise evaluation"
  suppressWarnings({
    if (is.list(x)) {
      size <- size + objectSize_list(x, depth = depth - 1L)
    } else if (is.environment(x)) {
      size <- size + objectSize_env(x, depth = depth - 1L)
    }
  })

  size
}


#' Gets the length of an object without dispatching
#'
#' @param x Any \R object.
#'
#' @return A non-negative integer.
#'
#' @details
#' This function returns `length(unclass(x))`, but tries to avoid
#' calling `unclass(x)` unless necessary.
#' 
#' @seealso \code{\link{.subset}()} and \code{\link{.subset2}()}.
#' 
#' @keywords internal
#' @rdname private_length
#' @importFrom utils getS3method
.length <- function(x) {
  nx <- length(x)
  
  ## Can we trust base::length(x), i.e. is there a risk that there is
  ## a method that overrides with another definition?
  classes <- class(x)
  if (length(classes) == 1L && classes == "list") return(nx)

  ## Identify all length() methods for this object
  for (class in classes) {
    fun <- getS3method("length", class, optional = TRUE)
    if (!is.null(fun)) {
      nx <- length(unclass(x))
      break
    }
  }

  nx
} ## .length()


#' Creates a connection to the system null device
#'
#' @return Returns a open, binary \code{\link[base:connections]{base::connection()}}.
#' 
#' @keywords internal
nullcon <- local({
  nullfile <- switch(.Platform$OS.type, windows = "NUL", "/dev/null")
  .nullcon <- function() file(nullfile, open = "wb", raw = TRUE)

  ## Assert that a null device exists
  tryCatch({
    con <- .nullcon()
    on.exit(close(con))
    cat("test", file = con)
  }, error = function(ex) {
    stop(sprintf("Failed to write to null file (%s) on this platform (%s). Please report this the maintainer of the 'future' package.", sQuote(nullfile), sQuote(.Platform$OS.type)))
  })
  
  .nullcon
})


reference_filters <- local({
  filters <- default <- list(
    ignore_envirs = function(ref, typeof, class, ...) {
      typeof != "environment"
    }
  )

  function(action = "drop_function", ...) {
    if (action == "drop_function") {
      function(ref) {
        typeof <- typeof(ref)
        class <- class(ref)
        for (kk in seq_along(filters)) {
          filter <- filters[[kk]]
          if (filter(ref, typeof = typeof, class = class)) next
          return(TRUE) ## drop reference
        }
        FALSE  ## don't drop reference
      }
    } else if (action == "set") {
      filters <- list(...)
    } else if (action == "reset") {
      filters <<- default
    } else if (action == "append") {
      filters <<- c(filters, list(...))
    } else if (action == "prepend") {
      filters <<- c(list(...), filters)
    } else if (action == "get") {
      filters
    }
  }
})

#' Get first or all references of an \R object
#'
#' @param x The \R object to be checked.
#' 
#' @param first_only If `TRUE`, only the first reference is returned,
#' otherwise all references.
#'
#' @return `find_references()` returns a list of one or more references
#' identified.
#' 
#' @keywords internal
find_references <- function(x, first_only = FALSE) {
  con <- nullcon()
  on.exit(close(con))

  ## Get function that drops references
  drop_reference <- reference_filters()
  
  refs <- list()
    
  refhook <- if (first_only) {
    function(ref) {
      if (drop_reference(ref)) return(NULL)
      refs <<- c(refs, list(ref))
      stop(structure(list(message = ""), class = c("refhook", "condition")))
    }
  } else {
    function(ref) {
      if (drop_reference(ref)) return(NULL)
      refs <<- c(refs, list(ref))
      NULL
    }
  }
  
  tryCatch({
    serialize(x, connection = con, ascii = FALSE, xdr = FALSE,
              refhook = refhook)
  }, refhook = identity)
  
  refs
}


#' Assert that there are no references among the identified globals
#'
#' @param action Type of action to take if a reference is found.
#' 
#' @return If a reference is detected, an informative error, warning, message,
#' or a character string is produced, otherwise `NULL` is returned
#' invisibly.
#'
#' @rdname find_references
#' 
#' @keywords internal
assert_no_references <- function(x, action = c("error", "warning", "message", "string")) {
  ref <- find_references(x, first_only = TRUE)
  if (length(ref) == 0) return()

  action <- match.arg(action, choices = c("error", "warning", "message", "string"))
  
  ## Identify which global object has a reference
  global <- " (<unknown>)"
  ref <- ref[[1]]
  if (is.list(x) && !is.null(names(x))) {
    for (ii in seq_along(x)) {
      x_ii <- x[[ii]]
      ref_ii <- find_references(x_ii, first_only = TRUE)
      if (length(ref_ii) > 0) {
        global <- sprintf(" (%s of class %s)",
                          sQuote(names(x)[ii]), sQuote(class(x_ii)[1]))
        ref <- ref_ii[[1]]
        break
      }
    }
  }

  typeof <- typeof(ref)
  class <- class(ref)[1]
  if (class == typeof) {
    typeof <- sQuote(typeof)
  } else {
    typeof <- sprintf("%s of class %s", sQuote(typeof), sQuote(class))
  }
  
  msg <- sprintf("Detected a non-exportable reference (%s) in one of the globals%s used in the future expression", typeof, global)
  if (action == "error") {
    stop(FutureError(msg, call = NULL))
  } else if (action == "warning") {
    warning(FutureWarning(msg, call = NULL))
  } else if (action == "message") {
    message(FutureMessage(msg, call = NULL))
  } else if (action == "string") {
    msg
  }
}


## https://github.com/HenrikBengtsson/future/issues/130
#' @importFrom utils packageVersion
resolveMPI <- local({
  cache <- list()
  
  function(future) {
    resolveMPI <- cache$resolveMPI
    if (is.null(resolveMPI)) {
      resolveMPI <- function(future) {
        node <- future$workers[[future$node]]
        warning(sprintf("resolved() on %s failed to load the Rmpi package. Will use blocking value() instead and return TRUE", sQuote(class(node)[1])))
        value(future, stdout = FALSE, signal = FALSE)
        TRUE
      }

      if (requireNamespace(pkg <- "Rmpi", quietly = TRUE)) {
        ns <- getNamespace("Rmpi")

        resolveMPI <- function(future) {
          node <- future$workers[[future$node]]
          warning(sprintf("resolved() on %s failed to find mpi.iprobe() and mpi.any.tag() in Rmpi %s. Will use blocking value() instead and return TRUE", sQuote(class(node)[1]), packageVersion("Rmpi")))
          value(future, stdout = FALSE, signal = FALSE)
          TRUE
        }

        if (all(sapply(c("mpi.iprobe", "mpi.any.tag"), FUN = exists,
                       mode = "function", envir = ns, inherits = FALSE))) {
          mpi.iprobe <- get("mpi.iprobe", mode = "function", envir = ns,
                            inherits = FALSE)
          mpi.any.tag <- get("mpi.any.tag", mode = "function", envir = ns,
                             inherits = FALSE)
          resolveMPI <- function(future) {
            node <- future$workers[[future$node]]
            mpi.iprobe(source = node$rank, comm = node$comm, tag = mpi.any.tag())
          }
        }
      }
      stop_if_not(is.function(resolveMPI))
      cache$resolveMPI <<- resolveMPI
    }

    resolveMPI(future)
  }
})

#' Check whether a process PID exists or not
#'
#' @param pid A positive integer.
#'
#' @return Returns `TRUE` if a process with the given PID exists,
#' `FALSE` if a process with the given PID does not exists, and
#' `NA` if it is not possible to check PIDs on the current system.
#'
#' @details
#' There is no single go-to function in \R for testing whether a PID exists
#' or not.  Instead, this function tries to identify a working one among
#' multiple possible alternatives.  A method is considered working if the
#' PID of the current process is successfully identified as being existing
#' such that `pid_exists(Sys.getpid())` is `TRUE`.  If no working
#' approach is found, `pid_exists()` will always return `NA`
#' regardless of PID tested.
#' On Unix, including macOS, alternatives `tools::pskill(pid, signal = 0L)`
#' and `system2("ps", args = pid)` are used.
#' On Windows, various alternatives of `system2("tasklist", ...)` are used.
#'
#' @references
#' 1. The Open Group Base Specifications Issue 7, 2018 edition,
#'    IEEE Std 1003.1-2017 (Revision of IEEE Std 1003.1-2008)
#'    \url{https://pubs.opengroup.org/onlinepubs/9699919799/functions/kill.html}
#'
#' 2. Microsoft, tasklist, 2018-08-30,
#'    \url{https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/tasklist}
#'
#' 3. R-devel thread 'Detecting whether a process exists or not by its PID?',
#'    2018-08-30.
#'    \url{https://stat.ethz.ch/pipermail/r-devel/2018-August/076702.html}
#'
#' @seealso
#' \code{\link[tools]{pskill}()} and \code{\link[base]{system2}()}.
#'
#' @importFrom tools pskill
#' @importFrom utils str
#' @keywords internal
pid_exists <- local({
  os <- .Platform$OS.type

  ## The value of tools::pskill() is incorrect in R (< 3.5.0).
  ## This was fixed in R (>= 3.5.0).
  ## https://github.com/HenrikBengtsson/Wishlist-for-R/issues/62
  if (getRversion() >= "3.5.0") {
    pid_exists_by_pskill <- function(pid, debug = FALSE) {
      tryCatch({
        ## "If sig is 0 (the null signal), error checking is performed but no 
        ##  signal is actually sent. The null signal can be used to check the 
        ##  validity of pid." [1]
        res <- pskill(pid, signal = 0L)
        if (debug) {
          cat(sprintf("Call: tools::pskill(%s, signal = 0L)\n", pid))
          print(res)
        }
        as.logical(res)
      }, error = function(ex) NA)
    }
  } else {
    pid_exists_by_pskill <- function(pid, debug = FALSE) NA
  }

  pid_exists_by_ps <- function(pid, debug = FALSE) {
    tryCatch({
      ## 'ps <pid> is likely to be supported by more 'ps' clients than
      ## 'ps -p <pid>' and 'ps --pid <pid>'
      out <- suppressWarnings({
        system2("ps", args = pid, stdout = TRUE, stderr = FALSE)
      })
      if (debug) {
        cat(sprintf("Call: ps %s\n", pid))
        print(out)
        str(out)
      }
      status <- attr(out, "status")
      if (is.numeric(status) && status < 0) return(NA)
      out <- gsub("(^[ ]+|[ ]+$)", "", out)
      out <- out[nzchar(out)]
      if (debug) {
        cat("Trimmed:\n")
        print(out)
        str(out)
      }
      out <- strsplit(out, split = "[ ]+", fixed = FALSE)
      out <- lapply(out, FUN = function(x) x[1])
      out <- unlist(out, use.names = FALSE)
      if (debug) {
        cat("Extracted: ", paste(sQuote(out), collapse = ", "), "\n", sep = "")
      }
      out <- suppressWarnings(as.integer(out))
      if (debug) {
        cat("Parsed: ", paste(sQuote(out), collapse = ", "), "\n", sep = "")
      }
      any(out == pid)
    }, error = function(ex) NA)
  }

  pid_exists_by_tasklist_filter <- function(pid, debug = FALSE) {
    ## Example: tasklist /FI "PID eq 12345" /NH  [2]
    ## Try multiple times, because 'tasklist' seems to be unreliable, e.g.
    ## I've observed on win-builder that two consecutive calls filtering
    ## on Sys.getpid() once found a match while the second time none.
    for (kk in 1:5) {
      res <- tryCatch({
        args = c("/FI", shQuote(sprintf("PID eq %g", pid)), "/NH")
        out <- system2("tasklist", args = args, stdout = TRUE)
        if (debug) {
          cat(sprintf("Call: tasklist %s\n", paste(args, collapse = " ")))
          print(out)
          str(out)
        }
        out <- gsub("(^[ ]+|[ ]+$)", "", out)
        out <- out[nzchar(out)]
        if (debug) {
          cat("Trimmed:\n")
          print(out)
          str(out)
        }
        out <- grepl(sprintf(" %g ", pid), out)
        if (debug) {
          cat("Contains PID: ", paste(out, collapse = ", "), "\n", sep = "")
        }
        any(out)
      }, error = function(ex) NA)
      if (isTRUE(res)) return(res)
      Sys.sleep(0.1)
    }
    res
  }

  pid_exists_by_tasklist <- function(pid, debug = FALSE) {
    ## Example: tasklist [2]
    for (kk in 1:5) {
      res <- tryCatch({
        out <- system2("tasklist", stdout = TRUE)
        if (debug) {
          cat("Call: tasklist\n")
          print(out)
          str(out)
        }
        out <- gsub("(^[ ]+|[ ]+$)", "", out)
        out <- out[nzchar(out)]
        skip <- grep("^====", out)[1]
        if (!is.na(skip)) out <- out[seq(from = skip + 1L, to = length(out))]
        if (debug) {
          cat("Trimmed:\n")
          print(out)
          str(out)
        }
        out <- strsplit(out, split = "[ ]+", fixed = FALSE)
        ## WORKAROUND: The 'Image Name' column may contain spaces, making
        ## it hard to locate the second column.  Instead, we will identify
        ## the most common number of column (typically six) and the count
        ## how many columns we should drop at the end in order to find the
        ## second as the last
        ## 
        n <- lengths(out)
        n <- sort(n)[round(length(n) / 2)] ## "median" without using 'stats'
        drop <- n - 2L
        out <- lapply(out, FUN = function(x) rev(x)[-seq_len(drop)][1])
        out <- unlist(out, use.names = FALSE)
        if (debug) {
          cat("Extracted: ", paste(sQuote(out), collapse = ", "), "\n", sep = "")
        }
        out <- as.integer(out)
        if (debug) {
          cat("Parsed: ", paste(sQuote(out), collapse = ", "), "\n", sep = "")
        }
        out <- (out == pid)
        if (debug) {
          cat("Equals PID: ", paste(out, collapse = ", "), "\n", sep = "")
        }
        any(out)
      }, error = function(ex) NA)
      if (isTRUE(res)) return(res)
      Sys.sleep(0.1)
    }
    res
  }

  cache <- list()

  function(pid, debug = getOption("future.debug", FALSE)) {
    stop_if_not(is.numeric(pid), length(pid) == 1L, is.finite(pid), pid > 0L)

    pid_check <- cache$pid_check
    
    ## Does a working pid_check() exist?
    if (!is.null(pid_check)) return(pid_check(pid, debug = debug))

    if (debug) mdebug("Attempting to find a working pid_exists_*() function ...")
    
    ## Try to find a working pid_check() function, i.e. one where
    ## pid_check(Sys.getpid()) == TRUE
    if (os == "unix") {  ## Unix, Linux, and macOS
      if (isTRUE(pid_exists_by_pskill(Sys.getpid(), debug = debug))) {
        pid_check <- pid_exists_by_pskill
      } else if (isTRUE(pid_exists_by_ps(Sys.getpid(), debug = debug))) {
        pid_check <- pid_exists_by_ps
      }
    } else if (os == "windows") {  ## Microsoft Windows
      if (isTRUE(pid_exists_by_tasklist(Sys.getpid(), debug = debug))) {
        pid_check <- pid_exists_by_tasklist
      } else if (isTRUE(pid_exists_by_tasklist_filter(Sys.getpid(), debug = debug))) {
        pid_check <- pid_exists_by_tasklist_filter
      }
    }

    if (is.null(pid_check)) {
      if (debug) mdebug("- failed; pid_check() will always return NA")
      ## Default to NA
      pid_check <- function(pid) NA
    } else {
      ## Sanity check
      stop_if_not(isTRUE(pid_check(Sys.getpid(), debug = debug)))
      if (debug) mdebug("- success")
    }

    ## Record
    cache$pid_check <- pid_check

    if (debug) mdebug("Attempting to find a working pid_exists_*() function ... done")

    pid_check(pid)
  }
})


## From R.utils 2.7.0 (2018-08-26)
queryRCmdCheck <- function(...) {
  evidences <- list()

  # Command line arguments
  args <- commandArgs()

  evidences[["vanilla"]] <- is.element("--vanilla", args)

  # Check the working directory
  pwd <- getwd()
  dirname <- basename(pwd)
  parent <- basename(dirname(pwd))
  pattern <- ".+[.]Rcheck$"

  # Is 'R CMD check' checking tests?
  evidences[["tests"]] <- (
    grepl(pattern, parent) && grepl("^tests(|_.*)$", dirname)
  )

  # Is the current working directory as expected?
  evidences[["pwd"]] <- (evidences[["tests"]] || grepl(pattern, dirname))

  # Is 'R CMD check' checking examples?
  evidences[["examples"]] <- is.element("CheckExEnv", search())
  
  # SPECIAL: win-builder?
  evidences[["win-builder"]] <- (.Platform$OS.type == "windows" && grepl("Rterm[.]exe$", args[1]))

  if (evidences[["win-builder"]]) {
    n <- length(args)
    if (all(c("--no-save", "--no-restore", "--no-site-file", "--no-init-file") %in% args)) {
      evidences[["vanilla"]] <- TRUE
    }

    if (grepl(pattern, parent)) {
      evidences[["pwd"]] <- TRUE
    }
  }

  if (!evidences$vanilla || !evidences$pwd) {
    res <- "notRunning"
  } else if (evidences$tests) {
    res <- "checkingTests"
  } else if (evidences$examples) {
    res <- "checkingExamples"
  } else {
    res <- "notRunning"
  }

  attr(res, "evidences") <- evidences
  
  res
}

inRCmdCheck <- function() { queryRCmdCheck() != "notRunning" }
   

supports_omp_threads <- function(assert = FALSE, debug = getOption("future.debug", FALSE)) {
  if (!requireNamespace("RhpcBLASctl", quietly = TRUE)) {
    if (assert) {
      stop(FutureError(sprintf("In order to disable multi-threading in multicore futures, the %s package must be installed", sQuote("RhpcBLASctl"))))
    }
    return(FALSE)
  }

  ## Current number of OpenMP threads
  old_omp_threads <- RhpcBLASctl::omp_get_max_threads()

  ## RhpcBLASctl compiled without OpenMP support?
  ## Then it returns NULL in RhpcBLASctl (< 0.20-17) otherwise NA_integer_
  if (is.null(old_omp_threads)) old_omp_threads <- NA_integer_
  
  res <- !is.na(old_omp_threads)

  if (debug) mdebugf("supports_omp_threads() = %s", res, debug = debug)

  res
}



## base::bquote() gained argument 'splice' in R 4.0.0 (April 2020)
## Below is a verbatim copy of bquote() in R 4.0.3
if (getRversion() < "4.0.0") {
  bquote <- function(expr, where = parent.frame(), splice = FALSE) {
      if (!is.environment(where)) 
          where <- as.environment(where)
      unquote <- function(e) {
          if (is.pairlist(e)) 
              as.pairlist(lapply(e, unquote))
          else if (is.call(e)) {
              if (is.name(e[[1L]]) && as.character(e[[1]]) == ".") 
                  eval(e[[2L]], where)
              else if (splice) {
                  if (is.name(e[[1L]]) && as.character(e[[1L]]) == 
                    "..") 
                    stop("can only splice inside a call", call. = FALSE)
                  else as.call(unquote.list(e))
              }
              else as.call(lapply(e, unquote))
          }
          else e
      }
      is.splice.macro <- function(e) is.call(e) && is.name(e[[1L]]) && 
          as.character(e[[1L]]) == ".."
      unquote.list <- function(e) {
          p <- Position(is.splice.macro, e, nomatch = NULL)
          if (is.null(p)) 
              lapply(e, unquote)
          else {
              n <- length(e)
              head <- if (p == 1) 
                  NULL
              else e[1:(p - 1)]
              tail <- if (p == n) 
                  NULL
              else e[(p + 1):n]
              macro <- e[[p]]
              mexp <- eval(macro[[2L]], where)
              if (!is.vector(mexp)) 
                  stop("can only splice vectors")
              c(lapply(head, unquote), mexp, as.list(unquote.list(tail)))
          }
      }
      unquote(substitute(expr))
  }
}
