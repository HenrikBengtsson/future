# CRAN submission future 1.0.0
on 2015-06-24

Updates related to CRAN:

* Package failed on CRAN under r-devel-osx-x86_64-clang (only).
  The error occurs when loading the package in a background session.
  I do not understand why this error occurs, but from code
  inspection I've covered a few potential pot holes.  Hopefully
  this solves the problem.  If it remains, a slightly more
  informative error message should be given helping troubleshoot
  the issue further.
  
Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R 3.2.4 Revised (2016-03-16)
  - R version 3.3.0 (2016-05-03)
  
* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.2.5 (2016-04-14)
  - R version 3.3.0 (2016-05-03)
  - R Under development (unstable) (2016-06-23 r70828)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.5 (2016-04-14)
  - R version 3.3.0 (2016-05-03)
  - R version 3.3.1 Patched (2016-06-22 r70818)
  - R Under development (unstable) (2016-06-22 r70818)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.3.0 (2016-05-03)
  
* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2016-06-11 r70764)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R Under development (unstable) (2016-06-22 r70818)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.3.1 (2016-06-21)
  - R Under development (unstable) (2016-06-24 r70828)

The submitted updates cause no issues for any of the following
5 reverse dependencies on CRAN and Bioconductor: PSCBS 0.61.0,
QDNAseq 1.8.0, R.filesets 2.10.0, aroma.affymetrix 3.0.0 and
aroma.core 3.0.0.
