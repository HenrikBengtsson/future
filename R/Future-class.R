#' A future represents a value that will be available at some point in the future
#'
#' A _future_ is an abstraction for a _value_ that may
#' available at some point in the future.  A future can either be
#' `unresolved` or `resolved`, a state which can be checked
#' with [resolved()].  As long as it is _unresolved_, the
#' value is not available.  As soon as it is _resolved_, the value
#' is available via \code{\link[future]{value}()}.
#'
#' @param expr An \R \link[base]{expression}.
#'
#' @param envir The [environment] from where global objects should be
#' identified.
#'
#' @param substitute If TRUE, argument `expr` is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#'
#' @param stdout If TRUE (default), then the standard output is captured,
#' and re-outputted when `value()` is called.
#' If FALSE, any output is silenced (by sinking it to the null device as
#' it is outputted).
#' If NA (not recommended), output is _not_ intercepted.
#' 
#' @param conditions A character string of conditions classes to be captured
#' and relayed.  The default is to relay messages and warnings.
#' To not intercept conditions, use `conditions = character(0L)`.
#' Errors are always relayed.
#' 
#' @param globals (optional) a logical, a character vector, or a named list
#' to control how globals are handled.
#' For details, see section 'Globals used by future expressions'
#' in the help for [future()].
#' 
#' @param packages (optional) a character vector specifying packages
#' to be attached in the \R environment evaluating the future.
#'
#' @param seed (optional) If TRUE, the random seed, that is, the state of the
#' random number generator (RNG) will be set such that statistically sound
#' random numbers are produced (also during parallelization).
#' If FALSE, it is assumed that the future expression does neither need nor
#' use random numbers generation.
#' To use a fixed random seed, specify a L'Ecuyer-CMRG seed (seven integer)
#' or a regular RNG seed (a single integer).
#' Furthermore, if FALSE, then the future will be monitored to make sure it
#' does not use random numbers.  If it does and depending on the value of
#' option \code{\link[=future.options]{future.rng.misUse}}, the check is
#' ignored, an informative warning, or error will be produced.
#' If `seed` is NULL (default), then the effect is as with `seed = FALSE`
#' but without the RNG check being performed.
#'
#' @param lazy If FALSE (default), the future is resolved
#' eagerly (starting immediately), otherwise not.
#'
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done to the global environment of the \R process
#' evaluating the future.
#'
#' @param gc If TRUE, the garbage collector run (in the process that
#' evaluated the future) only after the value of the future is collected.
#' Exactly when the values are collected may depend on various factors such
#' as number of free workers and whether `earlySignal` is TRUE (more
#' frequently) or FALSE (less frequently).
#' _Some types of futures ignore this argument._
#'
#' @param earlySignal Specified whether conditions should be signaled as soon
#' as possible or not.
#'
#' @param label An optional character string label attached to the future.
#'
#' @param \dots Additional named elements of the future.
#' 
#' @return An object of class `Future`.
#'
#' @details
#' A Future object is itself an \link{environment}.
#'
#' @seealso
#' One function that creates a Future is [future()].
#' It returns a Future that evaluates an \R expression in the future.
#' An alternative approach is to use the \code{\link{\%<-\%}} infix
#' assignment operator, which creates a future from the
#' right-hand-side (RHS) \R expression and assigns its future value
#' to a variable as a \emph{\link[base]{promise}}.
#'
#' @importFrom parallel nextRNGStream
#' @export
#' @keywords internal
#' @name Future-class
Future <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, stdout = TRUE, conditions = "condition", globals = NULL, packages = NULL, seed = FALSE, lazy = FALSE, local = TRUE, gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)

  if (is.null(seed)) {
  } else if (isFALSE(seed)) {
  } else if (is_lecyer_cmrg_seed(seed)) {
  } else {
    .seed <- as_lecyer_cmrg_seed(seed)
    seed <- nextRNGSubStream(.seed)
  }

  stop_if_not(is.logical(stdout), length(stdout) == 1L)
  if (!is.null(conditions)) {
    stop_if_not(is.character(conditions), !anyNA(conditions))
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
  if (is.null(version)) version <- "1.8"
  core$version <- version

  ## Future evaluation
  core$expr <- expr
  core$envir <- envir
  core$stdout <- stdout
  core$conditions <- conditions
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
  core$earlySignal <- earlySignal
  core$gc <- gc
  core$owner <- session_uuid()
  core$calls <- sys.calls()

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
  cat(sprintf("Capture standard output: %s\n", x$stdout))
  if (length(x$conditions) > 0) {
    cat(sprintf("Capture condition classes: %s\n",
                paste(sQuote(x$conditions), collapse = ", ")))
  } else {
    cat("Capture condition classes: <none>\n")
  }

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
  
  if (is.integer(x$seed)) {
    cat(sprintf("L'Ecuyer-CMRG RNG seed: c(%s)\n", paste(x$seed, collapse = ", ")))
  } else {
    cat("L'Ecuyer-CMRG RNG seed: <none> (seed = ", deparse(x$seed), ")\n", sep = "")
  }

  result <- x$result
  hasResult <- inherits(result, "FutureResult")
  ## BACKWARD COMPATIBILITY
  hasResult <- hasResult || exists("value", envir = x, inherits = FALSE)
  if (hasResult) {
    cat("Resolved: TRUE\n")
  } else if (x$state == "created") {
    ## Don't launch lazy futures here
    cat("Resolved: FALSE\n")
  } else if (inherits(x, "UniprocessFuture") && x$lazy) {
    ## FIXME: Special case; will there every be other cases
    ## for which we need to support this? /HB 2016-05-03
    cat("Resolved: FALSE\n")
  } else {
    ## Don't signal conditions here
    ## Note that resolved() may produce a FutureError, e.g.
    ## due to invalid connection in a MultisessionFuture
    is_resolved <- FALSE
    cat(sprintf("Resolved: %s\n", tryCatch(resolved(x, .signalEarly = FALSE), error = function(ex) NA)))
  }

  if (hasResult) {
    if (inherits(result, "FutureResult")) {
      value <- result$value
    } else {
      value <- x$value
    }
    cat(sprintf("Value: %s of class %s\n", asIEC(objectSize(value)), sQuote(class(value)[1])))
    if (inherits(result, "FutureResult")) {
      conditions <- result$conditions
      conditionClasses <- vapply(conditions, FUN = function(c) class(c$condition)[1], FUN.VALUE = NA_character_)
      cat(sprintf("Conditions captured: [n=%d] %s\n", length(conditionClasses), hpaste(sQuote(conditionClasses))))
    }
  } else {
    cat("Value: <not collected>\n")
    cat("Conditions captured: <none>\n")
  }
  cat(sprintf("Early signaling: %s\n", isTRUE(x$earlySignal)))
  cat(sprintf("Owner process: %s\n", x$owner))
  cat(sprintf("Class: %s\n", paste(sQuote(class), collapse = ", ")))
} ## print()


