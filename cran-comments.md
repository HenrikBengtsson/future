# CRAN submission future 1.29.0

on 2022-11-05

I've verified this submission has no negative impact on any of the 265 reverse package dependencies available on CRAN (n=246) and Bioconductor (n=19).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub  | mac/win-builder |
| ------------- | ------ | ------ | --------------- |
| 3.4.x         | L      |        |                 |
| 4.0.x         | L      |        |                 |
| 4.1.x         | L M W  |        |                 |
| 4.2.x         | L M W  | . . .  | M1 W            |
| devel         | L M W  | .      |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "debian-gcc-patched", 
  "fedora-gcc-devel",
  "macos-highsierra-release-cran",
  "windows-x86_64-release"
))
print(res)
```

gives

```
# R-HUB SEEMS TO BE COMPLETELY DOWN.
```
