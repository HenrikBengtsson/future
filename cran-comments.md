# CRAN submission future 1.24.0

on 2022-02-19

I've verified this submission has no negative impact on any of the 232 reverse package dependencies available on CRAN (n=217) and Bioconductor (n=15).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub    | mac/win-builder |
| ------------- | ------ | -------- | --------------- |
| 3.4.x         | L      |          |                 |
| 3.5.x         | L      |          |                 |
| 4.0.x         | L      | L        |                 |
| 4.1.x         | L M W  | L M M1 W | M1 W            |
| devel         | L M W  | L        |    W            |

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
── future 1.24.0: OK

  Build ID:   future_1.24.0.tar.gz-3f534665ea574fc3a6095f7848d7d459
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  8m 17.3s ago
  Build time: 8m 9.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0: OK

  Build ID:   future_1.24.0.tar.gz-40dc0c402a644ae4af8479380470a733
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  8m 17.4s ago
  Build time: 6m 59.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0: OK

  Build ID:   future_1.24.0.tar.gz-b9dd5d431c11483982316bacb5333c42
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  8m 17.4s ago
  Build time: 6m 4.2s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0: OK

  Build ID:   future_1.24.0.tar.gz-a57d233c40df4ab9b65667d95c803974
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  8m 17.4s ago
  Build time: 6m 20.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0: OK

  Build ID:   future_1.24.0.tar.gz-3fdfeca07a5c4b0b8135139491c4b9b6
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  8m 17.4s ago
  Build time: 3m 41.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0: OK

  Build ID:   future_1.24.0.tar.gz-2c9158364ad24be19b3ce757e389def4
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  8m 17.4s ago
  Build time: 7m 37.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
