# CRAN submission future 1.33.1

on 2023-12-21

I've checked this version towards 321 reverse package dependencies available on CRAN (n = ???) and Bioconductor (n = ???).

Thank you


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.5.x     | L      |        |                 |
| 3.6.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L M W  | L   W  |                 |
| 4.3.x     | L M W  | L   W  | .  .            |
| devel     | L M W  | L      |    .            |

_Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows_


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "windows-x86_64-release"
))
print(res)
```

gives

```
```
