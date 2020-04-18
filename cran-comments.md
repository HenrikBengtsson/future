# CRAN submission future 1.17.0

on 2020-04-17

I've verified that this submission does not cause issues for the 115 reverse package dependency available on CRAN and Bioconductor.

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version          | GitHub Actions | Travis CI | AppVeyor CI | Rhub      | Win-builder | Other  |
| ------------------ | -------------- | --------- | ----------- | --------- | ----------- | ------ |
| 3.2.5              | L              |           |             |           |             |        |
| 3.3.3              | L              |           |             |           |             |        |
| 3.4.4              | L              |           |             |           |             |        |
| 3.5.3              | L              | L, M      |             |           |             |        |
| 3.6.{1,2,3}        | L              | L, M      | W           | L         | W           |        |
| 4.0.0-devel        |                |           |             |       W   |             |        |
| 4.0.0-{alpha,beta} |                |           |             |           | W           | L      |
| devel              |                | L         | W (32 & 64) | L         |             |        |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows.  Architecture: 32 = 32-bit, 64 = 64-bit*
