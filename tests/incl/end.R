## Undo future strategy
future::plan(oplan)


## Undo options
## (a) Added
added <- setdiff(names(options()), names(oopts0))
opts <- vector("list", length=length(added))
names(opts) <- added
options(opts)
## (b) Modified
options(oopts)
## (c) Assert that everything was undone
stopifnot(identical(options(), oopts0))


## Undo system environment variables
## (a) Added
cenvs <- Sys.getenv()
added <- setdiff(names(cenvs), names(oenvs))
for (name in added) Sys.unsetenv(name)
## (b) Modified?
for (name in intersect(names(cenvs), names(oenvs))) {
  ## WORKAROUND: On Linux Wine, base::Sys.getenv() may
  ## return elements with empty names. /HB 2016-10-06
  if (nchar(name) == 0) next
  if (!identical(cenvs[[name]], oenvs[[name]])) {
    Sys.setenv(name, oenvs[[name]])
  }
}
## (c) Assert that everything was undone
stopifnot(identical(Sys.getenv(), oenvs))


## Undo variables
rm(list=c(setdiff(ls(), ovars)))

