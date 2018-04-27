#' A future represents a value that will be available at some point in the future
#'
#' A \emph{future} is an abstraction for a \emph{value} that may
#' available at some point in the future.  A future can either be
#' \code{unresolved} or \code{resolved}, a state which can be checked
#' with \code{\link{resolved}()}.  As long as it is \emph{unresolved}, the
#' value is not available.  As soon as it is \emph{resolved}, the value
#' is available via \code{\link[future]{value}()}.
#'
#' @param expr An R \link[base]{expression}.
#'
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#'
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#'
#' @param globals (optional) a named list of global objects needed in order
#' for the future to be resolved correctly.
#' 
#' @param packages (optional) a character vector specifying packages
#' to be attached in the R environment evaluating the future.
#'
#' @param seed (optional) A L'Ecuyer-CMRG RNG seed.
#'
#' @param lazy If \code{FALSE} (default), the future is resolved
#' eagerly (starting immediately), otherwise not.
#'
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done to the global environment of the \R process
#' evaluating the future.
#'
#' @param gc If TRUE, the garbage collector run (in the process that
#' evaluated the future) after the value of the future is collected.
#' \emph{Some types of futures ignore this argument.}
#'
#' @param earlySignal Specified whether conditions should be signaled
#' as soon as possible or not.
#'
#' @param label An optional character string label attached to the
#' future.
#'
#' @param \dots Additional named elements of the future.
#'
#' @return An object of class \code{Future}.
#'
#' @details
#' A Future object is itself an \link{environment}.
#'
#' @seealso
#' One function that creates a Future is \code{\link{future}()}.
#' It returns a Future that evaluates an R expression in the future.
#' An alternative approach is to use the \code{\link{\%<-\%}} infix
#' assignment operator, which creates a future from the
#' right-hand-side (RHS) R expression and assigns its future value
#' to a variable as a \emph{\link[base]{promise}}.
#'
#' @importFrom utils capture.output
#' @export
#' @name Future-class
Future <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, globals = NULL, packages = NULL, seed = NULL, lazy = FALSE, local = TRUE, gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)
  
  if (!is.null(seed)) {
    ## For RNGkind("L'Ecuyer-CMRG") we should have (see help('RNGkind')):
    ##    .Random.seed <- c(rng.kind, n)
    ## where rng.kind == 407L and length(n) == 6L
    if (!is.integer(seed) || length(seed) != 7 || !all(is.finite(seed)) || seed[1] != 407L) {
      msg <- "Argument 'seed' must be L'Ecuyer-CMRG RNG seed as returned by parallel::nextRNGStream()"
      mdebug(msg)
      mdebug(capture.output(print(seed)))
      stop(msg)
    }
  }

  if (!is.null(globals)) {
    stop_if_not(is.list(globals),
              length(globals) == 0 || inherits(globals, "Globals"))
  }

  if (!is.null(packages)) {
    stop_if_not(is.character(packages))
    packages <- unique(packages)
    stop_if_not(!anyNA(packages), all(nzchar(packages)))
  }

  args <- list(...)

  core <- new.env(parent = emptyenv())

  ## Version of future
  version <- args$version
  if (is.null(version)) version <- "1.7"
  core$version <- version
  core$.callResult <- FALSE  ## Temporary until "1.7" defunct

  ## Future evaluation
  core$expr <- expr
  core$envir <- envir
  core$globals <- globals
  core$packages <- packages
  core$seed <- seed
  core$local <- local
  core$lazy <- lazy
  core$asynchronous <- TRUE  ## Reserved for future version (Issue #109)

  ## Result
  core$result <- NULL
  ## IMPORTANT: Do *not* set 'value', because there are, checks for a future
  ## being resolved or not that checks for its existance, e.g.
  ## exists("value", envir = future).
  ## UPDATE: 'value' is being replaced by 'result$value' /HB 2018-02-25
  ## core$value <- NULL

  ## Future miscellaneous
  core$label <- label
  core$owner <- session_uuid(attributes = TRUE)
  core$earlySignal <- earlySignal
  core$gc <- gc

  ## The current state of the future, e.g.
  ## 'created', 'running', 'finished', 'failed', 'interrupted'.
  core$state <- "created"

  ## Additional named arguments
  for (key in names(args)) core[[key]] <- args[[key]]
  
  structure(core, class = c("Future", class(core)))
}


