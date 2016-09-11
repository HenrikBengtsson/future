#' Create a future
#'
#' Creates a future from an expression.
#' The state of the future is either unresolved or resolved,
#' which can be checked using \code{\link{resolved}()}.
#' When it becomes resolved, at some point in the future,
#' its value can be retrieved using \code{\link{value}()}.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} from where global
#' objects should be identified.  Depending on "evaluator",
#' it may also be the environment in which the expression
#' is evaluated.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param globals A logical, a character vector,
#' or a named list for controlling how globals are handled.
#' For details, see below section.
#' This argument can be specified also for \code{future()}
#' in which case it is passed via the \dots arguments.
#' @param evaluator The actual function that evaluates
#' the future expression and returns a \link{Future}.
#' The evaluator function should accept all of the same
#' arguments as the ones listed here
#' (except \code{evaluator}, \code{FUN} and \code{args}).
#' The default evaluator function is the one that the user
#' has specified via \code{\link{plan}()}.
#' @param ... Additional arguments passed to the "evaluator".
#'
#' @return
#' \code{f <- future(expr)} creates a \link{Future} \code{f} that evaluates expression \code{expr}.
#'
#' \code{f <- futureCall(FUN, args)} creates a \link{Future} \code{f} that calls function \code{FUN} with arguments \code{args}.
#'
#'
#' @example incl/future.R
#'
#' @section Globals used by future expressions:
#' Global objects (short \emph{globals}) are objects (e.g. variables and
#' functions) that are needed in order for the future expression to be
#' evaluated while not being local objects that are defined by the future
#' expression. For example, in
#' \preformatted{
#'   a <- 42
#'   f <- future({ b <- 2; a * b })
#' }
#' variable \code{a} is a global of future assignment \code{f} whereas
#' \code{b} is a local variable.
#' In order for the future to be resolved successfully (and correctly),
#' all globals need to gathered when the future is created such that
#' they are available whenever and wherever the future is resolved.
#'
#' The default behavior (\code{globals = TRUE}) of all evaluator functions,
#' is that globals are automatically identified and gathered.
#' More precisely, globals are identified via code inspection of the
#' future expression \code{expr} and their values are retrieved with
#' environment \code{envir} as the starting point (basically via
#' \code{get(global, envir=envir, inherits=TRUE)}).
#' In most cases automatic collection of globals is sufficient and
#' less tedious and error prone than to manually specifying them.
#'
#' However, for full control, it is also possible to explicitly specify
#' exactly which the globals are by providing their names as a character
#' vector.
#' In the above example, we could use
#' \preformatted{
#'   a <- 42
#'   f <- future({ b <- 2; a * b }, globals = "a")
#' }
#'
#' Yet another alternative is to explicitly specify also their values
#' using a named list as in
#' \preformatted{
#'   a <- 42
#'   f <- future({ b <- 2; a * b }, globals = list(a = a))
#' }
#' or
#' \preformatted{
#'   f <- future({ b <- 2; a * b }, globals = list(a = 42))
#' }
#'
#' Specifying globals explicitly avoids the overhead added from
#' automatically identifying the globals and gathering their values.
#' Futhermore, if we know that the future expression does not make use
#' of any global variables, we can disable the automatic search for
#' globals by using
#' \preformatted{
#'   f <- future({ a <- 42; b <- 2; a * b }, globals = FALSE)
#' }
#'
#' Future expressions often make use of functions from one or more packages.
#' As long as these functions are part of the set of globals, the future
#' package will make sure that those packages are attached when the future
#' is resolved.  Because there is no need for such globals to be frozen
#' or exported, the future package will not export them, which reduces
#' the amount of transferred objects.
#' For example, in
#' \preformatted{
#'   x <- rnorm(1000)
#'   f <- future({ median(x) })
#' }
#' variable \code{x} and \code{median()} are globals, but only \code{x}
#' is exported whereas \code{median()}, which is part of the \pkg{stats}
#' package, is not exported.  Instead the \pkg{stats} package is made
#' sure to be on the search path when the future expression is evaluated.
#' Effectively, the above becomes
#' \preformatted{
#'   x <- rnorm(1000)
#'   f <- future({
#'     library("stats")
#'     median(x)
#'   })
#' }
#' To manually specify this, one can either do
#' \preformatted{
#'   x <- rnorm(1000)
#'   f <- future({
#'     median(x)
#'   }, globals = list(x = x, median = stats::median)
#' }
#' or
#' \preformatted{
#'   x <- rnorm(1000)
#'   f <- future({
#'     library("stats")
#'     median(x)
#'   }, globals = list(x = x))
#' }
#' Both are effectively the same.
#'
#' When using future assignments (via \code{\link{\%<-\%}}) globals
#' can be specified analogously using the \code{\link{\%globals\%}}
#' operator, e.g.
#' \preformatted{
#'   x <- rnorm(1000)
#'   y %<-% { median(x) } %globals% list(x = x, median = stats::median)
#' }
#'
#' @seealso
#' It is highly recommended that the evaluator is \emph{non-blocking}
#' (returns immediately), but it is currently not required.
#
#' The default evaluator function is \code{\link{eager}()},
#' but this can be changed via \code{\link{plan}()} function.
#'
#' @aliases futureCall
#' @export
#' @name future
future <- function(expr, envir=parent.frame(), substitute=TRUE, evaluator=plan(), ...) {
  if (substitute) expr <- substitute(expr)

  if (!is.function(evaluator)) {
    stop("Argument 'evaluator' must be a function: ", typeof(evaluator))
  }

  future <- evaluator(expr, envir=envir, substitute=FALSE, ...)

  ## Assert that a future was returned
  if (!inherits(future, "Future")) {
    stop("Argument 'evaluator' specifies a function that does not return a Future object: ", paste(sQuote(class(future)), collapse=", "))
  }

  future
}
