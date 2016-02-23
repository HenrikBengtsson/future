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
Future <- function(expr=NULL, envir=parent.frame(), substitute=FALSE, ...) {
  if (substitute) expr <- substitute(expr)
  args <- list(...)

  core <- new.env(parent=emptyenv())
  core$expr <- expr
  core$envir <- envir
  core$owner <- uuid()

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
#' @param onError A character string specifying how errors
#' (\link[base]{conditions}) should be handled in case they occur.
#' If \code{"signal"}, the error is signalled, e.g. captured
#' and re-thrown.  If instead \code{"return"}, they are
#' \emph{returned} as is.
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
value.Future <- function(future, onError=c("signal", "return"), ...) {
  onError <- match.arg(onError)

  if (!future$state %in% c('finished', 'failed', 'interrupted')) {
    msg <- sprintf("Internal error: value() called on a non-finished future: %s", class(future)[1])
    mdebug(msg)
    stop(msg)
  }

  value <- future$value
  if (future$state == 'failed' && onError == "signal") {
    mdebug("Future state: %s", sQuote(value))
    stop(value)
  }

  value
}

value <- function(...) UseMethod("value")


#' @export
resolved.Future <- function(x, ...) {
  x$state %in% c('finished', 'failed', 'interrupted')
}


#' Inject code for the next type of future to use for nested futures
#'
#' @param future Current future.
#' @param expr Future expression.
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
#' @aliases injectNextStrategy.Future
#' @keywords internal
injectNextStrategy <- function(future, expr, ...) UseMethod("injectNextStrategy")

#' @export
injectNextStrategy.Future <- function(future, expr, ...) {
  ## For now, the next future strategy is hard coded
  nextStrategy <- NULL

  ## Default is to fall back to single-core processing,
  ## i.e. forcing the number of _additional_ cores
  ## ('mc.cores') to be zero (sic!)
  if (is.null(nextStrategy)) {
    nextStrategy <- substitute({
      ## covr: skip=1
      options(mc.cores=0L)
    }, env=list())
  }

  ## Inject
  expr <- substitute({
    ## covr: skip=2
    a
    b
  }, env=list(a=nextStrategy, b=expr))

  expr
} ## nextStrategy()