## Checks whether Future is owned by the current process or not
assertOwner <- function(future, ...) {
  hpid <- function(uuid) {
    info <- attr(uuid, "source", exact = TRUE)
    if (is.null(info)) info <- list(pid = NA_integer_, host = NA_character_)
    stop_if_not(is.list(info), length(info$pid) == 1L, length(info$host) == 1L)
    pid <- sprintf("%s; pid %d on %s", uuid, info$pid, info$host)
    stop_if_not(length(pid) == 1L)
    pid
  }

  if (!identical(future$owner, session_uuid())) {
    stop(FutureError(sprintf("Invalid usage of futures: A future whose value has not yet been collected can only be queried by the R process (%s) that created it, not by any other R processes (%s): %s", hpid(future$owner), hpid(session_uuid()), hexpr(future$expr)), future = future))
  }

  invisible(future)
}


#' Run a future
#'
#' @param future A \link{Future}.
#' @param \dots Not used.
#'
#' @return The [Future] object.
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
#' @return The [FutureResult] object.
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
    ## Always signal immediateCondition:s and as soon as possible.
    ## They will always be signaled if they exist.
    signalImmediateConditions(future)

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
    value(future, stdout = FALSE, signal = FALSE)

    ## Always signal immediateCondition:s and as soon as possible.
    ## They will always be signaled if they exist.
    signalImmediateConditions(future)
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

  .Defunct(msg = "Future objects with an internal version of 1.7 or earlier are defunct. This error is likely coming from a third-party package or other R code. Please report this to the maintainer of the 'future' package so this can be resolved.")
}


