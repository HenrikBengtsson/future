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
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param local If TRUE, the expression is evaluated such that
#' all assignments are done to local temporary environment, otherwise
#' the assignments are done in the calling environment.
#' @param gc If TRUE, the garbage collector run (in the process that
#' evaluated the future) after the value of the future is collected.
#' \emph{Some types of futures ignore this argument.}
#' @param earlySignal Specified whether conditions should be signaled
#' as soon as possible or not.
#' @param label An optional character string label attached to the
#' future.
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
#' @export
#' @name Future-class
Future <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, local=TRUE, gc=FALSE, earlySignal=FALSE, label=NULL, ...) {
  if (substitute) expr <- substitute(expr)
  args <- list(...)

  core <- new.env(parent=emptyenv())
  core$expr <- expr
  core$envir <- envir
  core$owner <- session_uuid(attributes = TRUE)
  core$local <- local
  core$gc <- gc
  core$earlySignal <- earlySignal
  core$label <- label

  ## The current state of the future, e.g.
  ## 'created', 'running', 'finished', 'failed', 'interrupted'.
  core$state <- 'created'

  ## Additional named arguments
  for (key in names(args)) core[[key]] <- args[[key]]

  structure(core, class=c("Future", class(core)))
}


#' @importFrom utils head capture.output
#' @export
print.Future <- function(x, ...) {
  class <- class(x)
  cat(sprintf("%s:\n", class[1]))
  label <- x$label
  if (is.null(label)) label <- "<none>"
  cat("Label: ", sQuote(label), "\n", sep="")
  cat("Expression:\n")
  print(x$expr)
  cat(sprintf("Local evaluation: %s\n", x$local))
  cat(sprintf("Environment: %s\n", capture.output(x$envir)))
  g <- x$globals
  ng <- length(g)
  if (ng > 0) {
    gSizes <- sapply(g, FUN=object.size)
    gTotalSize <- sum(gSizes)
    g <- head(g, n=5L)
    gSizes <- head(gSizes, n=5L)
    g <- sprintf("%s %s of %s", sapply(g, FUN=function(x) class(x)[1]), sQuote(names(g)), sapply(gSizes, FUN=asIEC))
    if (ng > 5L) g <- sprintf("%s ...", g)
    cat(sprintf("Globals: %d objects totaling %s (%s)\n", ng, asIEC(gTotalSize), g))
  } else {
    cat("Globals: <none>\n")
  }

  hasValue <- exists("value", envir=x, inherits=FALSE)

  if (exists("value", envir=x, inherits=FALSE)) {
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

  if (hasValue) {
    cat(sprintf("Value: %s of class %s\n", asIEC(object.size(x$value)), sQuote(class(x$value)[1])))
  } else {
    cat("Value: <not collected>\n")
  }
  cat(sprintf("Early signalling: %s\n", isTRUE(x$earlySignal)))
  cat(sprintf("Owner process: %s\n", x$owner))
  cat(sprintf("Class: %s\n", paste(sQuote(class), collapse=", ")))
} ## print()


## Checks whether Future is owned by the current process or not
assertOwner <- function(future, ...) {
  hpid <- function(uuid) {
    info <- attr(uuid, "source")
    sprintf("%s; pid %d on %s", uuid, info$pid, info$host)
  }

  if (!identical(future$owner, session_uuid(attributes = TRUE))) {
    stop(FutureError(sprintf("Invalid usage of futures: A future whose value has not yet been collected can only be queried by the R process (%s) that created it, not by any other R processes (%s): %s", hpid(future$owner), hpid(session_uuid()), hexpr(future$expr)), future=future))
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
run.Future <- function(future, ...) {
  if (future$state != 'created') {
    stop("A future can only be launched once.")
  }
  
  future
}

run <- function(...) UseMethod("run")



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
value.Future <- function(future, signal=TRUE, ...) {
  if (future$state == 'created') {
    future <- run(future)
  }

  if (!future$state %in% c('finished', 'failed', 'interrupted')) {
    msg <- sprintf("Internal error: value() called on a non-finished future: %s", class(future)[1])
    mdebug(msg)
    stop(FutureError(msg, future=future))
  }

  value <- future$value
  if (signal && future$state == 'failed') {
    mdebug("Future state: %s", sQuote(future$state))
    mdebug("Future value: %s", sQuote(value))
    stop(FutureError(future))
  }

  value
}

value <- function(...) UseMethod("value")


#' @export
resolved.Future <- function(x, ...) {
  ## Is future even launched?
  if (x$state == 'created') return(FALSE)

  ## Signal conditions early, iff specified for the given future
  signalEarly(x, ...)

  x$state %in% c('finished', 'failed', 'interrupted')
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
#' use \link{eager} futures.  This conservative approach protects
#' against spawning off recursive futures by mistake, especially
#' \link{multicore} and \link{multisession} ones.
#' The default will also set \code{options(mc.cores=0L)}, which
#' means that no \emph{additional} R processes may be spawned off
#' by functions such as \code{\link[parallel:mclapply]{mclapply}()}
#' and friends (*).
#'
#' Currently it is not possible to specify what type of nested
#' futures to be used, meaning the above default will always be
#' used.
#' See \href{https://github.com/HenrikBengtsson/future/issues/37}{Issue #37}
#' for plans on adding support for custom nested future types.
#'
#' (*) Note that using \code{mc.cores=0} will unfortunately cause
#'     \code{mclapply()} and friends to generate an error saying
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
getExpression.Future <- function(future, mc.cores=NULL, ...) {
##  mdebug("getExpression() ...")

  ## Should 'mc.cores' be set?
  if (!is.null(mc.cores)) {
##    mdebug("getExpression(): setting mc.cores=%d inside future", mc.cores)
    ## FIXME: How can we guarantee that '...future.mc.cores.old'
    ## is not overwritten?  /HB 2016-03-14
    enter <- bquote({
      ## covr: skip=2
      ...future.mc.cores.old <- getOption("mc.cores")
      options(mc.cores=.(mc.cores))
    })

    exit <- bquote({
      ## covr: skip=1
      options(mc.cores=...future.mc.cores.old)
    })
  } else {
    enter <- exit <- NULL
  }

  ## Reset future strategies upon exit of future
  strategies <- plan("list")
  stopifnot(length(strategies) >= 1L)
  exit <- bquote({
    ## covr: skip=2
    .(exit)
    future::plan(.(strategies))
  })

  ## Pass down the default or the remain set of future strategies?
  strategiesR <- strategies[-1]
##  mdebug("Number of remaining strategies: %d\n", length(strategiesR))
  if (length(strategiesR) == 0L) {
##    mdebug("Set plan('default') inside future")
    ## Use default future strategy
    enter <- bquote({
      ## covr: skip=2
      .(enter)
      future::plan("default")
    })
  } else {
##    mdebug("Set plan(<remaining strategies>) inside future")
    ## Identify package namespaces for strategies
    pkgs <- lapply(strategiesR, FUN=environment)
    pkgs <- lapply(pkgs, FUN=environmentName)
    pkgs <- unique(unlist(pkgs, use.names=FALSE))
    pkgs <- intersect(pkgs, loadedNamespaces())
##    mdebug("Packages to be loaded by expression (n=%d): %s", length(pkgs), paste(sQuote(pkgs), collapse=", "))
      
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
            library(pkg, character.only=TRUE)
          }
        })
      })
    }
  
    ## Pass down future strategies
    enter <- bquote({
      ## covr: skip=2
      .(enter)
      future::plan(.(strategiesR))
    })
  } ## if (length(strategiesR) > 0L)

  expr <- makeExpression(expr=future$expr, local=future$local, enter=enter, exit=exit)
  if (getOption("future.debug", FALSE)) {
    print(expr)
  }

