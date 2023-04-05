# disk.frame

<details>

* Version: 0.8.1
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-03-08 15:00:06 UTC
* Number of recursive dependencies: 103

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
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c hashstr2i.cpp -o hashstr2i.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/lib -L/usr/local/lib64 -o disk.frame.so RcppExports.o hashstr2i.o -L/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/lib -lR
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
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++14 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/disk.frame/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c hashstr2i.cpp -o hashstr2i.o
g++ -std=gnu++14 -shared -L/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/lib -L/usr/local/lib64 -o disk.frame.so RcppExports.o hashstr2i.o -L/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/lib -lR
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
# EpiNow2

<details>

* Version: 1.3.4
* GitHub: https://github.com/epiforecasts/EpiNow2
* Source code: https://github.com/cran/EpiNow2
* Date/Publication: 2023-02-12 21:52:20 UTC
* Number of recursive dependencies: 129

Run `revdep_details(, "EpiNow2")` for more info

</details>

## In both

*   checking whether package ‘EpiNow2’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/EpiNow2/new/EpiNow2.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘EpiNow2’ ...
** package ‘EpiNow2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++17 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppParallel/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/rstan/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
In file included from /c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/Core:397,
                 from /c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/RcppEigenForward.h:30,
...
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_tune_inv_gamma_namespace::model_tune_inv_gamma; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/etc/Makeconf:176: stanExports_tune_inv_gamma.o] Error 1
ERROR: compilation failed for package ‘EpiNow2’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/EpiNow2/new/EpiNow2.Rcheck/EpiNow2’


```
### CRAN

```
* installing *source* package ‘EpiNow2’ ...
** package ‘EpiNow2’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


g++ -std=gnu++17 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppParallel/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/rstan/include' -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
In file included from /c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/Core:397,
                 from /c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/RcppEigenForward.h:30,
...
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/src/Core/ProductEvaluators.h:35:90:   required from ‘Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::evaluator(const XprType&) [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Options = 0; Eigen::internal::evaluator<Eigen::Product<Lhs, Rhs, Option> >::XprType = Eigen::Product<Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>, Eigen::Matrix<double, -1, 1>, 0>]’
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/src/Core/Product.h:132:22:   required from ‘Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::operator const Scalar() const [with Lhs = Eigen::Product<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double, double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 1, -1> >, const Eigen::Transpose<Eigen::Matrix<double, -1, 1> > >, Eigen::Matrix<double, -1, -1>, 0>; Rhs = Eigen::Matrix<double, -1, 1>; int Option = 0; Eigen::internal::dense_product_base<Lhs, Rhs, Option, 6>::Scalar = double]’
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:23:56:   required from ‘double stan::mcmc::dense_e_metric<Model, BaseRNG>::T(stan::mcmc::dense_e_point&) [with Model = model_tune_inv_gamma_namespace::model_tune_inv_gamma; BaseRNG = boost::random::additive_combine_engine<boost::random::linear_congruential_engine<unsigned int, 40014, 0, 2147483563>, boost::random::linear_congruential_engine<unsigned int, 40692, 0, 2147483399> >]’
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/StanHeaders/include/src/stan/mcmc/hmc/hamiltonians/dense_e_metric.hpp:22:10:   required from here
/c4/home/henrik/repositories/future/revdep/library/EpiNow2/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/etc/Makeconf:176: stanExports_tune_inv_gamma.o] Error 1
ERROR: compilation failed for package ‘EpiNow2’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/EpiNow2/old/EpiNow2.Rcheck/EpiNow2’


```
# ppcseq

<details>

* Version: 1.6.0
* GitHub: https://github.com/stemangiola/ppcseq
* Source code: https://github.com/cran/ppcseq
* Date/Publication: 2022-11-01
* Number of recursive dependencies: 120

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


g++ -std=gnu++17 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/rstan/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
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


g++ -std=gnu++17 -I"/software/c4/cbi/software/R-4.2.2-gcc10/lib64/R/include" -DNDEBUG -I"../inst/include" -I"/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include/src" -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error  -D_HAS_AUTO_PTR_ETC=0 -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/rstan/include' -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/StanHeaders/include' -I/usr/local/include   -I'/c4/home/henrik/repositories/future/revdep/library/ppcseq/RcppParallel/include' -D_REENTRANT -DSTAN_THREADS   -fpic  -g -O2 -c RcppExports.cpp -o RcppExports.o
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
