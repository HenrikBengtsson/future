# CRAN submission future 1.0.1
on 2015-07-04

Updates related to CRAN:

* Package failed on CRAN under r-devel-osx-x86_64-clang (only),
  because test code incorrectly assumed system("Rscript") would
  launch the same executable as the running R session.
  
Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R 3.2.4 Revised (2016-03-16)
  - R version 3.3.1 (2016-06-21)
  
* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.2.5 (2016-04-14)
  - R version 3.3.1 (2016-06-21)
  - R Under development (unstable) (2016-06-30 r70858)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.5 (2016-04-14)
  - R version 3.3.0 (2016-05-03)
  - R version 3.3.1 (2016-06-21)
  - R version 3.3.1 Patched (2016-06-28 r70858)
  - R Under development (unstable) (2016-06-30 r70858)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.3.1 (2016-06-21)
  
* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2016-06-22 r70818)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R Under development (unstable) (2016-06-22 r70818)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.3.1 (2016-06-21)
  - R Under development (unstable) (2016-06-24 r70828)

The submitted updates cause no issues for any of the following
7 reverse dependencies on CRAN and Bioconductor: PSCBS 0.61.0,
QDNAseq 1.8.0, R.filesets 2.10.0, aroma.affymetrix 3.0.0,
aroma.core 3.0.0, doFuture 0.2.0, and future.BatchJobs 0.12.1.
