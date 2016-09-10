#' Create a future
#'
#' Creates a future from an expression and returns it.
#' The state of the future is either unresolved or resolved.
#' When it becomes resolved, at some point in the future,
#' its value can be retrieved.
#'
#' @param expr An R \link[base]{expression}.
#' @param envir The \link{environment} from where global
#' objects should be identified.  Depending on "evaluator",
#' it may also be the environment in which the expression
#' is evaluated.
#' @param substitute If TRUE, argument \code{expr} is
#' \code{\link[base]{substitute}()}:ed, otherwise not.
#' @param globals (optional) a logical, a character vector,
#' or a named list for controlling how globals are handled.
#' For details, see below section.
#' This argument can be specified also for \code{future()}
#' in which case it is passed via \code{...}.
#' @param evaluator The actual function that evaluates
#' \code{expr} and returns a future.  The evaluator function
#' should accept all of the same arguments as this function
#' (except \code{evaluator}).
#' @param ... Additional arguments passed to the "evaluator".
#'
#' @return A \link{Future}.
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
#'   y <- future({ b <- 2; a * b })
#' }
#' variable \code{a} is a global of future assignment \code{y} whereas
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
#' much less tedious and error prone than manually specify them.
#'
#' However, for full control, it is also possible to explicitly specify
#' exactly which the globals are by providing their names as a character
#' vector.
#' In the above example, we could use
#' \preformatted{
#'   a <- 42
#'   y <- future({ b <- 2; a * b }, globals = "a")
#' }
#'
#' Yet another alternative is to explicitly specify also the values of
#' globals using a named list as in
#' \preformatted{
#'   a <- 42
#'   y <- future({ b <- 2; a * b }, globals = list(a = a))
#' }
#'
#' Specifying globals explicitly avoids the overhead added from
#' automatically identifying the globals and gathering their values.
#' Futhermore, if we know that the future expression does not make use
#' of any global variables, we can disable the automatic search for
#' globals by using
#' \preformatted{
#'   y <- future({ a <- 42; b <- 2; a * b }, globals = FALSE)
#' }
#'
#' Future expressions often make use of functions from one or more packages.
#' As long as these functions are part of the set of globals, the future
#' package will make sure that those packages are attached when the future
#' is resolved.  Because there is no need for such globals to be frozen
#' or exported, the future package will not export them, which reduces
#' the amount of transfer objects.
#' For example, in
#' \preformatted{
#'   x <- rnorm(1000)
#'   y <- future(median(x))
#' }
#' variable \code{x} and \code{median()} are globals, but only \code{x}
#' is exported whereas \code{median()}, which is part of the \pkg{stats}
#' package, is not exported.  Instead the \pkg{stats} package is made
#' sure to be attached when the future expression is evaluated.
#'  Effectively, the above becomes
#' \preformatted{
#'   x <- rnorm(1000)
#'   y <- future({
#'     library("stats")
#'     median(x)
#'   })
#' }
#'
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
