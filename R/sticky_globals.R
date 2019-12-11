#' Place a sticky-globals environment immediately after the global environment
#'
#' @param erase (logical) If TRUE, the environment is erased, otherwise not.
#'
#' @param name (character) The name of the environment on the [base::search]
#' path.
#'
#' @param pos (integer) The position on the search path where the
#' environment should be positioned.  If `pos == 0L`, then the environment
#' is detached, if it exists.
#'
#' @return (invisible; environment) The environment.
#'
#' @keywords internal
sticky_globals <- local({
  attach <- base::attach
  
  function(erase = FALSE, name = "future:sticky_globals", pos = 2L) {
  
    search_path <- search()
    stop_if_not((pos == 0L || pos >= 2L), pos < length(search_path))
    curr_pos <- match(name, table = search_path)
  
    ## Detach?
    if (pos == 0L) {
      if (is.na(curr_pos)) return(NULL)
      env <- detach(pos = curr_pos)
      return(env)
    }
    
    if (is.na(curr_pos)) {
      env <- attach(NULL, name = name, pos = pos)
    } else {
      if (erase) {
        env <- detach(pos = curr_pos)
        env <- attach(NULL, name = name, pos = pos)
      } else if (curr_pos != pos) {
        child <- pos.to.env(pos - 1L)
        env <- detach(pos = curr_pos)
        parent.env(env) <- pos.to.env(pos)
        parent.env(child) <- env
      } else {
        env <- pos.to.env(pos)
      }
    }
    
    env
  }
})

