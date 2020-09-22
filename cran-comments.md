# CRAN submission future 1.19.1

I've verified that this submission does not cause issues for the 136 reverse package dependencies available on CRAN and Bioconductor.  This time, all these checks did also validate the vignettes.  I've also verified manually that 'R CMD check' on rangeMapper works.

Thank you


## Submission of future 1.19.0

I've verified that this submission does not cause issues for the 136 reverse package dependencies available on CRAN and Bioconductor.

Thanks in advance

Result: The submission of future 1.19.0 on 2020-09-19 failed reverse dependencies checks on CRAN.  This was due to a bug (https://github.com/HenrikBengtsson/future/issues/417) that was exposed due to recent updated in the develop version of future.  It was missed locally because revdepcheck does not run the checks on vignettes.  It was thanks to the vignette of rangeMapper that the bug was discovered.



## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub Actions | Travis CI | AppVeyor CI | Rhub      | Win-builder |
| --------- | -------------- | --------- | ----------- | --------- | ----------- |
| 3.3.x     | L              |           |             |           |             |
| 3.4.x     | L              |           |             |           |             |
| 3.5.x     | L              |           |             |           |             |
| 3.6.x     | L              | L, M      |             | L         |             |
| 4.0.x     | L, M, W        | L, M      | W           |        S  | W           |
| devel     |       W        | L         | W (32 & 64) | L,   W    | W           |

*Legend: OS: L = Linux, S = Solaris, M = macOS, W = Windows.  Architecture: 32 = 32-bit, 64 = 64-bit*
