# CRAN submission future 1.21.0

on 2020-12-09

I've verified this submission have no negative impact on any of the 144 reverse package dependencies available on CRAN and Bioconductor.

This update fixes the 'R CMD check' errors for the 'progressr' package as seen sporadically on CRAN.

Thank you


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub Actions | Travis CI | AppVeyor CI | Rhub      | Win-builder |
| --------- | -------------- | --------- | ----------- | --------- | ----------- |
| 3.3.x     | L              |           |             |           |             |
| 3.4.x     | L              |           |             |           |             |
| 3.5.x     | L              |           |             |           |             |
| 3.6.x     | L              | L, M      |             | L         |             |
| 4.0.x     | L, M, W        | L, M      |             |        S  | W           |
| devel     |       W        | L         | W (32 & 64) | L,   W    | W           |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows*
