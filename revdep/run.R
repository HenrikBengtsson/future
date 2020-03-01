#!/usr/bin/env Rscript
if (!requireNamespace("revdepcheck")) {
  stop('Install revdepcheck: remotes::install_github("r-lib/revdepcheck")')
}
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

  envs <- Sys.getenv()
  envs <- envs[grep("^_?R_CHECK_", names(envs))]
  if (length(envs) > 0L) {
    envs <- sprintf(" %02d. %s=%s", seq_along(envs), names(envs), envs)
    envs <- paste(envs, collapse="\n")
    cat(sprintf("Detected R-specific env vars that may affect R CMD check:\n%s\n", envs))
  }

  precheck()
  revdep_check(bioc = TRUE, num_workers = available_cores(),
               timeout = as.difftime(30, units = "mins"), quiet = FALSE)
}


todo <- function() {
  pkgs <- tryCatch(revdep_todo(), error = function(ex) NA)
  if (identical(pkgs, NA)) {
    cat("Revdepcheck has not been initiated\n")
    return()
  }
  pkgs <- subset(pkgs, status == "todo")
  if (nrow(pkgs) == 0) {
    cat("There are no packages on the revdepcheck todo list\n")
  } else {
    cat(sprintf("%d. %s\n", seq_len(nrow(pkgs)), pkgs$package))
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

revdep_this_package <- local({
  pkg <- NULL
  function() {
    if (is.null(pkg)) pkg <<- desc::desc(file = "DESCRIPTION")$get("Package")
    pkg
  }
})

revdep_children <- local({
  cache <- list()
  function(pkg = NULL) {
    if (is.null(pkg)) pkg <- revdep_this_package()
    pkgs <- cache[[pkg]]
    if (is.null(pkgs)) {
      pkgs <- revdepcheck:::cran_revdeps(pkg)
      pkgs <- setdiff(pkgs, pkg) ## WORKAROUND
      cache[[pkg]] <- pkgs
    }
    pkgs
  }
})

revdep_pkgs_with_status <- function(status = c("error", "failure")) {
  status <- match.arg(status)
  res <- revdepcheck::revdep_summary()
  if (status == "failure") {
    names(which(sapply(res, FUN = .subset2, "status") == "E"))
  } else if (status == "error") {
    field <- switch(status, error = "errors")
    has_status <- vapply(res, FUN = function(x) {
      z <- x[["new"]][[field]]
      is.character(z) && any(nchar(z) > 0)
    }, FUN.VALUE = NA, USE.NAMES = TRUE)
    has_status <- !is.na(has_status) & has_status
    names(has_status)[has_status]
  }
}

revdep_preinstall_libs <- function() {
  lib_paths <- .libPaths()
  lib_paths[1] <- sprintf("%s-revdepcheck", lib_paths[1])
  dir.create(lib_paths[1], recursive = TRUE, showWarnings = FALSE)
  lib_paths
}

revdep_preinstall <- function(pkgs) {
  oopts <- options(Ncpus = available_cores())
  lib_paths_org <- .libPaths()
  on.exit({
    .libPaths(lib_paths_org)
    options(oopts)
  })
  .libPaths(revdep_preinstall_libs())
  
  pkgs <- unique(pkgs)
  message(sprintf("Triggering crancache builds by pre-installing %d packages: %s", length(pkgs), paste(sQuote(pkgs), collapse = ", ")))
  message(".libPaths():")
  message(paste(paste0(" - ", .libPaths()), collapse = "\n"))
  ## Install one-by-one to update cache sooner
  for (kk in seq_along(pkgs)) {
    pkg <- pkgs[kk]
    message(sprintf("Pre-installing package %d of %d: %s (Ncpus = %d)",
                    kk, length(pkgs), pkg, getOption("Ncpus", 1L)))
    crancache::install_packages(pkg, dependencies = c("Depends", "Imports", "LinkingTo", "Suggests"))
  }
}

revdep_preinstall_update <- function() {
  oopts <- options(Ncpus = available_cores())
  lib_paths_org <- .libPaths()
  on.exit({
    .libPaths(lib_paths_org)
    options(oopts)
  })
  .libPaths(revdep_preinstall_libs())
  
  message("Update crancache for all pre-installing packages:")
  message(".libPaths():")
  message(paste(paste0(" - ", .libPaths()), collapse = "\n"))
  message(sprintf("Ncpus=%d", getOption("Ncpus", 1L)))
  crancache::update_packages(ask = FALSE)
}


args <- base::commandArgs(trailingOnly = TRUE)
if ("--reset" %in% args) {
  revdep_reset()
} else if ("--todo-reset" %in% args) {
  revdep_todo_reset()
  todo()
} else if ("--todo" %in% args) {
  todo()
} else if ("--add" %in% args) {
  pos <- which("--add" == args)
  if (pos == length(args)) stop("Missing value for option '--add'")
  pkgs <- parse_pkgs(args[seq(from = pos + 1L, to = length(args))])
  revdep_add(packages = pkgs)
  todo()
} else if ("--rm" %in% args) {
  pos <- which("--rm" == args)
  if (pos == length(args)) stop("Missing value for option '--rm'")
  pkgs <- parse_pkgs(args[seq(from = pos + 1L, to = length(args))])
  revdep_rm(packages = pkgs)
  todo()
} else if ("--add-broken" %in% args) {
  revdep_add_broken()
  todo()
} else if ("--add-error" %in% args) {
#  res <- revepcheck::revdep_summary()
  pkgs <- revdep_pkgs_with_status("error")
  str(pkgs)
  revdep_add(packages = pkgs)
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
} else if ("--show-check" %in% args) {
  pos <- which("--show-check" == args)
  if (pos == length(args)) stop("Missing value for option '--show-check")
  pkgs <- parse_pkgs(args[seq(from = pos + 1L, to = length(args))])
  for (pkg in pkgs) {
    for (dir in c("old", "new")) {
      path <- file.path("revdep", "checks", pkg, dir, sprintf("%s.Rcheck", pkg))
      if (!utils::file_test("-d", path)) next
      pathname <- file.path(path, "00check.log")
      cat("-----------------------------------------------\n")
      cat(sprintf("%s (%s):\n", pkg, dir))
      cat("-----------------------------------------------\n")
      bfr <- readLines(pathname, warn = FALSE)
      tail <- tail(bfr, n = 20L)
      writeLines(tail)
    }
  }
} else if ("--list-children" %in% args) {
  pkg <- revdep_this_package()
  pkgs <- revdepcheck:::cran_revdeps(pkg)
  cat(sprintf("[n=%d] %s\n", length(pkgs), paste(pkgs, collapse = " ")))
} else if ("--list-error" %in% args) {
  cat(paste(revdep_pkgs_with_status("error"), collapse = " "), "\n", sep="")
} else if ("--list-failure" %in% args) {
  cat(paste(revdep_pkgs_with_status("failure"), collapse = " "), "\n", sep="")
} else if ("--add-error" %in% args) {
  revdepcheck::revdep_add(packages = revdep_pkgs_with_status("error"))
} else if ("--add-failure" %in% args) {
  revdepcheck::revdep_add(packages = revdep_pkgs_with_status("failure"))
} else if ("--preinstall-update" %in% args) {
  revdep_preinstall_update()
} else if ("--preinstall-children" %in% args) {
  pkg <- revdep_this_package()
  pkgs <- revdepcheck:::cran_revdeps(pkg)
  revdep_preinstall(pkgs)
} else if ("--preinstall-error" %in% args) {
  res <- revdepcheck::revdep_summary()
  revdep_preinstall(revdep_pkgs_with_status("error"))
} else if ("--preinstall-failure" %in% args) {
  res <- revdepcheck::revdep_summary()
  revdep_preinstall(revdep_pkgs_with_status("failure"))
} else if ("--preinstall-todo" %in% args) {
  todo <- revdep_todo()
  revdep_preinstall(todo$package)
} else if ("--preinstall" %in% args) {
  pos <- which("--preinstall" == args)
  if (pos == length(args)) stop("Missing value for option '--preinstall'")
  pkgs <- parse_pkgs(args[seq(from = pos + 1L, to = length(args))])
  revdep_preinstall(pkgs)
} else {
  stopifnot(length(args) == 0L)
  check()
  revdep_report(all = TRUE)
}
