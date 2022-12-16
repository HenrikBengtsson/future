# CRAN submission future 1.30.0

on 2022-12-15

I've verified this submission has no negative impact on any of the 264 reverse package dependencies available on CRAN (n = 245) and Bioconductor (n = 19).

Thank you


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.4.x     | L      |        |                 |
| 3.6.x     | L      |        |                 |
| 4.0.x     | L      |        |                 |
| 4.1.x     | L M W  |   M    |                 |
| 4.2.x     | L M W  | L   W  | M1 W            |
| devel     | L M W  | L      | M1 W            |

_Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows_


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "macos-highsierra-release-cran",
  "windows-x86_64-release"
))
print(res)
```

gives

```
── future 1.30.0: OK

  Build ID:   future_1.30.0.tar.gz-fa02e32e1a8c449f8d2ced9399e27e01
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  43m 36.8s ago
  Build time: 43m 29s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.30.0: OK

  Build ID:   future_1.30.0.tar.gz-eb632c4826a74c1aa17a84b1561e0ff9
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  43m 36.9s ago
  Build time: 27m 41s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.30.0: OK

  Build ID:   future_1.30.0.tar.gz-a1855a2c96f441d190a8b102ab6e6bdc
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  43m 36.9s ago
  Build time: 40m 46.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.30.0: OK

  Build ID:   future_1.30.0.tar.gz-858c3764ed454ac29a21d0cb21e22e50
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  43m 36.9s ago
  Build time: 7m 21.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.30.0: OK

  Build ID:   future_1.30.0.tar.gz-b9d08d1368794e3fb7d737a977cb075e
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  43m 36.9s ago
  Build time: 5m 40.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
