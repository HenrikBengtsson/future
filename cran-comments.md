# CRAN submission future 1.18.0

on 2020-07-08

I've verified that this submission does not cause issues for the 127 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub Actions | Travis CI | AppVeyor CI | Rhub      | Win-builder | Other  |
| --------- | -------------- | --------- | ----------- | --------- | ----------- | ------ |
| 3.3.x     | L              |           |             |           |             |        |
| 3.4.x     | L              |           |             |           |             |        |
| 3.5.x     | L              |           |             |           |             |        |
| 3.6.x     | L              | L, M      |             | L         |             |        |
| 4.0.x     | L, M, W        | L, M      | W           |        S  | W           |        |
| devel     | L, M, W        | L         | W (32 & 64) | L,   W    | W           |        |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows.  Architecture: 32 = 32-bit, 64 = 64-bit*
