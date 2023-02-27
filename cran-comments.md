# CRAN submission future 1.31.0

on 2023-01-31

I've verified this submission has no negative impact on any of the 276 reverse package dependencies available on CRAN (n = 257) and Bioconductor (n = 19).

Thank you


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder | Other  |
| --------- | ------ | ------ | --------------- | ------ |
| 3.4.x     | L      |        |                 |        |
| 3.6.x     | L      |        |                 |        |
| 4.0.x     | L      |        |                 |        |
| 4.1.x     | L M W  |   M    |                 |        |
| 4.2.x     | L M W  | L   W  | M1 W            | W*     |
| devel     | L M W  | L      | M1 W            |        |

_Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows, * = msys2_


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
── future 1.31.0: OK

  Build ID:   future_1.31.0.tar.gz-f8efc94ad4fa463f9affccc517690397
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  38m 17.6s ago
  Build time: 38m 10.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0: OK

  Build ID:   future_1.31.0.tar.gz-9fecff4397854eb3a27733144f38d07e
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  38m 17.6s ago
  Build time: 24m 9.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0: OK

  Build ID:   future_1.31.0.tar.gz-e0200a7435c443d49a81df2c976da755
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  38m 17.6s ago
  Build time: 35m 54.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0: OK

  Build ID:   future_1.31.0.tar.gz-90adad97845a418cbff7ad20171a4d99
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  38m 17.6s ago
  Build time: 7m 17.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0: OK

  Build ID:   future_1.31.0.tar.gz-4372d899916e45cc90ac72167dd7c69a
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  38m 17.6s ago
  Build time: 5m 48.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