#' @importFrom utils head capture.output
#' @export
print.Future <- function(x, ...) {
  class <- class(x)
  cat(sprintf("%s:\n", class[1]))
  label <- x$label
  if (is.null(label)) label <- "<none>"
  cat("Label: ", sQuote(label), "\n", sep = "")
  cat("Expression:\n")
  print(x$expr)
  cat(sprintf("Lazy evaluation: %s\n", x$lazy))
  cat(sprintf("Asynchronous evaluation: %s\n", x$asynchronous))
  cat(sprintf("Local evaluation: %s\n", x$local))
  cat(sprintf("Environment: %s\n", capture.output(x$envir)))

  ## FIXME: Add method globals_of() for Future such that it's possible
  ## also for SequentialFuture to return something here. /HB 2017-05-17
  g <- globals(x)
  ng <- length(g)
  if (ng > 0) {
    gSizes <- sapply(g, FUN = objectSize)
    gTotalSize <- sum(gSizes)
    g <- head(g, n = 5L)
    gSizes <- head(gSizes, n = 5L)
    g <- sprintf("%s %s of %s", sapply(g, FUN = function(x) class(x)[1]), sQuote(names(g)), sapply(gSizes, FUN = asIEC))
    if (ng > length(g)) g <- c(g, "...")
    g <- hpaste(g, maxHead = 5L, maxTail = 0L)
    cat(sprintf("Globals: %d objects totaling %s (%s)\n", ng, asIEC(gTotalSize), g))
  } else {
    cat("Globals: <none>\n")
  }
  
  p <- packages(x)
  np <- length(p)
  if (np > 0) {
    cat(sprintf("Packages: %d packages (%s)\n", np, paste(sQuote(p), collapse = ", ")))
  } else {
    cat("Packages: <none>\n")
  }
  
  if (is.null(x$seed)) {
    cat("L'Ecuyer-CMRG RNG seed: <none>\n")
  } else {
    cat(sprintf("L'Ecuyer-CMRG RNG seed: c(%s)\n", paste(x$seed, collapse = ", ")))
  }

  result <- x$result
  hasResult <- inherits(result, "FutureResult")
  ## BACKWARD COMPATIBILITY
  hasResult <- hasResult || exists("value", envir = x, inherits = FALSE)
  if (hasResult) {
    cat("Resolved: TRUE\n")
  } else if (inherits(x, "UniprocessFuture") && x$lazy) {
    ## FIXME: Special case; will there every be other cases
    ## for which we need to support this? /HB 2016-05-03
    cat("Resolved: FALSE\n")
  } else {
    ## resolved() without early signalling
    ## FIXME: Make it easier to achieve this. /HB 2016-05-03
    local({
      earlySignal <- x$earlySignal
      x$earlySignal <- FALSE
      on.exit(x$earlySignal <- earlySignal)
      cat(sprintf("Resolved: %s\n", resolved(x)))
    })
  }

  if (hasResult) {
    if (inherits(result, "FutureResult")) {
      value <- result$value
    } else {
      value <- x$value
    }
    cat(sprintf("Value: %s of class %s\n", asIEC(objectSize(value)), sQuote(class(value)[1])))
    if (inherits(result, "FutureResult")) {
      cat(sprintf("Condition: %s\n", sQuote(class(result$condition)[1])))
    }
  } else {
    cat("Value: <not collected>\n")
    cat("Condition: <not collected>\n")
  }
  cat(sprintf("Early signalling: %s\n", isTRUE(x$earlySignal)))
  cat(sprintf("Owner process: %s\n", x$owner))
  cat(sprintf("Class: %s\n", paste(sQuote(class), collapse = ", ")))
} ## print()


## Checks whether Future is owned by the current process or not
assertOwner <- function(future, ...) {
  hpid <- function(uuid) {
    info <- attr(uuid, "source")
    sprintf("%s; pid %d on %s", uuid, info$pid, info$host)
  }

  if (!identical(future$owner, session_uuid(attributes = TRUE))) {
    stop(FutureError(sprintf("Invalid usage of futures: A future whose value has not yet been collected can only be queried by the R process (%s) that created it, not by any other R processes (%s): %s", hpid(future$owner), hpid(session_uuid()), hexpr(future$expr)), future = future))
  }

  invisible(future)
}


#' Run a future
#'
#' @param future A \link{Future}.
#' @param \dots Not used.
#'
#' @return The \link{Future} object.
#'
#' @details
#' This function can only be called once per future.
#' Further calls will result in an informative error.
#' If a future is not run when its value is queried,
#' then it is run at that point.
#'
#' @aliases run
#' @rdname run
#' @export
#' @export run
#' @keywords internal
run.Future <- function(future, ...) {
  if (future$state != 'created') {
    label <- future$label
    if (is.null(label)) label <- "<none>"
    msg <- sprintf("A future ('%s') can only be launched once.", label)
    stop(FutureError(msg, future = future))
  }
  
  future
}

