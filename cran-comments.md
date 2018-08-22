# CRAN submission future 1.9.0

on 2018-07-23

I've verified this release using R CMD check --as-cran on all 37 reverse (non-recursive) package dependencies available on CRAN and Bioconductor.

This release breaks CRAN package penaltyLearning 2017.12.08 because it uses a now defunct function of the future package that was previously deprecated (since 2018-04-08). I have notified the maintainer about this on 2018-07-07 (https://github.com/tdhock/penaltyLearning/issues/7).

Thanks in advance


## Notes not sent to CRAN

### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R version 3.4.4 (2018-03-15)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [Travis CI]:
  - R version 3.5.0 (2018-04-23)

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.4.4 (2017-01-27)
  - R version 3.5.0 (2017-01-27)
  - R Under development (unstable) (2018-06-20 r74923)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.4 (2018-03-15)
  - R Under development (unstable) (2018-07-21 r74997)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.2 (2014-10-31)
  - R version 3.2.0 (2015-04-16)
  - R version 3.3.0 (2016-05-03)
  - R version 3.5.0 (2018-04-23)
  - R version 3.5.1 (2018-07-02)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2018-07-21 r74997)

* Platform x86_64-w64-mingw32 (64-bit) [r-hub]:
  - R Under development (unstable) (2018-07-20 r74991)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.5.1 (2018-07-02)
  - R Under development (unstable) (2018-07-21 r74997)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.5.1 (2018-07-02)
  - R Under development (unstable) (2018-07-21 r74997)

The following setups were skipped due to non-availability:

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.4 (2018-03-15)

* Platform x86_64-apple-darwin15.6.0 (64-bit) [r-hub; single-core]:
  - NOTE: Non-reproducible error in tests/stdout.R
  - R version 3.5.0 (2018-04-23)