#' The value of a future
#'
#' Gets the value of a future.  If the future is unresolved, then
#' the evaluation blocks until the future is resolved.
#'
#' @param future A \link{Future}.
#' 
#' @param stdout If TRUE, any captured standard output is outputted,
#' otherwise not.
#' 
#' @param signal A logical specifying whether (\link[base]{conditions})
#' should signaled or be returned as values.
#' 
#' @param \dots Not used.
#'
#' @return An \R object of any data type.
#'
#' @details
#' This method needs to be implemented by the class that implement
#' the Future API.
#'
#' @aliases value
#' @rdname value
#' @export
#' @export value
value.Future <- function(future, stdout = TRUE, signal = TRUE, ...) {
  if (future$state == "created") {
    future <- run(future)
  }

  result <- result(future)
  stop_if_not(inherits(result, "FutureResult"))

  value <- result$value
  visible <- result$visible
  if (is.null(visible)) visible <- TRUE

  ## Always signal immediateCondition:s and as soon as possible.
  ## They will always be signaled if they exist.
  signalImmediateConditions(future)

  ## Output captured standard output?
  if (stdout && length(result$stdout) > 0 &&
      inherits(result$stdout, "character")) {
    cat(paste(result$stdout, collapse = "\n"))
  }



  ## Was RNG used without requesting RNG seeds?
  if (!isTRUE(future$.rng_checked) && isFALSE(future$seed) && isTRUE(result$rng)) {
    ## BACKWARD COMPATIBILITY: Until higher-level APIs set future()
    ## argument 'seed' to indicate that RNGs are used. /HB 2019-12-24
    ## future.apply (<= 1.3.0) and furrr
    rng_ok <-           is_lecyer_cmrg_seed(future$globals$...future.seeds_ii[[1]])
    rng_ok <- rng_ok || is_lecyer_cmrg_seed(future$envir$...future.seeds_ii[[1]])
    ## doFuture w/ doRNG, e.g. %dorng%
    rng_ok <- rng_ok || any(grepl(".doRNG.stream", deparse(future$expr), fixed = TRUE))
    if (!rng_ok) {
      onMisuse <- Sys.getenv("R_FUTURE_RNG_ONMISUSE", "ignore")
      onMisuse <- getOption("future.rng.onMisuse", onMisuse)
      if (onMisuse != "ignore") {
        label <- future$label
        if (is.null(label)) label <- "<none>"
        msg <- sprintf("UNRELIABLE VALUE: Future (%s) unexpectedly generated random numbers without specifying argument '[future.]seed'. There is a risk that those random numbers are not statistically sound and the overall results might be invalid. To fix this, specify argument argument '[future.]seed', e.g. 'seed=TRUE'. This ensures that proper, parallel-safe random numbers are produced via the L'Ecuyer-CMRG method. To disable this check, set option 'future.rng.onMisuse' to \"ignore\".", sQuote(label))
        if (onMisuse == "error") {
          cond <- simpleError(msg)
        } else if (onMisuse == "warning") {
          cond <- simpleWarning(msg)
        } else {
          cond <- NULL
          warning("Unknown value on option 'future.rng.onMisuse': ",
                  sQuote(onMisuse))
        }
        conditions <- result$conditions
        conditions[[length(conditions) + 1L]] <- list(condition = cond, signaled = FALSE)
        result$conditions <- conditions
        future$result <- result
      }
    }
  }
  future$.rng_checked <- TRUE

  ## Signal captured conditions?
  conditions <- result$conditions
  if (length(conditions) > 0) {
    if (signal) {
      mdebugf("Future state: %s", sQuote(future$state))
      ## Will signal an (eval) error, iff exists
      signalConditions(future, exclude = getOption("future.relay.immediate", "immediateCondition"), resignal = TRUE)
    } else {
      ## Return 'error' object, iff exists, otherwise NULL
      error <- conditions[[length(conditions)]]$condition
      if (inherits(error, "error")) {
        value <- error
        visible <- TRUE
      }
    }
  }
  
  if (visible) value else invisible(value)
}

