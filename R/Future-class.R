#' A future represents a value that will be available at some point in the future
#'
#' A \emph{future} is an abstraction for a \emph{value} that may
#' available at some point in the future.  A future can either be
#' \code{unresolved} or \code{resolved}, a state which can be checked
#' with \code{\link{resolved}()}.  As long as it is \emph{unresolved}, the
#' value is not available.  As soon as it is \emph{resolved}, the value
#' is available via \code{\link{value}()}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} in which the evaluation
#' is done (or inherits from if \code{local} is TRUE).
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param earlySignal Specified whether conditions should be signaled as soon as possible or not.
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
#' An alternative approach is to use the \code{\link{\%<=\%}} infix
#' assignment operator, which creates a future from the
#' right-hand-side (RHS) R expression and assigns its future value
#' to a variable as a \emph{\link[base]{promise}}.
#'
#' @export
#' @name Future-class
Future <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, earlySignal=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  args <- list(...)

  core <- new.env(parent=emptyenv())
  core$expr <- expr
  core$envir <- envir
  core$owner <- uuid()
  core$earlySignal <- earlySignal

  ## The current state of the future, e.g.
  ## 'created', 'running', 'finished', 'failed', 'interrupted'.
  core$state <- 'created'

  ## Additional named arguments
  for (key in names(args)) core[[key]] <- args[[key]]

  structure(core, class=c("Future", class(core)))
}


## Checks whether Future is owned by the current process or not
assertOwner <- function(future, ...) {
  hpid <- function(uuid) {
    info <- attr(uuid, "info")
    sprintf("%s; pid %d on %s", uuid, info$pid, info$host)
  }

  if (!isTRUE(all.equal(future$owner, uuid(), check.attributes=FALSE))) {
    stop(sprintf("Invalid usage of futures: A future whose value has not yet been collected can only be queried by the R process (%s) that created it, not by any other R processes (%s): %s", hpid(future$owner), hpid(uuid()), hexpr(future$expr)))
  }

  invisible(future)
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
#' @export
#' @export value
#' @aliases value
#' @export
value.Future <- function(future, signal=TRUE, ...) {
  if (!future$state %in% c('finished', 'failed', 'interrupted')) {
    msg <- sprintf("Internal error: value() called on a non-finished future: %s", class(future)[1])
    mdebug(msg)
    stop(msg)
  }

  value <- future$value
  if (signal && future$state == 'failed') {
    mdebug("Future state: %s", sQuote(value))
    stop(value)
  }

  value
}

value <- function(...) UseMethod("value")


#' @export
resolved.Future <- function(x, ...) {
  ## Is future even launched?
  if (x$state == 'created') return(FALSE)

  ## Signal conditions early, iff specified for the given future
  signalEarly(x)

  x$state %in% c('finished', 'failed', 'interrupted')
}


#' Inject code for the next type of future to use for nested futures
#'
#' @param future Current future.
#' @param ... Not used.
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

makeExpression <- function(expr, enter=NULL, exit=NULL) {
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


#' @export
getExpression.Future <- function(future, ...) {
  strategies <- plan("list")
  if (length(strategies) > 1L) {
    ## Identify package
    pkgs <- lapply(strategies, FUN=environment)
    pkgs <- lapply(pkgs, FUN=environmentName)
    pkgs <- unique(unlist(pkgs))

    ## Sanity check by verifying packages can be loaded already here
    ## If there is somethings wrong in 'pkgs', we get the error
    ## already before launching the future.
    for (pkg in pkgs) loadNamespace(pkg)

    enter <- bquote({
      ## covr: skip=4
      for (pkg in .(pkgs)) library(pkg, character.only=TRUE)
      oplans <- future::plan("list")
      future::plan(.(strategies[-1]))
    })

    exit <- bquote({
      ## covr: skip=1
      future::plan(.(strategies))
    })
  } else {
    ## If end of future stack, fall to using single-core
    ## processing.  In this case we don't have to rely
    ## on the future package.  Instead, we can use the
    ## light-weight approach where we force the number of
    ## cores available to be one.  This we achieve by
    ## setting the number of _additional_ cores to be
    ## zero (sic!).

    ## FIXME: How can we guarantee that '.future.mc.cores.old'
    ## is not overwritten?  /HB 2016-03-14
    enter <- quote({
      ## covr: skip=3
      .future.mc.cores.old <- getOption("mc.cores")
      options(mc.cores=0L)
    })

    exit <- bquote({
      ## covr: skip=1
      options(mc.cores=.future.mc.cores.old)
    })
  }

  makeExpression(expr=future$expr, enter=enter, exit=exit)
} ## getExpression()
