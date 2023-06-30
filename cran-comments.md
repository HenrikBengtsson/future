# CRAN submission future 1.33.0

on 2023-07-01

I've checked this version towards 292 reverse package dependencies available on CRAN (n = 273) and Bioconductor (n = 19).

This submission breaks five (n = 5) CRAN packages: disk.frame (ERROR), jstor (WARNING), metabolomicsR(WARNING), tcplfit2 (WARNING), and TSstudio (WARNING). This is because they depend on a function that has been deprecated since 2020. The maintainers have been notified well in advance and multiple times. They have been reminded about since at least 2023-04-04 and some even since 2021.

Thank you


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.5.x     | L      |        |                 |
| 3.6.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L M W  | L   W  | M1 W            |
| 4.3.x     | L M W  | L   W  | M1 W            |
| devel     | L M W  | L      |    W            |

_Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows_


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
#  "macos-highsierra-release-cran",
  "windows-x86_64-release"
))
print(res)
```

gives

```
── future 1.32.0-9115: OK

  Build ID:   future_1.32.0-9115.tar.gz-ada9133dcbd34b03899066463a021e9b
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  14m 32.1s ago
  Build time: 14m 28.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.32.0-9115: OK

  Build ID:   future_1.32.0-9115.tar.gz-0411c118672a4fb98da3fc376f3507e6
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  14m 32.1s ago
  Build time: 11m 26.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.32.0-9115: OK

  Build ID:   future_1.32.0-9115.tar.gz-a000c2b84c26406b8269f27f8bcddc73
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  14m 32.1s ago
  Build time: 13m 45.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.32.0-9115: OK

  Build ID:   future_1.32.0-9115.tar.gz-fa49907794cd48558b6d7a111fa544ee
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  14m 32.1s ago
  Build time: 7m 17.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
