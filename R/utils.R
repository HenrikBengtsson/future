## From R.utils 2.0.2 (2015-05-23)
hpaste <- function(..., sep="", collapse=", ", lastCollapse=NULL, maxHead=if (missing(lastCollapse)) 3 else Inf, maxTail=if (is.finite(maxHead)) 1 else Inf, abbreviate="...") {
  if (is.null(lastCollapse)) lastCollapse <- collapse

  # Build vector 'x'
  x <- paste(..., sep=sep)
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
      x <- paste(x, collapse=collapse)
    } else {
      xT <- paste(x[1:(n-1)], collapse=collapse)
      x <- paste(xT, x[n], sep=lastCollapse)
    }
  }

  x
} # hpaste()


trim <- function(s) {
  sub("[\t\n\f\r ]+$", "", sub("^[\t\n\f\r ]+", "", s))
} # trim()


hexpr <- function(expr, trim=TRUE, collapse="; ", maxHead=6L, maxTail=3L, ...) {
  code <- deparse(expr)
  if (trim) code <- trim(code)
  hpaste(code, collapse=collapse, maxHead=maxHead, maxTail=maxTail, ...)
} # hexpr()


## From R.filesets
asIEC <- function(size, digits=2L) {
  if (length(size) > 1L) return(sapply(size, FUN=asIEC, digits=digits))
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


mdebug <- function(...) {
  if (!getOption("future.debug", FALSE)) return()
  message(sprintf(...))
} ## mdebug()


## Create a universally unique identifier (UUID) for an R object
#' @importFrom digest digest
uuid <- function(source, keep_source = FALSE) {
  uuid <- digest(source)
  uuid <- strsplit(uuid, split="")[[1]]
  uuid <- paste(c(uuid[1:8], "-", uuid[9:12], "-", uuid[13:16], "-", uuid[17:20], "-", uuid[21:32]), collapse="")
  if (keep_source) attr(uuid, "source") <- source
  uuid
} ## uuid()

uuid_of_connection <- function(con, ..., must_work = TRUE) {
  stopifnot(inherits(con, "connection"))
  if (must_work) {
    info <- summary(con)
    info$opened <- NULL
    uuid <- uuid(info, ...)
  } else {
    uuid <- tryCatch({
      info <- summary(con)
      info$opened <- NULL
      uuid(info, ...)
    }, error = function(ex) {
      attr(con, "uuid")
    })
  }
  uuid
} ## uuid_of_connection()

## A universally unique identifier (UUID) for the current
## R process.  Generated only once.
#' @importFrom digest digest
session_uuid <- local({
  value <- NULL
  function(attributes = FALSE) {
    uuid <- value
    if (!is.null(uuid)) {
      if (!attributes) attr(uuid, "source") <- NULL
      return(uuid)
    }
    info <- Sys.info()
    host <- Sys.getenv(c("HOST", "HOSTNAME", "COMPUTERNAME"))
    host <- host[nzchar(host)][1]
    info <- list(
      host=host,
      info=info,
      pid=Sys.getpid(),
      time=Sys.time(),
      random=sample.int(.Machine$integer.max, size=1L)
    )
    uuid <- uuid(info, keep_source = TRUE)
    value <<- uuid
    if (!attributes) attr(uuid, "source") <- NULL
    uuid
  }
})


## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Used by run() for ClusterFuture.
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Because these functions are exported, we want to keep their
## environment() as small as possible, which is why we use local().
## Without, the environment would be that of the package itself
## and all of the package content would be exported.

## Removes all variables in the global environment.
grmall <- local(function(envir=.GlobalEnv) {
  vars <- ls(envir=envir, all.names=TRUE)
  rm(list=vars, envir=envir, inherits=FALSE)
})

## Assigns a value to the global environment.
gassign <- local(function(name, value, envir=.GlobalEnv) {
  assign(name, value=value, envir=envir)
  NULL
})

## Evaluates an expression in global environment.
geval <- local(function(expr, substitute=FALSE, envir=.GlobalEnv, ...) {
  if (substitute) expr <- substitute(expr)
  eval(expr, envir=envir)
})

## Vectorized version of require() with bells and whistles
requirePackages <- local(function(pkgs) {
  requirePackage <- function(pkg) {
    if (require(pkg, character.only=TRUE)) return()

    ## Failed to attach package
    msg <- sprintf("Failed to attach package %s in %s", sQuote(pkg), R.version$version.string)
    data <- utils::installed.packages()

    ## Installed, but fails to load/attach?
    if (is.element(pkg, data[,"Package"])) {
      keep <- (data[,"Package"] == pkg)
      data <- data[keep,,drop=FALSE]
      pkgs <- sprintf("%s %s (in %s)", data[,"Package"], data[, "Version"], sQuote(data[,"LibPath"]))
      msg <- sprintf("%s, although the package is installed: %s", msg, paste(pkgs, collapse=", "))
    } else {
      paths <- .libPaths()
      msg <- sprintf("%s, because the package is not installed in any of the libraries (%s), which contain %d installed packages.", msg, paste(sQuote(paths), collapse=", "), nrow(data))
    }

    stop(msg)
  } ## requirePackage()

  ## require() all packages
  pkgs <- unique(pkgs)
  lapply(pkgs, FUN=requirePackage)
}) ## requirePackages()


## When 'default' is specified, this is 30x faster than
## base::getOption().  The difference is that here we use
## use names(.Options) whereas in 'base' names(options())
## is used.
getOption <- local({
  go <- base::getOption
  function(x, default=NULL) {
    if (missing(default) || match(x, table=names(.Options), nomatch=0L) > 0L) go(x) else default
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
      stopifnot(length(value) == 1L, is.numeric(value),
                is.finite(value), value >= 1L)

      res <<- value
    }
    res
  }
})


