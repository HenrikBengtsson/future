# disk.frame

<details>

* Version: 0.8.2
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-04-07 17:50:15 UTC
* Number of recursive dependencies: 99

Run `revdep_details(, "disk.frame")` for more info

</details>

## Newly broken

*   checking whether package ‘disk.frame’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/disk.frame/new/disk.frame.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘disk.frame’ ...
** package ‘disk.frame’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c hashstr2i.cpp -o hashstr2i.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o disk.frame.so RcppExports.o hashstr2i.o -L/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/future/revdep/checks/disk.frame/new/disk.frame.Rcheck/00LOCK-disk.frame/00new/disk.frame/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘multiprocess’ is not exported by 'namespace:future'
Execution halted
ERROR: lazy loading failed for package ‘disk.frame’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/disk.frame/new/disk.frame.Rcheck/disk.frame’


```
### CRAN

```
* installing *source* package ‘disk.frame’ ...
** package ‘disk.frame’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c hashstr2i.cpp -o hashstr2i.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o disk.frame.so RcppExports.o hashstr2i.o -L/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/future/revdep/checks/disk.frame/old/disk.frame.Rcheck/00LOCK-disk.frame/00new/disk.frame/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (disk.frame)


```
# ppcseq

<details>

* Version: 1.6.0
* GitHub: https://github.com/stemangiola/ppcseq
* Source code: https://github.com/cran/ppcseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 119

Run `revdep_details(, "ppcseq")` for more info

</details>

## Newly broken

*   checking whether package ‘ppcseq’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/ppcseq/new/ppcseq.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 53.3Mb
      sub-directories of 1Mb or more:
        data   1.5Mb
        libs  50.4Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .identify_abundant: no visible binding for global variable ‘.’
    .identify_abundant: no visible binding for global variable ‘.abundant’
    add_exposure_rate: no visible binding for global variable ‘.variable’
    add_exposure_rate: no visible binding for global variable ‘S’
    add_exposure_rate: no visible binding for global variable ‘exposure
      rate’
    add_partition: no visible binding for global variable ‘.’
    add_scaled_counts_bulk.calcNormFactor: no visible binding for global
      variable ‘transcript’
    add_scaled_counts_bulk.get_low_expressed: no visible binding for global
    ...
      . .abundant .chain .draw .iteration .lower .upper .upper_2 .value
      .variable CI G S TMM cc chains dummy exposure rate idx_MPI init l l
      %>% sd med multiplier nf ppc read count MPI row res_discovery rowid s
      sample wise data scale_abundance slope symbol MPI row tot tot_filt
      transcript write_on_disk
    Consider adding
      importFrom("base", "row", "sample")
      importFrom("stats", "sd")
      importFrom("utils", "data")
    to your NAMESPACE file.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

## Installation

### Devel

```
* installing *source* package ‘ppcseq’ ...
** using staged installation
** libs


g++ -std=gnu++17 -I"/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/rstan/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
In file included from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/Eigen/Core:397,
                 from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/RcppEigenForward.h:30,
                 from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/RcppEigen.h:25,
...
installing to /c4/home/henrik/repositories/future/revdep/checks/ppcseq/new/ppcseq.Rcheck/00LOCK-ppcseq/00new/ppcseq/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘multiprocess’ is not exported by 'namespace:future'
Execution halted
ERROR: lazy loading failed for package ‘ppcseq’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/ppcseq/new/ppcseq.Rcheck/ppcseq’


```
### CRAN

```
* installing *source* package ‘ppcseq’ ...
** using staged installation
** libs


g++ -std=gnu++17 -I"/software/c4/cbi/software/R-4.2.3-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/rstan/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
In file included from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/Eigen/Core:397,
                 from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/RcppEigenForward.h:30,
                 from /c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include/RcppEigen.h:25,
...
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (ppcseq)


```