run <- function(...) UseMethod("run")


#' @export
#' @keywords internal
result <- function(...) UseMethod("result")

#' Get the results of a resolved future
#'
#' @param future A \link{Future}.
#' @param \dots Not used.
#'
#' @return The \link{FutureResult} object.
#'
#' @details
#' This function is only part of the _backend_ Future API.
#' This function is _not_ part of the frontend Future API.
#'
#' @aliases result
#' @rdname result
#' @export
#' @keywords internal
result.Future <- function(future, ...) {
  ## Has the result already been collected?
  result <- future$result
  if (!is.null(result)) {
    if (inherits(result, "FutureError")) stop(result)
    return(result)
  }
  
  if (future$state == "created") {
    future <- run(future)
  }

  if (!future$state %in% c("finished", "failed", "interrupted")) {
    ## BACKWARD COMPATIBILITY:
    ## For now, it is value() that collects the results.  Later we want
    ## all future backends to use result() to do it. /HB 2018-02-22
    value(future, signal = FALSE)
  }

  result <- future$result
  if (inherits(result, "FutureResult")) return(result)

  ## BACKWARD COMPATIBILITY
  result <- future$value
  if (inherits(result, "FutureResult")) return(result)

  version <- future$version
  if (is.null(version)) {
    warning(FutureWarning("Future version was not set. Using default %s",
                          sQuote(version)))
  }

  ## Sanity check
  if (version == "1.8") {
    if (is.null(result) && inherits(future, "MulticoreFuture")) {
      label <- future$label
      if (is.null(label)) label <- "<none>"
      msg <- sprintf("A future ('%s') of class %s did not produce a FutureResult object but NULL. This suggests that the R worker terminated (crashed?) before the future expression was resolved.", label, class(future)[1])
      stop(FutureError(msg, future = future))
    }
  }
  
  ## BACKWARD COMPATIBILITY
  if (future$state == "failed") {
    value <- result
    calls <- value$traceback
    return(FutureResult(condition = value, calls = calls, version = "1.7"))
  }

  FutureResult(value = result, version = "1.7")
}


#' The value of a future
#'
#' Gets the value of a future.  If the future is unresolved, then
#' the evaluation blocks until the future is resolved.
#'
#' @param future A \link{Future}.
#' @param signal A logical specifying whether (\link[base]{conditions})
#' should signaled or be returned as values.
#' @param \dots Not used.
#'
#' @return An R object of any data type.
#'
#' @details
#' This method needs to be implemented by the class that implement
#' the Future API.
#'
#' @aliases value
#' @rdname value
#' @export
#' @export value
value.Future <- function(future, signal = TRUE, ...) {
  if (future$state == "created") {
    future <- run(future)
  }

  ## Sanity check
  if (is.null(future$result) && !future$state %in% c("finished", "failed", "interrupted")) {
    if (future$version == "1.7" || !future$.callResult) {
      msg <- sprintf("Internal error: value() called on a non-finished future: %s", class(future)[1])
      mdebug(msg)
      stop(FutureError(msg, future = future))
    }
  }

  result <- result(future)
  stop_if_not(inherits(result, "FutureResult"))

  value <- result$value
  condition <- result$condition
  if (inherits(condition, "condition")) {
    if (signal) {
      mdebug("Future state: %s", sQuote(future$state))
      resignalCondition(future) ## Will produce an error
    } else {
      ## BACKWARD COMPATIBILITY
      value <- condition
    }
  }

  value
}

value <- function(...) UseMethod("value")


#' @export
resolved.Future <- function(x, ...) {
  ## Is future even launched?
  if (x$state == "created") return(FALSE)

  ## Signal conditions early, iff specified for the given future
  signalEarly(x, ...)

  if (inherits(x$result, "FutureResult")) return(TRUE)
  
  x$state %in% c("finished", "failed", "interrupted")
}


