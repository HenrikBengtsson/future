tweakExpression <- function(expr) {
  if (!is.language(expr)) return(expr)

  for (ii in seq_along(expr)) {
    # If expr[[ii]] is "missing", ignore the error.  This
    # happens with for instance expressions like x[,1].
    # FIXME: Is there a better way?!? /HB 2014-05-08
    tryCatch({
      exprI <- expr[[ii]]
      op <- exprI[[1]]
      if (!is.symbol(op)) next
      op <- as.character(op)
      if (op %in% c("<<-", "%<-%", "%<=%")) {
        lhs <- exprI[[2]]
        rhs <- exprI[[3]]
        ## covr: skip=1
        expr[[ii]] <- substitute({a <- b; e}, list(a=lhs, b=rhs, e=exprI))
      } else if (op %in% c("->>", "%->%", "%=>%")) {
        lhs <- exprI[[3]]
        rhs <- exprI[[2]]
        ## covr: skip=1
        expr[[ii]] <- substitute({a <- b; e}, list(a=lhs, b=rhs, e=exprI))
      }
    }, error=function(ex) {})
  }
  expr
} # tweakExpression()
