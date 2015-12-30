# CRAN submission future 0.10.0
on 2015-12-30

Thanks in advance


## Notes not sent to CRAN
The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.2 (2015-08-14)
  - R Under development (unstable) (2015-12-30 r69826)
  
* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.2 (2014-10-31)
  - R version 3.2.3 (2015-12-10)
  - R version 3.2.3 Patched (2015-12-28 r69816)
  - R Under development (unstable) (2015-12-29 r69820)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R Under development (unstable) (2015-12-28 r69816)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.2.3 (2015-12-10)
  - R Under development (unstable) (2015-12-29 r69820)

* Platform x86_64-w64-mingw32/x64 (64-bit):
  - R version 3.1.3 (2015-03-09)
  - R version 3.2.3 Patched (2015-12-28 r69816)
  - R Under development (unstable) (2015-12-29 r69820)

Moreover, the updates cause no issues for any of the following
2 reverse dependency on CRAN, which have been tested with
`R CMD check --as-cran`: PSCBS 0.60.0 and R.filesets 2.9.0.
