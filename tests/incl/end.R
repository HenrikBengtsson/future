## Undo future strategy
future::plan(oplan)


## Undo options
## (a) Added
added <- setdiff(names(options()), names(oopts0))
opts <- vector("list", length = length(added))
names(opts) <- added
options(opts)
## (b) Modified
options(oopts)
## (c) Removed, e.g. future.plan=NULL
removed <- setdiff(names(oopts0), names(options()))
opts <- oopts0[removed]
options(opts)
## (d) Assert that everything was undone
stopifnot(identical(options(), oopts0))


## Undo system environment variables
## (a) Added
cenvs <- Sys.getenv()
added <- setdiff(names(cenvs), names(oenvs0))
for (name in added) Sys.unsetenv(name)
## (b) Missing
missing <- setdiff(names(oenvs0), names(cenvs))
if (length(missing) > 0) do.call(Sys.setenv, as.list(oenvs0[missing]))
## (c) Modified?
for (name in intersect(names(cenvs), names(oenvs0))) {
  ## WORKAROUND: On Linux Wine, base::Sys.getenv() may
  ## return elements with empty names. /HB 2016-10-06
  if (nchar(name) == 0) next
  if (!identical(cenvs[[name]], oenvs0[[name]])) {
    do.call(Sys.setenv, as.list(oenvs0[name]))
  }
}
## (d) Assert that everything was undone
stopifnot(identical(Sys.getenv(), oenvs0))


## Undo variables
rm(list = c(setdiff(ls(), ovars)))


## Travis CI specific: Explicit garbage collection because it
## looks like Travis CI might run out of memory during 'covr'
## testing and we now have so many tests. /HB 2017-01-11
if ("covr" %in% loadedNamespaces()) gc()
