# CRAN submission future 1.22.1

on 2021-08-11

Second submission:

This is a resubmission that disables a package test that cause failures on some macOS platforms.

Thanks


First submission:

I've verified this submission has no negative impact on any of the 197 reverse package dependencies available on CRAN (n=182) and Bioconductor (n=15).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub   | AppVeyor | win-builder |
| --------- | ------ | ------- | -------- | ----------- |
| 3.3       | L      |         |          |             |
| 3.4       | L      |         |          |             |
| 3.5       | L      |         |          |             |
| 4.0       | L      |         |          |             |
| 4.1       | L M W  | L S M   | W        | w           |
| devel     | L      | L     W |          | W           |

_Legend: L = Linux, S = Solaris, M = macOS, W = Windows_
