## base::bquote() gained argument 'splice' in R 4.0.0 (April 2020)
## Below is a verbatim copy of bquote() in R 4.0.4
if (getRversion() < "4.0.0") {
  bquote <- function (expr, where = parent.frame(), splice = FALSE) {
      if (!is.environment(where)) 
          where <- as.environment(where)
      unquote <- function(e) {
          if (is.pairlist(e)) 
              as.pairlist(lapply(e, unquote))
          else if (is.call(e)) {
              if (is.name(e[[1L]]) && as.character(e[[1]]) == ".") 
                  eval(e[[2L]], where)
              else if (splice) {
                  if (is.name(e[[1L]]) && as.character(e[[1L]]) == 
                    "..") 
                    stop("can only splice inside a call", call. = FALSE)
                  else as.call(unquote.list(e))
              }
              else as.call(lapply(e, unquote))
          }
          else e
      }
      is.splice.macro <- function(e) is.call(e) && is.name(e[[1L]]) && 
          as.character(e[[1L]]) == ".."
      unquote.list <- function(e) {
          p <- Position(is.splice.macro, e, nomatch = NULL)
          if (is.null(p)) 
              lapply(e, unquote)
          else {
              n <- length(e)
              head <- if (p == 1) 
                  NULL
              else e[1:(p - 1)]
              tail <- if (p == n) 
                  NULL
              else e[(p + 1):n]
              macro <- e[[p]]
              mexp <- eval(macro[[2L]], where)
              if (!is.vector(mexp)) 
                  stop("can only splice vectors")
              c(lapply(head, unquote), mexp, as.list(unquote.list(tail)))
          }
      }
      unquote(substitute(expr))
  }
} ## if (getRversion() < "4.0.0")