## We are currently importing the following non-exported functions:
## * cluster futures:
##   - parallel:::defaultCluster()  ## non-critical / not really needed
##   - parallel:::sendCall()        ## run()
##   - parallel:::recvResult()      ## value()
## * multicore futures:
##   - parallel:::selectChildren()  ## resolved()
## As well as the following ones (because they are not exported on Windows):
## * multicore futures:
##   - parallel::mcparallel()       ## run()
##   - parallel::mccollect()        ## value()
importParallel <- function(name=NULL) {
  ns <- getNamespace("parallel")
  if (!exists(name, mode="function", envir=ns, inherits=FALSE)) {
    ## covr: skip=3
    msg <- sprintf("This type of future processing is not supported on this system (%s), because parallel function %s() is not available", sQuote(.Platform$OS.type), name)
    mdebug(msg)
    stop(msg, call.=FALSE)
  }
  get(name, mode="function", envir=ns, inherits=FALSE)
}


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

    max <- availableCores(methods="system")
    if (is.na(value) || value <= 0L) {
      msg <- sprintf("future: Ignoring invalid number of processes specified in command-line option: %s", cmdarg)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else if (value > max) {
      msg <- sprintf("future: Ignoring requested number of processes, because it is greater than the number of cores/child processes available (=%d) to this R process: %s", max, cmdarg)
      warning(msg, call.=FALSE, immediate.=TRUE)
    } else {
      args$p <- value
    }
  }

  args
} # parseCmdArgs()


