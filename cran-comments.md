# CRAN submission future 1.31.0

on 2023-03-03

I've verified this submission has no negative impact on any of the 280 reverse package dependencies available on CRAN (n = 261) and Bioconductor (n = 19).

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
── future 1.31.0-9114: OK

  Build ID:   future_1.31.0-9114.tar.gz-5e348ae2a35a4188b2b8e10c8c7a1ca9
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  40m 42.3s ago
  Build time: 40m 2.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0-9114: OK

  Build ID:   future_1.31.0-9114.tar.gz-1845bd220cda4ba89cc7a8a9fd065e83
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  40m 42.3s ago
  Build time: 25m 33.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0-9114: OK

  Build ID:   future_1.31.0-9114.tar.gz-e7a6c15383724b2f80239f429d5526a9
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  40m 42.3s ago
  Build time: 37m 5.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0-9114: OK

  Build ID:   future_1.31.0-9114.tar.gz-a9a2ed5162394f14bcd004ca7b601cb2
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  40m 42.3s ago
  Build time: 8m 6.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.31.0-9114: OK

  Build ID:   future_1.31.0-9114.tar.gz-7f691ea7717248f6829c200b75440830
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  40m 42.3s ago
  Build time: 6m 19.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
