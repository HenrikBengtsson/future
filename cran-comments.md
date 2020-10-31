# CRAN submission future 1.20.1

This is a follow-up submission that fixed the problem with future 1.20.0 that failed the reverse-dependency check of the 'photosynthesis' package.   Note that the warnings on 'dragon' and 'treeHMM' are expected.  I will explain in detail in my follow-up reply to the automatically generated CRAN email.

Thanks in advance

## Follow up

Yes, these 'R CMD check' WARNINGs for packages 'dragon' and 'treeHMM' are expected.  The maintainers of these packages were contacted four weeks ago about the deprecation of future::plan("multiprocess") that they use in their packages.  More importantly, they both call this function incorrectly at the top-level of their package code, where it has no effect, but it triggers a .Deprecated() warning when installing (sic!) these packages.  This warning is harmless and does not break anything.  I will not defunct this deprecation until these two packages have corrected their mistakes.

Thank you


# CRAN submission future 1.20.0

I've verified that this submission against the 140 reverse package dependencies available on CRAN and Bioconductor.

This release introduces 'R CMD check' WARNINGs for two CRAN packages due to a deprecation: 'dragon' and 'treeHMM'.  The maintainers of these packages were contacted four weeks ago to fix a simple mistake in their packages.  The mistake is that they incorrectly call future::plan() at the top-level of their package code where it has no effect.  I've reached out to them to instead call it inside a function, e.g. in .onLoad(), if at all.  This call is what now triggers a .Deprecated() warning during their package install (sic!).  This warning is harmless and does not break anything.

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
