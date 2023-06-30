# CRAN submission future 1.33.0

on 2023-06-30

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
── future 1.32.0-9110: OK

  Build ID:   future_1.32.0-9110.tar.gz-2cfdb50ff29b40c8a2a376efd96857b3
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  14m 6.3s ago
  Build time: 13m 53.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.32.0-9110: OK

  Build ID:   future_1.32.0-9110.tar.gz-f55c9521d111452e9a2568c0da437070
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  14m 58.8s ago
  Build time: 13m 58.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.32.0-9110: IN-PROGRESS

  Build ID:   future_1.32.0-9110.tar.gz-254b6663f8f6464b89007b67486a519c
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  14m 58.8s ago


── future 1.32.0-9110: OK

  Build ID:   future_1.32.0-9110.tar.gz-0081ebe52174491db3f212c2e20fb027
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  14m 58.8s ago
  Build time: 7m 2.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
