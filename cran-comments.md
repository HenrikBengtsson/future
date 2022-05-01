# CRAN submission future 1.25.0

on 2022-04-23

I've verified this submission has no negative impact on any of the 234 reverse package dependencies available on CRAN (n=219) and Bioconductor (n=15).

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
| devel         |   M W  | L        |    W            |

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

── future 1.24.0-9006: OK

  Build ID:   future_1.24.0-9006.tar.gz-4c1af0ac41c146eeae99a97a991cd31c
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  21m 47.4s ago
  Build time: 9m 9.7s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0-9006: OK

  Build ID:   future_1.24.0-9006.tar.gz-caaeb8511b1244ef8e271382345b281b
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  21m 47.4s ago
  Build time: 7m 55.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0-9006: OK

  Build ID:   future_1.24.0-9006.tar.gz-03994f2272224ed3a57ccc8a89250821
  Platform:   CentOS 8, stock R from EPEL
  Submitted:  21m 47.4s ago
  Build time: 6m 50.6s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0-9006: OK

  Build ID:   future_1.24.0-9006.tar.gz-8746881d63e642bfa8e5a07203c5a7bb
  Platform:   macOS 10.13.6 High Sierra, R-release, CRAN's setup
  Submitted:  21m 47.4s ago
  Build time: 5m 23.5s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0-9006: OK

  Build ID:   future_1.24.0-9006.tar.gz-959cae13372b434e85bab3f99ba5c02c
  Platform:   Apple Silicon (M1), macOS 11.6 Big Sur, R-release
  Submitted:  21m 47.4s ago
  Build time: 3m 14.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.24.0-9006: ERROR

  Build ID:   future_1.24.0-9006.tar.gz-29a4c8c82979407d87f0599ef4f38b81
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  21m 47.4s ago
  Build time: 1m 19.9s

❯ checking package dependencies ... ERROR
  Package required but not available: 'parallelly'
  
  See section 'The DESCRIPTION file' in the 'Writing R Extensions'
  manual.

1 error ✖ | 0 warnings ✔ | 0 notes ✔
```
