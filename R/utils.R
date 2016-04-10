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


## A universally unique identifier (UUID) for the current
## R process.  Generated only once.
#' @importFrom digest digest
uuid <- local({
  value <- NULL
  function() {
    uuid <- value
    if (!is.null(uuid)) return(uuid)
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
    uuid <- digest(info)
    uuid <- strsplit(uuid, split="")[[1]]
    uuid <- paste(c(uuid[1:8], "-", uuid[9:12], "-", uuid[13:16], "-", uuid[17:20], "-", uuid[21:32]), collapse="")
    attr(uuid, "info") <- info
    value <<- uuid
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
