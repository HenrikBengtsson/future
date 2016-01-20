# CRAN submission future 0.11.0
on 2015-01-20

I choose to use \donttest{} in `example("cluster")`,
`example("multisession")` and `example("plan")` because on
Windows, but not on Linux and OS X, these examples give
the following error with `R CMD check --run-donttest`:

  * checking examples ...Warning in file(con, "r") :
    cannot open file 'future-Ex.Rout': Permission denied
  Error in file(con, "r") : cannot open the connection
  Execution halted

What they have in common is that they all make use of
parallel::makeCluster(2L).  The exact same code works
in the package tests.

Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R Under development (unstable) (2015-12-30 r69826)
  
* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.2 (2014-10-31)
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 (2015-12-10)
  - R version 3.2.3 Patched (2016-01-17 r69948)
  - R Under development (unstable) (2016-01-17 r69948)

* Platform: x86_64-apple-darwin10.8.0 (64-bit):
  - R version 3.2.3 Patched (2016-01-12 r69945)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R Under development (unstable) (2016-01-17 r69948)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.2.3 (2015-12-10)
  - R Under development (unstable) (2015-12-29 r69820)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 (2015-12-10)
  - R version 3.2.3 Patched (2016-01-17 r69948)
  - R Under development (unstable) (2016-01-17 r69948)

Moreover, the updates cause no issues for any of the following
4 reverse dependency on CRAN, which have been tested with
`R CMD check --as-cran`: PSCBS 0.60.0, R.filesets 2.10.0,
aroma.affymetrix 3.0.0 and aroma.core 3.0.0.
