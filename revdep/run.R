#!/usr/bin/env Rscript

precheck <- function() {
  ## WORKAROUND: Remove checked pkgs that use file links, which otherwise
  ## produce warnings which are promoted to errors by revdepcheck.
  unlink("revdep/checks/aroma.affymetrix", recursive = TRUE)
}

revdepcheck.extras::run()
