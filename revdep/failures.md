# Signac

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/Signac
* URL: https://github.com/timoast/signac, https://satijalab.org/signac
* BugReports: https://github.com/timoast/signac/issues
* Date/Publication: 2020-08-16 15:50:03 UTC
* Number of recursive dependencies: 227

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   checking whether package ‘Signac’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/henrik/c4/repositories/future/revdep/checks/Signac/new/Signac.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Signac’ ...
** package ‘Signac’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c filter.cpp -o filter.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c group.cpp -o group.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c validate.cpp -o validate.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.2/lib64/R/lib -L/usr/local/lib64 -o Signac.so RcppExports.o filter.o group.o validate.o -L/software/c4/cbi/software/R-4.0.2/lib64/R/lib -lR
installing to /home/henrik/c4/repositories/future/revdep/checks/Signac/new/Signac.Rcheck/00LOCK-Signac/00new/Signac/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘sctransform’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Signac’
* removing ‘/home/henrik/c4/repositories/future/revdep/checks/Signac/new/Signac.Rcheck/Signac’

```
### CRAN

```
* installing *source* package ‘Signac’ ...
** package ‘Signac’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c filter.cpp -o filter.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c group.cpp -o group.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c validate.cpp -o validate.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.2/lib64/R/lib -L/usr/local/lib64 -o Signac.so RcppExports.o filter.o group.o validate.o -L/software/c4/cbi/software/R-4.0.2/lib64/R/lib -lR
installing to /home/henrik/c4/repositories/future/revdep/checks/Signac/old/Signac.Rcheck/00LOCK-Signac/00new/Signac/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘sctransform’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Signac’
* removing ‘/home/henrik/c4/repositories/future/revdep/checks/Signac/old/Signac.Rcheck/Signac’

```