value <- function(...) UseMethod("value")


#' @export
resolved.Future <- function(x, run = TRUE, ...) {
  ## A lazy future not even launched?
  if (x$state == "created") {
    if (run) x <- run(x)
    return(FALSE)
  }

  ## Signal conditions early, iff specified for the given future
  ## Note, collect = TRUE will block here, which is intentional
  signalEarly(x, collect = TRUE, ...)

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
#' use [sequential] futures.  This conservative approach protects
#' against spawning off recursive futures by mistake, especially
#' [multicore] and [multisession] ones.
#' The default will also set `options(mc.cores = 1L)` (*) so that
#' no parallel \R processes are spawned off by functions such as
#' \code{\link[parallel:mclapply]{mclapply}()} and friends.
#'
#' Currently it is not possible to specify what type of nested
#' futures to be used, meaning the above default will always be
#' used.
#' See \href{https://github.com/HenrikBengtsson/future/issues/37}{Issue #37}
#' for plans on adding support for custom nested future types.
#'
#' (*) Ideally we would set `mc.cores = 0` but that will unfortunately
#'     cause `mclapply()` and friends to generate an error saying
#'     "'mc.cores' must be >= 1".  Ideally those functions should
#'     fall back to using the non-multicore alternative in this
#'     case, e.g. `mclapply(...)` => `lapply(...)`.
#'     See \url{https://github.com/HenrikBengtsson/Wishlist-for-R/issues/7}
#'     for a discussion on this.
#'
#' @aliases getExpression.Future
#' @keywords internal
#'
#' @export
getExpression <- function(future, ...) UseMethod("getExpression")

#' @export
getExpression.Future <- function(future, expr = future$expr, local = future$local, stdout = future$stdout, conditionClasses = future$conditions, mc.cores = NULL, ...) {
  debug <- getOption("future.debug", FALSE)
  ##  mdebug("getExpression() ...")

  version <- future$version
  if (is.null(version)) {
    warning(FutureWarning("Future version was not set. Using default %s",
                          sQuote(version)))
  }


  enter <- bquote({
    base::local({
      ## covr: skip=4
      ## If 'future' is not installed on the worker, or a too old version
      ## of 'future' is used, then give an early error
      ## If future::FutureResult does not exist, give an error
      has_future <- base::requireNamespace("future", quietly = TRUE)
      version <- if (has_future) utils::packageVersion("future") else NULL
      if (!has_future || version < "1.8.0") {
        info <- base::c(
          r_version = base::gsub("R version ", "", base::R.version$version.string),
          platform = base::sprintf("%s (%s-bit)", base::R.version$platform, 8 * base::.Machine$sizeof.pointer),
          os = base::paste(base::Sys.info()[base::c("sysname", "release", "version")], collapse = " "),
          hostname = base::Sys.info()[["nodename"]]
        )
        info <- base::sprintf("%s: %s", base::names(info), info)
        info <- base::paste(info, collapse = "; ")
        if (!has_future) {
          msg <- base::sprintf("Package 'future' is not installed on worker (%s)", info)
        } else {
          msg <- base::sprintf("Package 'future' on worker (%s) must be of version >= 1.8.0: %s", info, version)
        }
        base::stop(msg)
      }
    })
  })
  exit <- NULL
  
  ## Should 'mc.cores' be set?
  if (!is.null(mc.cores)) {
##    mdebugf("getExpression(): setting mc.cores = %d inside future", mc.cores)
    ## FIXME: How can we guarantee that '...future.mc.cores.old'
    ## is not overwritten?  /HB 2016-03-14
    enter <- bquote({
      ## covr: skip=3
      .(enter)
      ...future.mc.cores.old <- base::getOption("mc.cores")
      base::options(mc.cores = .(mc.cores))
    })

    exit <- bquote({
      ## covr: skip=1
      base::options(mc.cores = ...future.mc.cores.old)
    })
  }
  
  ## Set RNG seed?
  if (is.numeric(future$seed)) {
    enter <- bquote({
      ## covr: skip=2
      .(enter)
      ## NOTE: It is not needed to call RNGkind("L'Ecuyer-CMRG") here
      ## because the type of RNG is defined by .Random.seed, especially
      ## .Random.seed[1].  See help("RNGkind"). /HB 2017-01-12
      base::assign(".Random.seed", .(future$seed), envir = base::globalenv(), inherits = FALSE)
    })
  }

  ## Packages needed by the future
  pkgs <- packages(future)
  if (length(pkgs) > 0) {
    if (debug) mdebugf("Packages needed by the future expression (n = %d): %s", length(pkgs), paste(sQuote(pkgs), collapse = ", "))
  } else {
    if (debug) mdebug("Packages needed by the future expression (n = 0): <none>")
  }

  ## Future strategies
  strategies <- plan("list")
  stop_if_not(length(strategies) >= 1L)

  ## Pass down the default or the remain set of future strategies?
  strategiesR <- strategies[-1]
  ##  mdebugf("Number of remaining strategies: %d", length(strategiesR))

  ## Identify packages needed by the futures
  if (length(strategiesR) > 0L) {
    ## Identify package namespaces needed for strategies
    pkgsS <- lapply(strategiesR, FUN = environment)
    pkgsS <- lapply(pkgsS, FUN = environmentName)
    pkgsS <- unique(unlist(pkgsS, use.names = FALSE))
    ## CLEANUP: Only keep those that are loaded in the current session
    pkgsS <- intersect(pkgsS, loadedNamespaces())
    if (debug) mdebugf("Packages needed by future strategies (n = %d): %s", length(pkgsS), paste(sQuote(pkgsS), collapse = ", "))
    pkgs <- unique(c(pkgs, pkgsS))
  } else {
    if (debug) mdebug("Packages needed by future strategies (n = 0): <none>")
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
      base::local({
        for (pkg in .(pkgs)) {
          base::loadNamespace(pkg)
          base::library(pkg, character.only = TRUE)
        }
      })
    })
  }

  ## Make sure to set all nested future strategies needed
  ## Use default future strategy?
  if (length(strategiesR) == 0L) strategiesR <- "default"
    
  ## Pass down future strategies
  enter <- bquote({
    ## covr: skip=2
    .(enter)
    future::plan(.(strategiesR), .cleanup = FALSE, .init = FALSE)
  })

  ## Reset future strategies when done
  exit <- bquote({
    ## covr: skip=2
    .(exit)
    future::plan(.(strategies), .cleanup = FALSE, .init = FALSE)
  })

  expr <- makeExpression(expr = expr, local = local, stdout = stdout, conditionClasses = conditionClasses, enter = enter, exit = exit, ..., version = version)
  if (getOption("future.debug", FALSE)) mprint(expr)

