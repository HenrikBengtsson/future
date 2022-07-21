# CRAN submission future 1.27.0

on 2022-07-21

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.6.x         | L      |          |                 |
| 4.0.x         | L      |          |                 |
| 4.1.x         | L M W  |          |                 |
| 4.2.x         | L M W  | . M M1 . | M1 W            |
| devel         | L M W  | .        |    W            |

*Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```r
res <- rhub::check(platform = c(
#  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release"
#  "windows-x86_64-release"
))
print(res)
```

gives

```
── future 1.27.0: OK

  Build ID:   future_1.27.0.tar.gz-5cf5a76733974b00b84516fa4abd8a12
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  6m 43.5s ago
  Build time: 6m 39.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.27.0: OK

  Build ID:   future_1.27.0.tar.gz-c55a6090f379411ab1e413ccc96c1ede
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  6m 43.5s ago
  Build time: 3m 14s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
