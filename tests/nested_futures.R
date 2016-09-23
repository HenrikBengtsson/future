source("incl/start.R")

strategies <- future:::supportedStrategies()
strategies <- setdiff(strategies, "multiprocess")

message("*** Nested futures ...")

for (strategy1 in strategies) {
  for (strategy2 in strategies) {
    message(sprintf("- plan(list('%s', '%s')) ...", strategy1, strategy2))
    plan(list(a="lazy", b=strategy1, c=strategy2))
    
    nested <- plan("list")
    stopifnot(
      length(nested) == 3L,
      all(names(nested) == c("a", "b", "c")),
      inherits(plan(), "lazy")
    )
    
    x %<-% {
      a <- 1L
      
      plan_a <- plan("list")
      nested_a <- nested[-1] 
      stopifnot(
        length(nested_a) == 2L,
        length(plan_a) == 2L,
	inherits(plan_a[[1]], "future"),
        all.equal(plan_a, nested_a),
        inherits(plan(), strategy1)
      )
      
      y %<-% {
        b <- 2L
        plan_b <- plan("list")
        nested_b <- nested_a[-1]
        stopifnot(
          length(nested_b) == 1L,
          length(plan_b) == 1L,
	  inherits(plan_b[[1]], "future"),
          all.equal(plan_b, nested_b),
          inherits(plan(), strategy2)
        )

        z %<-% {
          c <- 3L
          plan_c <- plan("list")
          nested_c <- nested_b[-1]
          stopifnot(
            length(nested_c) == 0L,
            length(plan_c) == 1L,
  	    inherits(plan_c[[1]], "future"),
	    ## FIXME:
  	    ## inherits(plan_c[[1]], "eager"),
            ## inherits(plan(), "eager"),
	    TRUE
          )
  
  	  list(a = a, nested_a = nested_a, plan_a = plan_a,
  	       b = b, nested_b = nested_b, plan_b = plan_b,
  	       c = c, nested_c = nested_c, plan_c = plan_c)
	}
	z
      }
      y
    }
    
    str(x)

    stopifnot(
      length(x) == 3*3,
      all(names(x) == c("a", "nested_a", "plan_a",
                        "b", "nested_b", "plan_b",
			"c", "nested_c", "plan_c")),
      x$a == 1L,
      x$b == 2L,
      x$c == 3L,
      is.list(x$plan_a),
      length(x$plan_a) == 2L,
      inherits(x$plan_a[[1]], "future"),
      all.equal(x$plan_a, nested[-1L]),
      is.list(x$plan_b),
      length(x$plan_b) == 1L,
      inherits(x$plan_b[[1]], "future"),
      all.equal(x$plan_b, nested[-(1:2)]),
      is.list(x$plan_c),
      length(x$plan_c) == 1L,
      inherits(x$plan_c[[1]], "future"),
      ## FIXME:
      all.equal(x$plan_b, nested[-(1:2)]),
      TRUE
    )

    rm(list=c("nested", "x"))

    message(sprintf("- plan(list('%s', '%s')) ... DONE", strategy1, strategy2))
  }
}

message("*** Nested futures ... DONE")

source("incl/end.R")
