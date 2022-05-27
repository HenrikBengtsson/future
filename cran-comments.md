# CRAN submission future 1.26.0

on 2022-05-26

I've verified this submission has no negative impact on any of the 239 reverse package dependencies available on CRAN (n=224) and Bioconductor (n=15).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.5.x         | L      |          |                 |
| 4.1.x         | L      |          |                 |
| 4.2.x         | L M W  | L M M1 W | M1 W            |
| devel         | L M W  | L        |    w            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── future 1.26.0: OK

  Build ID:   future_1.26.0.tar.gz-d7f11857c8ba4249bd7fcd69827bd36b
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  9m 43.1s ago
  Build time: 9m 37.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.26.0: OK

  Build ID:   future_1.26.0.tar.gz-00987d6119474fd7b2eb5849dde7d530
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  9m 43.1s ago
  Build time: 8m 16.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.26.0: OK

  Build ID:   future_1.26.0.tar.gz-24da19e9353c4e78a4ac42f6df973218
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  9m 43.1s ago
  Build time: 7m 9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.26.0: OK

  Build ID:   future_1.26.0.tar.gz-21be4ce282cf4bd6900f9af18365ac92
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  9m 43.1s ago
  Build time: 5m 31.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.26.0: OK

  Build ID:   future_1.26.0.tar.gz-63db224e0ed2488f96aefec3642ab087
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  9m 43.1s ago
  Build time: 3m 8.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.26.0: OK

  Build ID:   future_1.26.0.tar.gz-0141db38c07444e7a1360316763a7777
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  9m 43.1s ago
  Build time: 7m 11.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