##  mdebug("getExpression() ... DONE")
  
  expr
} ## getExpression()


makeExpression <- local({
  skip <- skip.local <- NULL
  
  function(expr, local = TRUE, immediateConditions = FALSE, stdout = TRUE, conditionClasses = NULL, globals.onMissing = getOption("future.globals.onMissing", "ignore"), enter = NULL, exit = NULL, version = "1.8") {
    if (is.null(conditionClasses)) conditionClasses <- character(0L)
    if (immediateConditions) {
      immediateConditionClasses <- getOption("future.relay.immediate", "immediateCondition")
      conditionClasses <- unique(c(conditionClasses, immediateConditionClasses))
    } else {
      immediateConditionClasses <- character(0L)
    }
    
    if (is.null(skip)) {
      ## WORKAROUND: skip = c(7/12, 3) makes assumption about withCallingHandlers()
      ## and local().  In case this changes, provide internal options to adjust this.
      ## /HB 2018-12-28
      skip <<- getOption("future.makeExpression.skip", c(6L, 3L))
      skip.local <<- getOption("future.makeExpression.skip.local", c(12L, 3L))
    }
    
    ## Evaluate expression in a local() environment?
    if (local) {
      expr <- bquote(base::local(.(expr)))
      skip <- skip.local
    }
  
    ## Set and reset certain future.* options etc.
    enter <- bquote({
      ## Start time for future evaluation
      ...future.startTime <- base::Sys.time()
      
      ## covr: skip=7
      ...future.oldOptions <- base::options(
        ## Prevent .future.R from being source():d when future is attached
        future.startup.script = FALSE,
        
        ## Assert globals when future is created (or at run time)?
        future.globals.onMissing = .(globals.onMissing),
        
        ## Pass down other future.* options
        future.globals.maxSize     = .(getOption("future.globals.maxSize")),
        future.globals.method      = .(getOption("future.globals.method")),
        future.globals.onMissing   = .(getOption("future.globals.onMissing")),
        future.globals.onReference = .(getOption("future.globals.onReference")),
        future.globals.resolve     = .(getOption("future.globals.resolve")),
        future.resolve.recursive   = .(getOption("future.resolve.recursive")),
        
        ## Other options relevant to making futures behave consistently
        ## across backends
        width = .(getOption("width"))
      )
      .(enter)
    })
  
    exit <- bquote({
      .(exit)
      base::options(...future.oldOptions)
    })
  
  
    ## NOTE: We don't want to use local(body) w/ on.exit() because
    ## evaluation in a local is optional, cf. argument 'local'.
    ## If this was mandatory, we could.  Instead we use
    ## a tryCatch() statement. /HB 2016-03-14
  
    if (version == "1.8") {    
      expr <- bquote({
        ## covr: skip=6
        .(enter)
  
        ## Capture standard output?
        if (base::is.na(.(stdout))) {  ## stdout = NA
          ## Don't capture, but also don't block any output
        } else {
          if (.(stdout)) {  ## stdout = TRUE
            ## Capture all output
            ## NOTE: Capturing to a raw connection is much more efficient
            ## than to a character connection, cf.
            ## https://www.jottr.org/2014/05/26/captureoutput/
            ...future.stdout <- base::rawConnection(base::raw(0L), open = "w")
          } else {  ## stdout = FALSE
            ## Silence all output by sending it to the void
            ...future.stdout <- base::file(
              base::switch(.Platform$OS.type, windows = "NUL", "/dev/null"),
              open = "w"
            )
          }
          base::sink(...future.stdout, type = "output", split = FALSE)
          base::on.exit(if (!base::is.null(...future.stdout)) {
            base::sink(type = "output", split = FALSE)
            base::close(...future.stdout)
          }, add = TRUE)
        }
  
        ...future.frame <- base::sys.nframe()
        ...future.conditions <- base::list()
        ...future.rng <- base::globalenv()$.Random.seed
        ...future.result <- base::tryCatch({
          base::withCallingHandlers({
            ...future.value <- base::withVisible(.(expr))
            ## A FutureResult object (without requiring the future package)
            future::FutureResult(value = ...future.value$value, visible = ...future.value$visible, rng = !identical(base::globalenv()$.Random.seed, ...future.rng), started = ...future.startTime, version = "1.8")
          }, condition = base::local({
              ## WORKAROUND: If the name of any of the below objects/functions
              ## coincides with a promise (e.g. a future assignment) then we
              ## we will end up with a recursive evaluation resulting in error:
              ##   "promise already under evaluation: recursive default argument
              ##    reference or earlier problems?"
              ## To avoid this, we make sure to import the functions explicitly
              ## /HB 2018-12-22
              c <- base::c
              inherits <- base::inherits
              invokeRestart <- base::invokeRestart
              length <- base::length
              list <- base::list
              seq.int <- base::seq.int
              signalCondition <- base::signalCondition
              sys.calls <- base::sys.calls
              Sys.time <- base::Sys.time
              `[[` <- base::`[[`
              `+` <- base::`+`
              `<<-` <- base::`<<-`
              
              sysCalls <- function(calls = sys.calls(), from = 1L) {
                calls[seq.int(from = from + .(skip[1L]), to = length(calls) - .(skip[2L]))]
              }
              function(cond) {
                ## Handle error:s specially
                if (inherits(cond, "error")) {
                  sessionInformation <- function() {
                    list(
                      r          = base::R.Version(),
                      locale     = base::Sys.getlocale(),
		      rngkind    = base::RNGkind(),
		      namespaces = base::loadedNamespaces(),
		      search     = base::search(),
		      system     = base::Sys.info()
		    )
                  }

                  ## Record condition
                  ...future.conditions[[length(...future.conditions) + 1L]] <<- list(
                    condition = cond,
                    calls     = c(sysCalls(from = ...future.frame), cond$call),
                    session   = sessionInformation(),
                    timestamp = Sys.time(),
                    signaled  = 0L
                  )
		  
                  signalCondition(cond)
                } else if (inherits(cond, .(conditionClasses))) {
                  ## Relay 'immediateCondition' conditions immediately?
                  ## If so, then do not muffle it and flag it as signalled
                  ## already here.
                  signal <- .(immediateConditions) && inherits(cond, .(immediateConditionClasses))
                  ## Record condition
                  ...future.conditions[[length(...future.conditions) + 1L]] <<- list(
		    condition = cond,
		    signaled = base::as.integer(signal)
		  )
                  if (!signal) {
                    ## muffleCondition <- future:::muffleCondition()
                    muffleCondition <- .(muffleCondition)
                    muffleCondition(cond)
                  }
                }
              }
            }) ## local()
          ) ## withCallingHandlers()
        }, error = function(ex) {
          base::structure(base::list(
            value = NULL,
            visible = NULL,
            conditions = ...future.conditions,
            rng = !identical(base::globalenv()$.Random.seed, ...future.rng),
            version = "1.8"
          ), class = "FutureResult")
        }, finally = .(exit))
	
        Sys.time
	
        if (base::is.na(.(stdout))) {
        } else {
          base::sink(type = "output", split = FALSE)
          if (.(stdout)) {
            ...future.result$stdout <- base::rawToChar(
              base::rawConnectionValue(...future.stdout)
            )
          } else {
            ...future.result["stdout"] <- base::list(NULL)
          }
          base::close(...future.stdout)
          ...future.stdout <- NULL
        }
  
        ...future.result$conditions <- ...future.conditions
        
        ...future.result
      })
    } else if (version == "1.7") {  ## Deprecated
      expr <- bquote({
        ## covr: skip=6
        .(enter)
        base::tryCatch({
          .(expr)
        }, finally = {
          .(exit)
        })
      })
    } else {
      stop(FutureError("Internal error: Non-supported future expression version: ", version))
    }
  
    expr
  }
}) ## makeExpression()


globals <- function(future, ...) UseMethod("globals")

globals.Future <- function(future, ...) {
  future[["globals"]]
}

packages <- function(future, ...) UseMethod("packages")

packages.Future <- function(future, ...) {
  future[["packages"]]
}
