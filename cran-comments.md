# CRAN submission future 1.33.1

on 2023-12-21

## Notes sent to CRAN

Thanks in advance


## Notes not sent to CRAN

### R CMD check validation

The package has been verified using `R CMD check --as-cran` on:

| R version | GitHub | R-hub  | mac/win-builder |
| --------- | ------ | ------ | --------------- |
| 3.5.x     | L      |        |                 |
| 4.1.x     | L      |        |                 |
| 4.2.x     | L M W  | L   W  |                 |
| 4.3.x     | L M W  | L   W  | M1 W            |
| devel     | L M W  | L      |    W            |

_Legend: OS: L = Linux, M = macOS, M1 = macOS M1, W = Windows_


R-hub checks:

```r
res <- rhub::check(platforms = c(
  "debian-clang-devel", 
  "fedora-gcc-devel",
  "debian-gcc-patched", 
  "windows-x86_64-release"
))
print(res)
```

gives

```
── future 1.33.1: OK

  Build ID:   future_1.33.1.tar.gz-2f034a059c5d407aa6167d7fbe0ee504
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  45m 55.3s ago
  Build time: 41m 47.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.33.1: OK

  Build ID:   future_1.33.1.tar.gz-f385f4998fac446bb0e2c5efc02f36d3
  Platform:   Fedora Linux, R-devel, GCC
  Submitted:  45m 55.3s ago
  Build time: 28m 25.3s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.33.1: OK

  Build ID:   future_1.33.1.tar.gz-5e83389a128540c48a35112d8f06810c
  Platform:   Debian Linux, R-patched, GCC
  Submitted:  45m 55.3s ago
  Build time: 39m 28.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

── future 1.33.1: OK

  Build ID:   future_1.33.1.tar.gz-121079216c7b4f02a6ae2aceb1c2ba0b
  Platform:   Windows Server 2022, R-release, 32/64 bit
  Submitted:  45m 55.3s ago
  Build time: 6m 57.4s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔
```
