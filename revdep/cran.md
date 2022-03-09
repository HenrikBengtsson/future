## revdepcheck results

We checked 232 reverse dependencies (217 from CRAN + 15 from Bioconductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 2 new problems
 * We failed to check 0 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

* gtfs2gps
  checking re-building of vignette outputs ... WARNING

* OOS
  checking re-building of vignette outputs ...sh: line 1: 201482 Segmentation fault      (core dumped) '/software/c4/cbi/software/R-4.1.2-gcc8/lib64/R/bin/R' --vanilla --no-echo > '/c4/home/henrik/repositories/future/revdep/checks/OOS/new/OOS.Rcheck/build_vignettes.log' 2>&1 < '/scratch/henrik/437810/RtmprfTwew/file311347aa70545'