myExternalIP <- local({
  ip <- NULL
  function(force=FALSE, mustWork=TRUE) {
    if (!force && !is.null(ip)) return(ip)
    
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
    value <- NULL
    for (url in urls) {
      value <- tryCatch(readLines(url), error = function(ex) NULL)
      
      ## Nothing found?
      if (is.null(value)) next

      ## Keep only lines that look like they contain IP v4 numbers
      ip4_pattern <- ".*[^[:digit:]]+([[:digit:]]+[.][[:digit:]]+[.][[:digit:]]+[.][[:digit:]]+).*"
      value <- grep(ip4_pattern, value, value = TRUE)
  
      ## Extract the IP numbers
      value <- gsub(ip4_pattern, "\\1", value)
  
      ## Trim and drop empty results (just in case)
      value <- trim(value)
      value <- value[nzchar(value)]
  
      ## Nothing found?
      if (length(value) == 0) next

      ## Match?
      if (length(value) == 1 && nzchar(value)) break
    } ## for (url ...)
    
    ## Nothing found?
    if (is.null(value)) {
      if (mustWork) {
        stop(sprintf("Failed to identify external IP from any of the %d external services: %s", length(urls), paste(sQuote(urls), collapse=", ")))
      }
      return(NA_character_)
    }

    ## Sanity check
    stopifnot(length(value) == 1, is.character(value), !is.na(value), nzchar(value))

    ## Cache result
    ip <<- value
    
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
    ips <- strsplit(ips, split=".", fixed=TRUE)
    ips <- lapply(ips, FUN=as.integer)
    res <- logical(length=length(ips))
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

  function(force=FALSE, which=c("first", "last", "all"), mustWork=TRUE) {
    if (!force && !is.null(ip)) return(ip)
    which <- match.arg(which)

    value <- NULL
    os <- R.version$os
    pattern <- "[0-9]+[.][0-9]+[.][0-9]+[.][0-9]+"
    if (grepl("^linux", os)) {
      ## (i) Try command 'hostname -I'
      res <- tryCatch({
        system2("hostname", args="-I", stdout=TRUE)
      }, error = identity)

      ## (ii) Try commands 'ifconfig'
      if (inherits(res, "simpleError")) {
        res <- tryCatch({
          system2("ifconfig", stdout=TRUE)
        }, error = identity)
      }

      ## (ii) Try command '/sbin/ifconfig'
      if (inherits(res, "simpleError")) {
        res <- tryCatch({
          system2("/sbin/ifconfig", stdout=TRUE)
        }, error = identity)
      }
      
      ## Failed?
      if (inherits(res, "simpleError")) res <- NA_character_
      
      res <- grep(pattern, res, value=TRUE)
      res <- unlist(strsplit(res, split="[ ]+", fixed=FALSE), use.names=FALSE)
      res <- grep(pattern, res, value=TRUE)
      res <- unlist(strsplit(res, split=":", fixed=FALSE), use.names=FALSE)
      res <- grep(pattern, res, value=TRUE)
      res <- unique(trim(res))
      ## Keep private network IPs only (just in case)
      value <- res[isPrivateIP(res)]
    } else if (grepl("^mingw", os)) {
      res <- system2("ipconfig", stdout=TRUE)
      res <- grep("IPv4", res, value=TRUE)
      res <- grep(pattern, res, value=TRUE)
      res <- unlist(strsplit(res, split="[ ]+", fixed=FALSE), use.names=FALSE)
      res <- grep(pattern, res, value=TRUE)
      res <- unique(trim(res))
      ## Keep private network IPs only (just in case)
      value <- res[isPrivateIP(res)]
    } else {
      if (mustWork) {
        stop(sprintf("remote(..., myip='<internal>') is yet not implemented for this operating system (%s). Please specify the 'myip' IP number manually.", os))
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

    stopifnot(is.character(value), length(value) >= 1, !any(is.na(value)))

    ## Cache result
    ip <<- value

    ip
  }
}) ## myInternalIP()




## A *rough* estimate of size of an object + its environment.
#' @importFrom utils object.size
objectSize <- function(x, depth = 3L) {
  # Nothing to do?
  if (isNamespace(x)) return(0)
  if (depth <= 0) return(0)
  
  if (!is.list(x) && !is.environment(x)) {
    size <- object.size(x)
    x <- environment(x)
  } else {
    size <- 0
  }

  ## Nothing more to do?
  if (depth == 1) return(size)
  
  .scannedEnvs <- new.env()
  scanned <- function(e) {
    for (name in names(.scannedEnvs)) if (identical(e, .scannedEnvs[[name]])) return(TRUE)
    FALSE
  }

  objectSize.list <- function(x, depth) {
    # Nothing to do?
    if (depth <= 0) return(0)
    depth <- depth - 1L
    size <- 0
    for (kk in seq_along(x)) {
      ## NOTE: Use non-class dispatching subsetting to avoid infinite loop,
      ## e.g. x <- packageVersion("future") gives x[[1]] == x.
      x_kk <- .subset2(x, kk)
      if (is.list(x_kk)) {
        size <- size + objectSize.list(x_kk, depth = depth)
      } else if (is.environment(x_kk)) {
        if (!scanned(x_kk)) size <- size + objectSize.env(x_kk, depth = depth)
      } else {
        size <- size + object.size(x_kk)
      }
    }
    size
  } ## objectSize.list()
  
  objectSize.env <- function(x, depth) {
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
      x_kk <- .subset2(x, element)

      ## Nothing to do?
      if (missing(x_kk)) next
      if (is.list(x_kk)) {
        size <- size + objectSize.list(x_kk, depth = depth)
      } else if (is.environment(x_kk)) {
##        if (!inherits(x_kk, "Future") && !scanned(x_kk)) {
        if (!scanned(x_kk)) {
          size <- size + objectSize.env(x_kk, depth = depth)
        }
      } else {
        size <- size + object.size(x_kk)
      }
    }
  
    size
  } ## objectSize.env()

  if (is.list(x)) {
    size <- size + objectSize.list(x, depth = depth - 1L)
  } else if (is.environment(x)) {
    size <- size + objectSize.env(x, depth = depth - 1L)
  }

  size
}
