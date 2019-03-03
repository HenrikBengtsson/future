#' A future represents a value that will be available at some point in the future
#'
#' A \emph{future} is an abstraction for a \emph{value} that may
#' available at some point in the future.  A future can either be
#' \code{unresolved} or \code{resolved}, a state which can be checked
#' with \code{\link{resolved}()}.  As long as it is \emph{unresolved}, the
#' value is not available.  As soon as it is \emph{resolved}, the value
#' is available via \code{\link[future]{value}()}.
#'
#' @param expr An \R \link[base]{expression}.
#'
#' @param envir The \link{environment} from where global objects should be
#' identified.
#'
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#'
#' @param stdout If TRUE (default), then the standard output is captured,
#' and re-outputted when \code{value()} is called.
#' If FALSE, any output is silenced (by sinking it to the null device as
#' it is outputted).
#' If NA (not recommended), output is \emph{not} intercepted.
#' 
#' @param conditions A character string of conditions classes to be captured
#' and relayed.  The default is to relay messages and warnings.
#' To not intercept conditions, use \code{conditions = character(0L)}.
#' Errors are always relayed.
#' 
#' @param globals (optional) a logical, a character vector, or a named list
#' to control how globals are handled.
#' For details, see section 'Globals used by future expressions'
#' in the help for \code{\link{future}()}.
#' 
#' @param packages (optional) a character vector specifying packages
#' to be attached in the \R environment evaluating the future.
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
#' evaluated the future) only after the value of the future is collected.
#' Exactly when the values are collected may depend on various factors such
#' as number of free workers and whether \code{earlySignal} is TRUE (more
#' frequently) or FALSE (less frequently).
#' \emph{Some types of futures ignore this argument.}
#'
#' @param earlySignal Specified whether conditions should be signaled as soon
#' as possible or not.
#'
#' @param label An optional character string label attached to the future.
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
#' It returns a Future that evaluates an \R expression in the future.
#' An alternative approach is to use the \code{\link{\%<-\%}} infix
#' assignment operator, which creates a future from the
#' right-hand-side (RHS) \R expression and assigns its future value
#' to a variable as a \emph{\link[base]{promise}}.
#'
#' @export
#' @keywords internal
#' @name Future-class
Future <- function(expr = NULL, envir = parent.frame(), substitute = FALSE, stdout = TRUE, conditions = c("message", "warning"), globals = NULL, packages = NULL, seed = NULL, lazy = FALSE, local = TRUE, gc = FALSE, earlySignal = FALSE, label = NULL, ...) {
  if (substitute) expr <- substitute(expr)
  
  if (!is.null(seed)) {
    if (!is_lecyer_cmrg_seed(seed)) {
      msg <- sprintf("Argument 'seed' must be L'Ecuyer-CMRG RNG seed (integer vector of length seven) as returned by parallel::nextRNGStream(): %s of length %d", mode(seed), length(seed))
      mdebug(msg)
      mprint(seed)
      stop(msg)
    }
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
  if (is.null(version)) version <- "1.7"
  core$version <- version
  core$.callResult <- FALSE  ## Temporary until "1.7" defunct

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
      cat(sprintf("Resolved: %s\n", tryCatch(resolved(x), error = conditionMessage)))
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
      conditions <- result$conditions
      ## BACKWARD COMPATIBILITY: future (< 1.11.0)
      if (!is.list(conditions) && !is.null(result[["condition"]])) {
        conditions <- list(list(condition = result[["condition"]]))
      }
      conditionClasses <- vapply(conditions, FUN = function(c) class(c$condition)[1], FUN.VALUE = NA_character_)
      cat(sprintf("Conditions captured: [n=%d] %s\n", length(conditionClasses), hpaste(sQuote(conditionClasses))))
    }
  } else {
    cat("Value: <not collected>\n")
    cat("Conditions captured: <none>\n")
  }
  cat(sprintf("Early signalling: %s\n", isTRUE(x$earlySignal)))
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
#' This function is only part of the \emph{backend} Future API.
#' This function is \emph{not} part of the frontend Future API.
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
    value(future, stdout = FALSE, signal = FALSE)
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
    return(FutureResult(conditions = list(list(condition = value)), calls = calls, version = "1.7"))
  }

  FutureResult(value = result, version = "1.7")
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

  ## Output captured standard output?
  if (stdout && length(result$stdout) > 0 &&
      inherits(result$stdout, "character")) {
    cat(paste(result$stdout, collapse = "\n"))
  }
  
  ## Signal captured conditions?
  conditions <- result$conditions
  ## BACKWARD COMPATIBILITY: future (< 1.11.0)
  if (!is.list(conditions) && !is.null(result[["condition"]])) {
    conditions <- list(list(condition = result[["condition"]]))
  }
  if (length(conditions) > 0) {
    if (signal) {
      mdebug("Future state: %s", sQuote(future$state))
      resignalConditions(future) ## Will signal an (eval) error, iff exists
    } else {
      ## Return 'error' object, iff exists, otherwise NULL
      error <- conditions[[length(conditions)]]$condition
      if (inherits(error, "error")) value <- error
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
#' no parallel \R processes are spawned off by functions such as
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
#' @aliases getExpression.Future
#' @keywords internal
#'
#' @export
getExpression <- function(future, ...) UseMethod("getExpression")

#' @export
getExpression.Future <- function(future, local = future$local, stdout = future$stdout, conditionClasses = future$conditions, mc.cores = NULL, ...) {
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

  expr <- makeExpression(expr = future$expr, local = local, stdout = stdout, conditionClasses = conditionClasses, enter = enter, exit = exit, version = version)
  if (getOption("future.debug", FALSE)) mprint(expr)

##  mdebug("getExpression() ... DONE")
  
  expr
} ## getExpression()


makeExpression <- local({
  skip <- skip.local <- NULL
  
  function(expr, local = TRUE, stdout = TRUE, conditionClasses = NULL, globals.onMissing = getOption("future.globals.onMissing", "ignore"), enter = NULL, exit = NULL, version = "1.7") {
    if (is.null(conditionClasses)) conditionClasses <- character(0L)
  
    if (is.null(skip)) {
      ## WORKAROUND: skip = c(7/12, 3) makes assumption about withCallingHandlers()
      ## and local().  In case this changes, provide internal options to adjust this.
      ## /HB 2018-12-28
      skip <<- getOption("future.makeExpression.skip", c(6L, 3L))
      skip.local <<- getOption("future.makeExpression.skip.local", c(12L, 3L))
    }
    
    ## Evaluate expression in a local() environment?
    if (local) {
      expr <- bquote(local(.(expr)))
      skip <- skip.local
    }
  
    ## Set and reset certain future.* options etc.
    enter <- bquote({
      ## Start time for future evaluation
      ...future.startTime <- Sys.time()
      
      ## covr: skip=7
      ...future.oldOptions <- options(
        ## Prevent .future.R from being source():d when future is attached
        future.startup.loadScript = FALSE,
        
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
  
        ## Capture standard output?
        if (is.na(.(stdout))) {  ## stdout = NA
          ## Don't capture, but also don't block any output
        } else {
          if (.(stdout)) {  ## stdout = TRUE
            ## Capture all output
            ## NOTE: Capturing to a raw connection is much more efficient
            ## than to a character connection, cf.
            ## https://www.jottr.org/2014/05/26/captureoutput/
            ...future.stdout <- rawConnection(raw(0L), open = "w")
          } else {  ## stdout = FALSE
            ## Silence all output by sending it to the void
            ...future.stdout <- file(
              switch(.Platform$OS.type, windows = "NUL", "/dev/null"),
              open = "w"
            )
          }
          sink(...future.stdout, type = "output", split = FALSE)
          on.exit(if (!is.null(...future.stdout)) {
            sink(type = "output", split = FALSE)
            close(...future.stdout)
          }, add = TRUE)
        }
  
        ...future.frame <- sys.nframe()
        ...future.conditions <- list()
        ...future.result <- tryCatch({
          withCallingHandlers({
            ...future.value <- .(expr)
            ## A FutureResult object (without requiring the future package)
            future::FutureResult(value = ...future.value, started = ...future.startTime, version = "1.8")
          }, condition = local({
              ## WORKAROUND: If the name of any of the below objects/functions
              ## coincides with a promise (e.g. a future assignment) then we
              ## we will end up with a recursive evaluation resulting in error:
              ##   "promise already under evaluation: recursive default argument
              ##    reference or earlier problems?"
              ## To avoid this, we make sure to import the functions explicitly
              ## /HB 2018-12-22
              inherits <- base::inherits
              invokeRestart <- base::invokeRestart
              length <- base::length
              seq.int <- base::seq.int
              sys.calls <- base::sys.calls
              `[[` <- base::`[[`
              `+` <- base::`+`
              `<<-` <- base::`<<-`
              
              sysCalls <- function(calls = sys.calls(), from = 1L) {
                calls[seq.int(from = from + .(skip[1L]), to = length(calls) - .(skip[2L]))]
              }
  
              function(cond) {
                ## Handle error:s specially
                if (inherits(cond, "error")) {
                  ...future.conditions[[length(...future.conditions) + 1L]] <<- list(condition = cond, calls = c(sysCalls(from = ...future.frame), cond$call), timestamp = base::Sys.time())
                  signalCondition(cond)
                } else if (inherits(cond, .(conditionClasses))) {
                  ...future.conditions[[length(...future.conditions) + 1L]] <<- list(condition = cond)
                  if (inherits(cond, "message")) {
                    invokeRestart("muffleMessage")
                  } else if (inherits(cond, "warning")) {
                    invokeRestart("muffleWarning")
                  }
                }
              }
            }) ## local()
          ) ## withCallingHandlers()
        }, error = function(ex) {
          structure(list(
            value = NULL,
            conditions = ...future.conditions,
            condition = ex,      ## DEPRECATED: future (>= 1.11.0)
            calls = sys.calls(), ## DEPRECATED: future (>= 1.11.0)
            version = "1.8"
          ), class = "FutureResult")
        }, finally = .(exit))
        
        if (is.na(.(stdout))) {
        } else {
          sink(type = "output", split = FALSE)
          if (.(stdout)) {
            ...future.result$stdout <- rawToChar(
              rawConnectionValue(...future.stdout)
            )
          } else {
            ...future.result["stdout"] <- list(NULL)
          }
          close(...future.stdout)
          ...future.stdout <- NULL
        }
  
        ...future.result$conditions <- ...future.conditions
        
        ...future.result
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
