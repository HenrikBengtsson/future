# CRAN submission future 1.8.1

on 2018-05-02

This release fixes the recent R CMD check errors on CRAN (and elsewhere), which are due to a bug in the seldom used, internal myExternalIP() function.

I've verified that this submission causes no issues for any of the 30 reverse (non-recursive) package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.5.0 (2018-04-23)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [r-hub; single-core]:
  - R version 3.5.0 (2018-04-23)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-01-27)
  - R version 3.5.0 (2017-01-27)
  - R Under development (unstable) (2018-05-02 r74679)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2018-04-29 r74671)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.5.0 (2018-04-23)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.4 (2018-03-15)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2018-05-02 r74679)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R Under development (unstable) (2018-04-29 r74671)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.5.0 (2018-04-23)
  - R Under development (unstable) (2018-05-02 r74679)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.5.0 (2018-04-23)
  - R Under development (unstable) (2018-04-30 r74674)