#' Inject code for the next type of future to use for nested futures
#'
#' @param future Current future.
#' @param \dots Not used.
#'
#' @return A future expression with code injected to set what
#' type of future to use for nested futures, iff any.
#'
#' @details
#' If no next future strategy is specified, the default is to
#' use \link{sequential} futures.  This conservative approach protects
#' against spawning off recursive futures by mistake, especially
#' \link{multicore} and \link{multisession} ones.
#' The default will also set \code{options(mc.cores = 1L)} (*) so that
#' no parallel R processes are spawned off by functions such as
#' \code{\link[parallel:mclapply]{mclapply}()} and friends.
#'
#' Currently it is not possible to specify what type of nested
#' futures to be used, meaning the above default will always be
#' used.
#' See \href{https://github.com/HenrikBengtsson/future/issues/37}{Issue #37}
#' for plans on adding support for custom nested future types.
#'
#' (*) Ideally we would set \code{mc.cores = 0} but that will unfortunately
#'     cause \code{mclapply()} and friends to generate an error saying
#'     "'mc.cores' must be >= 1".  Ideally those functions should
#'     fall back to using the non-multicore alternative in this
#'     case, e.g. \code{mclapply(...)} => \code{lapply(...)}.
#'     See \url{https://github.com/HenrikBengtsson/Wishlist-for-R/issues/7}
#'     for a discussion on this.
#'
#' @export
#' @aliases getExpression.Future
#' @keywords internal
getExpression <- function(future, ...) UseMethod("getExpression")

#' @export
getExpression.Future <- function(future, mc.cores = NULL, ...) {
  debug <- getOption("future.debug", FALSE)
  ##  mdebug("getExpression() ...")

  version <- future$version
  if (is.null(version)) {
    warning(FutureWarning("Future version was not set. Using default %s",
                          sQuote(version)))
  }


  enter <- bquote({
    ## covr: skip=4
    ## If 'future' is not installed on the worker, or a too old version
    ## of 'future' is used, then give an early error
    ## If future::FutureResult does not exist, give an error
    has_future <- requireNamespace("future", quietly = TRUE)
    version <- if (has_future) packageVersion("future") else NULL
    if (!has_future || version < "1.8.0") {
      info <- c(
        r_version = gsub("R version ", "", R.version$version.string),
        platform = sprintf("%s (%s-bit)",
                           R.version$platform, 8 * .Machine$sizeof.pointer),
        os = paste(Sys.info()[c("sysname", "release", "version")],
                   collapse = " "),
        hostname = Sys.info()[["nodename"]]
      )
      info <- sprintf("%s: %s", names(info), info)
      info <- paste(info, collapse = "; ")
      if (!has_future) {
        msg <- sprintf("Package 'future' is not installed on worker (%s)", info)
      } else {
        msg <- sprintf("Package 'future' on worker (%s) must be of version >= 1.8.0: %s", info, version)
      }
      stop(msg)
    }
  })
  exit <- NULL
  
  ## Should 'mc.cores' be set?
  if (!is.null(mc.cores)) {
##    mdebug("getExpression(): setting mc.cores = %d inside future", mc.cores)
    ## FIXME: How can we guarantee that '...future.mc.cores.old'
    ## is not overwritten?  /HB 2016-03-14
    enter <- bquote({
      ## covr: skip=3
      .(enter)
      ...future.mc.cores.old <- getOption("mc.cores")
      options(mc.cores = .(mc.cores))
    })

    exit <- bquote({
      ## covr: skip=1
      options(mc.cores = ...future.mc.cores.old)
    })
  }
  
  ## Seed RNG seed?
  if (!is.null(future$seed)) {
    enter <- bquote({
      ## covr: skip=2
      .(enter)
      ## NOTE: It is not needed to call eRNGkind("L'Ecuyer-CMRG") here
      ## because the type of RNG is defined by .Random.seed, especially
      ## .Random.seed[1].  See help("RNGkind"). /HB 2017-01-12
      assign(".Random.seed", .(future$seed), envir = globalenv(), inherits = FALSE)
    })
  }

  ## Reset future strategies upon exit of future
  strategies <- plan("list")
  stop_if_not(length(strategies) >= 1L)
  exit <- bquote({
    ## covr: skip=2
    .(exit)
    future::plan(.(strategies), .cleanup = FALSE, .init = FALSE)
  })

  ## Pass down the default or the remain set of future strategies?
  strategiesR <- strategies[-1]
  ##  mdebug("Number of remaining strategies: %d\n", length(strategiesR))

  ## Identify packages needed by the futures
  pkgs <- NULL
  if (length(strategiesR) > 0L) {
    ## Identify package namespaces needed for strategies
    pkgs <- lapply(strategiesR, FUN = environment)
    pkgs <- lapply(pkgs, FUN = environmentName)
    pkgs <- unique(unlist(pkgs, use.names = FALSE))
    ## CLEANUP: Only keep those that are loaded in the current session
    pkgs <- intersect(pkgs, loadedNamespaces())
    if (debug) mdebug("Packages needed by future strategies (n = %d): %s", length(pkgs), paste(sQuote(pkgs), collapse = ", "))
  } else {
    if (debug) mdebug("Packages needed by future strategies (n = 0): <none>")
  }

  pkgsF <- packages(future)
  if (length(pkgsF) > 0) {
    if (debug) mdebug("Packages needed by the future expression (n = %d): %s", length(pkgsF), paste(sQuote(pkgsF), collapse = ", "))
    pkgs <- unique(c(pkgs, pkgsF))
  } else {
    if (debug) mdebug("Packages needed by the future expression (n = 0): <none>")
  }

  ## Make sure to load and attach all package needed  
  if (length(pkgs) > 0L) {
    ## Sanity check by verifying packages can be loaded already here
    ## If there is somethings wrong in 'pkgs', we get the error
    ## already before launching the future.
    for (pkg in pkgs) loadNamespace(pkg)

    enter <- bquote({
      ## covr: skip=3
      .(enter)      
      ## TROUBLESHOOTING: If the package fails to load, then library()
      ## suppress that error and generates a generic much less
      ## informative error message.  Because of this, we load the
      ## namespace first (to get a better error message) and then
      ## calls library(), which attaches the package. /HB 2016-06-16
      ## NOTE: We use local() here such that 'pkg' is not assigned
      ##       to the future environment. /HB 2016-07-03
      local({
        for (pkg in .(pkgs)) {
          loadNamespace(pkg)
          library(pkg, character.only = TRUE)
        }
      })
    })
  }

  ## Make sure to set all nested future strategies needed
  if (length(strategiesR) == 0L) {
##    mdebug("Set plan('default') inside future")
    ## Use default future strategy
    enter <- bquote({
      ## covr: skip=2
      .(enter)
      future::plan("default", .cleanup = FALSE, .init = FALSE)
    })
  } else {    
    ## Pass down future strategies
    enter <- bquote({
      ## covr: skip=2
      .(enter)
      future::plan(.(strategiesR), .cleanup = FALSE, .init = FALSE)
    })
  } ## if (length(strategiesR) > 0L)

  expr <- makeExpression(expr = future$expr, local = future$local, enter = enter, exit = exit, version = version)
  if (getOption("future.debug", FALSE)) {
    print(expr)
  }

##  mdebug("getExpression() ... DONE")
  
  expr
} ## getExpression()


