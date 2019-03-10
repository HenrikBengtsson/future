#!/usr/bin/env Rscript
library("revdepcheck")
options(warn = 1L)

available_cores <- function() {
  getenv <- function(name) {
    as.integer(Sys.getenv(name, NA_character_))
  }
  getopt <- function(name) {
    as.integer(getOption(name, NA_integer_))
  }
  if (is.finite(n <- getopt("mc.cores") + 1L)) return(n)
  if (is.finite(n <- getopt("Ncpus") + 1L)) return(n)
  if (is.finite(n <- getenv("PBS_NUM_PPN"))) return(n)
  if (is.finite(n <- getenv("SLURM_CPUS_PER_TASK"))) return(n)
  if (is.finite(n <- getenv("NSLOTS"))) return(n)
  1L
}

precheck <- function() {
  ## WORKAROUND: Remove checked pkgs that use file links, which otherwise
  ## produce warnings which are promoted to errors by revdepcheck.
  unlink("revdep/checks/aroma.affymetrix", recursive = TRUE)
}

check <- function() {
  if (file_test("-f", p <- Sys.getenv("R_CHECK_ENVIRON", "~/.R/check.Renviron"))) {
    cat(sprintf("R CMD check will use env vars from %s\n", sQuote(p)))
    cat(sprintf("To disable, set 'R_CHECK_ENVIRON=false' (a fake pathname)\n"))
  }
  
  envs <- grep("^_R_CHECK_", names(Sys.getenv()), value = TRUE)
  if (length(envs) > 0L) {
    cat(sprintf("Detected _R_CHECK_* env vars that will affect R CMD check: %s\n",
                paste(sQuote(envs), collapse = ", ")))
  }

  precheck()
  revdep_check(bioc = TRUE, num_workers = available_cores(),
               timeout = as.difftime(20, units = "mins"), quiet = FALSE)
}

todo <- function() {
  pkgs <- tryCatch(revdep_todo(), error = function(ex) NA)
  if (identical(pkgs, NA)) {
    cat("Revdepcheck has not been initiated\n")
  } else if (length(pkgs) == 0) {
    cat("There are no packages on the revdepcheck todo list\n")
  } else {
    cat(sprintf("%d. %s\n", seq_along(pkgs), pkgs))
  }
}

parse_pkgs <- function(pkgs) {
  pkgs <- unlist(strsplit(pkgs, split = ",", fixed = TRUE))
  pkgs <- gsub("[ \t'\"‘’]", "", pkgs)
  sort(unique(pkgs))
}

revdep_init <- function() {
  if (!revdepcheck:::db_exists(".")) revdepcheck:::db_setup(".")
}

revdep_todo_reset <- function() {
  revdep_init()
  db <- revdepcheck:::db(".")
  df <- data.frame(package = character(0L), stringsAsFactors = FALSE)
  DBI::dbWriteTable(db, "todo", df, overwrite = TRUE, append = FALSE)
}

revdep_children <- local({
  cache <- list()
  function(pkg = NULL) {
    if (is.null(pkg)) pkg <- desc::desc(file = "DESCRIPTION")$get("Package")
    pkgs <- cache[[pkg]]
    if (is.null(pkgs)) {
      pkgs <- revdepcheck:::cran_revdeps(pkg)
      pkgs <- setdiff(pkgs, pkg) ## WORKAROUND
      cache[[pkg]] <- pkgs
    }
    pkgs
  }
})

args <- base::commandArgs()
if ("--reset" %in% args) {
  revdep_reset()
} else if ("--todo-reset" %in% args) {
  revdep_todo_reset()
  todo()
} else if ("--todo" %in% args) {
  todo()
} else if ("--add" %in% args) {
  pos <- which("--add" == args)
  pkgs <- parse_pkgs(args[seq(from = pos + 1L, to = length(args))])
  revdep_add(packages = pkgs)
  todo()
} else if ("--add-broken" %in% args) {
  revdep_add_broken()
  todo()
} else if ("--add-all" %in% args) {
  revdep_init()
  pkgs <- revdep_children()
  for (pkg in pkgs) {
    pkgs <- c(pkgs, revdepcheck:::cran_revdeps(pkg))
  }
  pkgs <- unique(pkgs)
  revdep_add(packages = pkgs)
  todo()
} else if ("--add-grandchildren" %in% args) {
  revdep_init()
  pkgs <- NULL
  for (pkg in revdep_children()) {
    pkgs <- c(pkgs, revdepcheck:::cran_revdeps(pkg))
  }
  pkgs <- unique(pkgs)
  revdep_add(packages = pkgs)
  todo()
} else if ("--install" %in% args) {
  pos <- which("--install" == args)
  pkgs <- parse_pkgs(args[seq(from = pos + 1L, to = length(args))])
  crancache::install_packages(pkgs)
} else {
  check()
}
