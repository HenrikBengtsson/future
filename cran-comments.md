# CRAN submission future 1.11.1

on 2019-01-25

This submission attempts to address the issue reported by Brian Ripley that 'R CMD check' on the future package and its dependencies may leave stray PSOCK worker processes running also after the package checks are complete.

I've verified this release using R CMD check --as-cran on all 47 reverse (non-recursive) package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.4.4 (2018-03-15)
  - R version 3.5.2 (2018-12-20)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [r-hub]:
  - R version 3.5.2 (2018-12-20)  ## single-core machine

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.4.4 (2017-01-27) [sic!]
  - R version 3.5.2 (2017-01-27) [sic!]
  - R Under development (unstable) (2019-01-24 r76013)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2019-01-18 r75994)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.2 (2014-10-31)
  - R version 3.2.0 (2015-04-16)
  - R version 3.3.0 (2016-05-03)
  - R version 3.4.0 (2017-04-21)
  - R version 3.5.0 (2018-04-23)
  - R version 3.5.2 (2018-12-20)  ## tests also MPI

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.4 (2018-03-15)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2019-01-24 r76008)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.5.2 (2018-12-20)
  - R Under development (unstable) (2019-01-24 r76008)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R version 3.5.2 Patched (2018-12-26 r75912)
  - R Under development (unstable) (2018-12-26 r75909)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.5.2 (2018-12-20)
  - R Under development (unstable) (2019-01-23 r76007)


The following setups were skipped:

* Platform i386-pc-solaris2.10 (32-bit) [r-hub]:
  - R version 3.5.0 Patched (2018-04-30 r74674)
    REASON: Currently not available
    