makeExpression <- function(expr, local = TRUE, globals.onMissing = getOption("future.globals.onMissing", "ignore"), enter = NULL, exit = NULL, version = "1.7") {
  ## Evaluate expression in a local() environment?
  if (local) {
    expr <- bquote(local(.(expr)))
  }

  ## Set and reset certain future.* options
  enter <- bquote({
    ## covr: skip=7
    ...future.oldOptions <- options(
      ## Prevent .future.R from being source():d when future is attached
      future.startup.loadScript = FALSE,
      ## Assert globals when future is created (or at run time)?
      future.globals.onMissing = .(globals.onMissing)
    )
    .(enter)
  })

  exit <- bquote({
    .(exit)
    options(...future.oldOptions)
  })


  ## NOTE: We don't want to use local(body) w/ on.exit() because
  ## evaluation in a local is optional, cf. argument 'local'.
  ## If this was mandatory, we could.  Instead we use
  ## a tryCatch() statement. /HB 2016-03-14

  if (version == "1.7") {
    expr <- bquote({
      ## covr: skip=6
      .(enter)
      tryCatch({
        .(expr)
      }, finally = {
        .(exit)
      })
    })
  } else if (version == "1.8") {    
    expr <- bquote({
      ## covr: skip=6
      .(enter)
      tryCatch({
        ...future.value <- .(expr)
        ## A FutureResult object (without requiring the future package)
#       structure(list(
#          value = ...future.value,
#          condition = NULL,
#          calls = NULL,
#          version = "1.8"
#       ), class = c("FutureResult", "list"))
        future::FutureResult(value = ...future.value, version = "1.8")
      }, error = function(cond) {
        calls <- sys.calls()
        ## Drop fluff added by tryCatch()
  #      calls <- calls[seq_len(length(calls) - 2L)]
        ## Drop fluff added by outer tryCatch()
  #      calls <- calls[-seq_len(current+7L)]
        ## Drop fluff added by outer local = TRUE
        #      if (future$local) calls <- calls[-seq_len(6L)]
        structure(list(
          value = NULL,
          condition = cond,
          calls = calls,
          version = "1.8"
        ), class = "FutureResult")
      }, finally = {
        .(exit)
      })
    })
  } else {
    stop(FutureError("Internal error: Non-supported future expression version: ", version))
  }

  expr
} ## makeExpression()


globals <- function(future, ...) UseMethod("globals")

globals.Future <- function(future, ...) {
  future[["globals"]]
}

packages <- function(future, ...) UseMethod("packages")

packages.Future <- function(future, ...) {
  future[["packages"]]
}
