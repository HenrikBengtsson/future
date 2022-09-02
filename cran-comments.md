# CRAN submission future 1.28.0

on 2022-09-02

I've verified this submission has no negative impact on any of the 253 reverse package dependencies available on CRAN (n=238) and Bioconductor (n=15).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 4.0.x         | L      |          |                 |
| 4.1.x         | L M W  |          |                 |
| 4.2.x         | L M W  | L M M1 W | M1 W            |
| devel         | L M W  | L        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", "debian-gcc-patched",
  # "linux-x86_64-rocker-gcc-san", ## PREPERROR
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── future 1.27.0-9005: OK

  Build ID:   future_1.27.0-9005.tar.gz-20914e03f0cc4fa5890f007d0869e6fd
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  22m 36.8s ago
  Build time: 21m 54.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.27.0-9005: OK

  Build ID:   future_1.27.0-9005.tar.gz-321dfde5a0084c9295dda64ca4b08edc
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  22m 36.8s ago
  Build time: 20m 6.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.27.0-9005: OK

  Build ID:   future_1.27.0-9005.tar.gz-00c79ae15ccc4773a3f4b04c5ae3ee09
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  22m 36.8s ago
  Build time: 5m 59.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.27.0-9005: OK

  Build ID:   future_1.27.0-9005.tar.gz-1b7e5655c99240a48a7f5a64cd764c28
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  22m 36.9s ago
  Build time: 3m 27.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.27.0-9005: OK

  Build ID:   future_1.27.0-9005.tar.gz-8ed43360c54a4f689a1c22cd6dee59ec
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  22m 36.9s ago
  Build time: 7m 50.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