##  mdebug("getExpression() ... DONE")
  
  expr
} ## getExpression()


makeExpression <- function(expr, local=TRUE, globals.onMissing=getOption("future.globals.onMissing", "error"), enter=NULL, exit=NULL) {
  ## Evaluate expression in a local() environment?
  if (local) {
    a <- NULL; rm(list="a")  ## To please R CMD check
    expr <- substitute(local(a), list(a=expr))
  }

  ## Set and reset certain future.* options
  enter <- substitute({
    ## covr: skip=7
    ...future.oldOptions <- options(
      ## Prevent .future.R from being source():d when future is attached
      future.startup.loadScript=FALSE,
      ## Assert globals when future is created (or at run time)?
      future.globals.onMissing=globals.onMissing
    )
    enter
  }, env=list(globals.onMissing=globals.onMissing, enter=enter))

  exit <- substitute({
    exit
    options(...future.oldOptions)
  }, env=list(exit=exit))


  ## NOTE: We don't want to use local(body) w/ on.exit() because
  ## evaluation in a local is optional, cf. argument 'local'.
  ## If this was mandatory, we could.  Instead we use
  ## a tryCatch() statement. /HB 2016-03-14
  expr <- substitute({
    ## covr: skip=6
    enter
    tryCatch({
      body
    }, finally = {
      exit
    })
  }, env=list(enter=enter, body=expr, exit=exit))

  expr
} ## makeExpression()
