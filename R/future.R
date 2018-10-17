#' Create a future
#'
#' Creates a future that evaluates an \R expression or
#' a future that calls an \R function with a set of arguments.
#' How, when, and where these futures are evaluated can be configured
#' using \code{\link{plan}()} such that it is evaluated in parallel on,
#' for instance, the current machine, on a remote machine, or via a
#' job queue on a compute cluster.
#' Importantly, any \R code using futures remains the same regardless
#' on these settings and there is no need to modify the code when
#' switching from, say, sequential to parallel processing.
#'
#' @inheritParams Future-class
#' 
#' @param expr,value An \R \link[base]{expression}.
#'
#' @param evaluator The actual function that evaluates
#' the future expression and returns a \link{Future}.
#' The evaluator function should accept all of the same
#' arguments as the ones listed here
#' (except \code{evaluator}, \code{FUN} and \code{args}).
#' The default evaluator function is the one that the user
#' has specified via \code{\link{plan}()}.
#'
#' @param \dots Additional arguments passed to the "evaluator".
#'
#' @return
#' \code{f <- future(expr)} creates a \link{Future} \code{f} that evaluates expression \code{expr}, the value of the future is retrieved using \code{v <- value(f)}.
#'
#' @details
#' The state of a future is either unresolved or resolved.
#' The value of a future can be retrieved using \code{v <- \link{value}(f)}.
#' Querying the value of a non-resolved future will \emph{block} the call
#' until the future is resolved.
#' It is possible to check whether a future is resolved or not
#' without blocking by using \code{\link{resolved}(f)}.
#'
#' For a future created via a future assignment
#' (\code{x \%<-\% value} or \code{futureAssign("x", value)}), the value
#' is bound to a promise, which when queried will internally call
#' \code{\link{value}()}  on the future and which will then be resolved
#' into a regular variable bound to that value.  For example, with future
#' assignment \code{x \%<-\% value}, the first time variable \code{x} is
#' queried the call blocks if (and only if) the future is not yet resolved.
#' As soon as it is resolved, and any succeeding queries, querying \code{x}
#' will immediately give the value.
#'
#' The future assignment construct \code{x \%<-\% value} is not a formal
#' assignment per se, but a binary infix operator on objects \code{x}
#' and expression \code{value}.  However, by using non-standard evaluation,
#' this constructs can emulate an assignment operator similar to
#' \code{x <- value}. Due to \R's precedence rules of operators,
#' future expressions often need to be explicitly bracketed, e.g.
#' \code{x \%<-\% { a + b }}.
#'
#'
#' @section Eager or lazy evaluation:
#' By default, a future is resolved using \emph{eager} evaluation
#' (\code{lazy = FALSE}).  This means that the expression starts to
#' be evaluated as soon as the future is created.
#'
#' As an alternative, the future can be resolved using \emph{lazy}
#' evaluation (\code{lazy = TRUE}).  This means that the expression
#' will only be evaluated when the value of the future is requested.
#' \emph{Note that this means that the expression may not be evaluated
#' at all - it is guaranteed to be evaluated if the value is requested}.
#'
#' For future assignments, lazy evaluation can be controlled via the
#' \code{\%lazy\%} operator, e.g. \code{x \%<-\% { expr } \%lazy\% TRUE}.
#'
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
#' all globals need to be gathered when the future is created such that
#' they are available whenever and wherever the future is resolved.
#'
#' The default behavior (\code{globals = TRUE}) of all evaluator functions,
#' is that globals are automatically identified and gathered.
#' More precisely, globals are identified via code inspection of the
#' future expression \code{expr} and their values are retrieved with
#' environment \code{envir} as the starting point (basically via
#' \code{get(global, envir = envir, inherits = TRUE)}).
#' \emph{In most cases, such automatic collection of globals is sufficient
#' and less tedious and error prone than if they are manually specified}.
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
#' Furthermore, if we know that the future expression does not make use
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
#' package, is not exported.  Instead it is made sure that the \pkg{stats}
#' package is on the search path when the future expression is evaluated.
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
#'
#' Although rarely needed, a combination of automatic identification and manual
#' specification of globals is supported via attributes \code{add} (to add
#' false negatives) and \code{ignore} (to ignore false positives) on value
#' \code{TRUE}.  For example, with
#' \code{globals = structure(TRUE, ignore = "b", add = "a")} any globals
#' automatically identified except \code{b} will be used in addition to
#' global \code{a}.
#'
#' When using future assignments, globals can be specified analogously
#' using the \code{\link{\%globals\%}} operator, e.g.
#' \preformatted{
#'   x <- rnorm(1000)
#'   y \%<-\% { median(x) } \%globals\% list(x = x, median = stats::median)
#' }
#'
#' @example incl/future.R
#'
#'
#' @seealso
#' How, when and where futures are resolved is given by the
#' \emph{future strategy}, which can be set by the end user using the
#' \code{\link{plan}()} function.  The future strategy must not be
#' set by the developer, e.g. it must not be called within a package.
#'
#' @aliases futureCall
#' @export
#' @name future
future <- function(expr, envir = parent.frame(), substitute = TRUE, globals = TRUE, packages = NULL, lazy = FALSE, seed = NULL, evaluator = plan("next"), ...) {
  if (substitute) expr <- substitute(expr)

  if (!is.function(evaluator)) {
    stop("Argument 'evaluator' must be a function: ", typeof(evaluator))
  }

 future <- evaluator(expr, envir = envir, substitute = FALSE, lazy = lazy, seed = seed, globals = globals, packages = packages, ...)

  ## Assert that a future was returned
  if (!inherits(future, "Future")) {
    stop("Argument 'evaluator' specifies a function that does not return a Future object: ", paste(sQuote(class(future)), collapse = ", "))
  }

  future
}
