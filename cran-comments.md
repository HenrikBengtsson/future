# CRAN submission future 1.23.0

on 2021-10-30

I've verified this submission has no negative impact on any of the 210 reverse package dependencies available on CRAN (n=195) and Bioconductor (n=15).

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version     | GitHub | R-hub      | mac/win-builder |
| ------------- | ------ | ---------- | --------------- |
| 3.3.x         | L      |            |                 |
| 3.4.x         | L      |            |                 |
| 3.5.x         | L      |            |                 |
| 4.0.x         | L      | L          |                 |
| 4.1.x         | L M W  | L M M1 S W | M1 W            |
| devel         | L M W  | L          |    W            |

*Legend: OS: L = Linux, S = Solaris, M = macOS, M1 = macOS M1, W = Windows*


R-hub checks:

```
res <- rhub::check(platform = c(
  "debian-clang-devel", "debian-gcc-patched", "linux-x86_64-centos-epel",
  "solaris-x86-patched-ods",
  "macos-highsierra-release-cran", "macos-m1-bigsur-release",
  "windows-x86_64-release"))
print(res)
```

gives

```
── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-3255d3728d004ff29d5d2091b2f4091c
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  21m 17.9s ago
  Build time: 11m 42.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-949cb6c5017f4451aeef750694b58dbd
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  21m 18s ago
  Build time: 10m 46s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-a939192f127b47549316b7fe03167a19
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  21m 18s ago
  Build time: 9m 1.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-6bdef971bd9c4cf8acfde0a51c054578
  Platform:   Oracle Solaris 10, x86, 32 bit, R release, Oracle Developer Studio 12.6
  Submitted:  21m 18s ago
  Build time: 6m 38.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-ba1a9c53029049beb367bcf9b6c06025
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  21m 18s ago
  Build time: 11m 19.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-b7cbc577d4ac4678b0e64dc12da18644
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  21m 18s ago
  Build time: 3m 28.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.23.0: OK

  Build ID:   future_1.23.0.tar.gz-beb008ce878a43549d26d9fcfe375b97
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  21m 18s ago
  Build time: 7m 11.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
