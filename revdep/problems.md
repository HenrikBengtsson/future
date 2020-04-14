# abjutils

<details>

* Version: 0.2.3
* Source code: https://github.com/cran/abjutils
* URL: https://github.com/abjur/abjutils
* Date/Publication: 2019-02-07 21:43:35 UTC
* Number of recursive dependencies: 103

Run `revdep_details(,"abjutils")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘httr’ ‘progress’
      All declared Imports should be used.
    Missing or unexported object: ‘devtools::use_package’
    ```

# adept

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/adept
* URL: https://github.com/martakarass/adept
* BugReports: https://github.com/martakarass/adept/issues
* Date/Publication: 2019-06-18 06:50:03 UTC
* Number of recursive dependencies: 93

Run `revdep_details(,"adept")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# aroma.affymetrix

<details>

* Version: 3.2.0
* Source code: https://github.com/cran/aroma.affymetrix
* URL: https://www.aroma-project.org/, https://github.com/HenrikBengtsson/aroma.affymetrix
* BugReports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues
* Date/Publication: 2019-06-23 06:00:14 UTC
* Number of recursive dependencies: 75

Run `revdep_details(,"aroma.affymetrix")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Error in setGeneric("getX", function(object, type) standardGeneric("getX")) : 
      could not find function "setGeneric"
    ```

# aroma.core

<details>

* Version: 3.2.1
* Source code: https://github.com/cran/aroma.core
* URL: https://github.com/HenrikBengtsson/aroma.core, https://www.aroma-project.org/
* BugReports: https://github.com/HenrikBengtsson/aroma.core/issues
* Date/Publication: 2020-02-04 15:20:21 UTC
* Number of recursive dependencies: 47

Run `revdep_details(,"aroma.core")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# BatchGetSymbols

<details>

* Version: 2.5.6
* Source code: https://github.com/cran/BatchGetSymbols
* Date/Publication: 2020-02-25 15:20:02 UTC
* Number of recursive dependencies: 84

Run `revdep_details(,"BatchGetSymbols")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘BatchGetSymbols-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: BatchGetSymbols
    > ### Title: Function to download financial data
    > ### Aliases: BatchGetSymbols
    > 
    > ### ** Examples
    > 
    > tickers <- c('FB','MMM')
    > 
    > first.date <- Sys.Date()-30
    > last.date <- Sys.Date()
    > 
    > l.out <- BatchGetSymbols(tickers = tickers,
    +                          first.date = first.date,
    +                         last.date = last.date, do.cache=FALSE)
    Error in BatchGetSymbols(tickers = tickers, first.date = first.date, last.date = last.date,  : 
      No internet connection found...
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      
          filter, lag
      
      The following objects are masked from 'package:base':
      
          intersect, setdiff, setequal, union
      
      
      > 
      > test_check("BatchGetSymbols")
      ── 1. Error: (unknown) (@test_BatchGetSymbols.R#12)  ───────────────────────────
      No internet connection found...
      Backtrace:
       1. BatchGetSymbols::BatchGetSymbols(...)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 0 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test_BatchGetSymbols.R#12) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# batchtools

<details>

* Version: 0.9.12
* Source code: https://github.com/cran/batchtools
* URL: https://github.com/mllg/batchtools
* BugReports: https://github.com/mllg/batchtools/issues
* Date/Publication: 2020-01-10 16:30:07 UTC
* Number of recursive dependencies: 73

Run `revdep_details(,"batchtools")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘doMPI’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘Rmpi’ in Rd xrefs
    ```

# blavaan

<details>

* Version: 0.3-8
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2019-11-19 19:20:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(,"blavaan")` for more info

</details>

## In both

*   checking whether package ‘blavaan’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/blavaan/new/blavaan.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘runjags’
    ```

## Installation

### Devel

```
* installing *source* package ‘blavaan’ ...
** package ‘blavaan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stanmarg.stan
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/blavaan/new/blavaan.Rcheck/00_pkg_src/blavaan/src: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --slave --no-restore -e source(file.path('..',~+~'tools',~+~'make_cc.R'));~+~make_cc(commandArgs(TRUE)) --args stan_files/stanmarg.stan]: there is no package called ‘startup’
Wrote C++ file "stan_files/stanmarg.cc"
g++ -std=c++1y -fPIC  -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG -I"../inst/include" -I"`"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/Rcpp/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/RcppEigen/include" -I/usr/local/include    -Wno-unused-variable -Wno-unused-function -c stan_files/stanmarg.cc -o stan_files/stanmarg.o
In file included from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:32: error: ‘std::index_sequence’ has not been declared
                           std::index_sequence<I...> i) {
                                ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:46: error: expected ‘,’ or ‘...’ before ‘<’ token
                           std::index_sequence<I...> i) {
                                              ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In function ‘constexpr auto stan::math::internal::apply(const F&, const Tuple&)’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: error: ‘make_index_sequence’ is not a member of ‘std’
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                           ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: note: suggested alternative:
In file included from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/container/vector/vector.hpp:28:0,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/container/vector/vector10.hpp:25,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/transform_view/transform_view.hpp:22,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/algorithm/transformation/transform.hpp:11,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/zip_view/detail/begin_impl.hpp:14,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/zip_view/zip_view.hpp:16,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/zip_view.hpp:12,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/include/zip_view.hpp:11,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint/util/resize.hpp:26,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint/util/state_wrapper.hpp:26,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint/util/ublas_wrapper.hpp:33,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint.hpp:25,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/prim/arr/functor/integrate_ode_rk45.hpp:17,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/prim/arr.hpp:46,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/prim/mat.hpp:344,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:12,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/support/detail/index_sequence.hpp:59:12: note:   ‘boost::fusion::detail::make_index_sequence’
     struct make_index_sequence
            ^
In file included from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected primary-expression before ‘{’ token
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                                                                             ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected ‘)’ before ‘{’ token
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: At global scope:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:151:9: error: expected type-specifier
       = std::result_of_t<F(decltype(is_var_), decltype(value_of(Targs()))...)>;
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:42: error: ‘FReturnType’ was not declared in this scope
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                          ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:53: error: template argument 1 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                     ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:61: error: template argument 2 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                             ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘std::vector<stan::math::var> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const std::vector<double>&)’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:349:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.size();
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:350:32: error: invalid types ‘int[int]’ for array subscript
     std::vector<var> var_y(M_[0]);
                                ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘Eigen::Matrix<stan::math::var, R, C> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const Eigen::Matrix<double, R, C>&)’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:375:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.rows();
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:376:9: error: invalid types ‘int[int]’ for array subscript
     M_[1] = val_y.cols();
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:40: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                        ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:47: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                               ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘void stan::math::adj_jac_vari<F, Targs>::chain()’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:5: error: ‘FReturnType’ was not declared in this scope
     FReturnType y_adj;
     ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:17: error: expected ‘;’ before ‘y_adj’
     FReturnType y_adj;
                 ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:532:38: error: ‘y_adj’ was not declared in this scope
     internal::build_y_adj(y_vi_, M_, y_adj);
                                      ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:26: error: expansion pattern ‘auto&&’ contains no argument packs
         [this](auto&&... args) { this->accumulate_adjoints(args...); },
                          ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In lambda function:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:60: error: ‘args’ was not declared in this scope
         [this](auto&&... args) { this->accumulate_adjoints(args...); },
                                                            ^
make: *** [stan_files/stanmarg.o] Error 1
rm stan_files/stanmarg.cc
ERROR: compilation failed for package ‘blavaan’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/blavaan/new/blavaan.Rcheck/blavaan’

```
### CRAN

```
* installing *source* package ‘blavaan’ ...
** package ‘blavaan’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript" -e "source(file.path('..', 'tools', 'make_cc.R')); make_cc(commandArgs(TRUE))" stan_files/stanmarg.stan
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/blavaan/old/blavaan.Rcheck/00_pkg_src/blavaan/src: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --slave --no-restore -e source(file.path('..',~+~'tools',~+~'make_cc.R'));~+~make_cc(commandArgs(TRUE)) --args stan_files/stanmarg.stan]: there is no package called ‘startup’
Wrote C++ file "stan_files/stanmarg.cc"
g++ -std=c++1y -fPIC  -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG -I"../inst/include" -I"`"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/Rcpp/include" -I"/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/RcppEigen/include" -I/usr/local/include    -Wno-unused-variable -Wno-unused-function -c stan_files/stanmarg.cc -o stan_files/stanmarg.o
In file included from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:32: error: ‘std::index_sequence’ has not been declared
                           std::index_sequence<I...> i) {
                                ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:46: error: expected ‘,’ or ‘...’ before ‘<’ token
                           std::index_sequence<I...> i) {
                                              ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In function ‘constexpr auto stan::math::internal::apply(const F&, const Tuple&)’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: error: ‘make_index_sequence’ is not a member of ‘std’
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                           ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: note: suggested alternative:
In file included from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/container/vector/vector.hpp:28:0,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/container/vector/vector10.hpp:25,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/transform_view/transform_view.hpp:22,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/algorithm/transformation/transform.hpp:11,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/zip_view/detail/begin_impl.hpp:14,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/zip_view/zip_view.hpp:16,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/view/zip_view.hpp:12,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/include/zip_view.hpp:11,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint/util/resize.hpp:26,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint/util/state_wrapper.hpp:26,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint/util/ublas_wrapper.hpp:33,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/numeric/odeint.hpp:25,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/prim/arr/functor/integrate_ode_rk45.hpp:17,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/prim/arr.hpp:46,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/prim/mat.hpp:344,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:12,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/BH/include/boost/fusion/support/detail/index_sequence.hpp:59:12: note:   ‘boost::fusion::detail::make_index_sequence’
     struct make_index_sequence
            ^
In file included from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected primary-expression before ‘{’ token
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                                                                             ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected ‘)’ before ‘{’ token
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: At global scope:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:151:9: error: expected type-specifier
       = std::result_of_t<F(decltype(is_var_), decltype(value_of(Targs()))...)>;
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:42: error: ‘FReturnType’ was not declared in this scope
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                          ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:53: error: template argument 1 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                     ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:61: error: template argument 2 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                             ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘std::vector<stan::math::var> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const std::vector<double>&)’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:349:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.size();
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:350:32: error: invalid types ‘int[int]’ for array subscript
     std::vector<var> var_y(M_[0]);
                                ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘Eigen::Matrix<stan::math::var, R, C> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const Eigen::Matrix<double, R, C>&)’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:375:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.rows();
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:376:9: error: invalid types ‘int[int]’ for array subscript
     M_[1] = val_y.cols();
         ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:40: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                        ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:47: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                               ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘void stan::math::adj_jac_vari<F, Targs>::chain()’:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:5: error: ‘FReturnType’ was not declared in this scope
     FReturnType y_adj;
     ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:17: error: expected ‘;’ before ‘y_adj’
     FReturnType y_adj;
                 ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:532:38: error: ‘y_adj’ was not declared in this scope
     internal::build_y_adj(y_vi_, M_, y_adj);
                                      ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:26: error: expansion pattern ‘auto&&’ contains no argument packs
         [this](auto&&... args) { this->accumulate_adjoints(args...); },
                          ^
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In lambda function:
/scratch/678242.1.long.q/tmp.pLrWv5vzw7/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:60: error: ‘args’ was not declared in this scope
         [this](auto&&... args) { this->accumulate_adjoints(args...); },
                                                            ^
make: *** [stan_files/stanmarg.o] Error 1
rm stan_files/stanmarg.cc
ERROR: compilation failed for package ‘blavaan’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/blavaan/old/blavaan.Rcheck/blavaan’

```
# blockCV

<details>

* Version: 2.1.1
* Source code: https://github.com/cran/blockCV
* URL: https://github.com/rvalavi/blockCV
* Date/Publication: 2020-02-23 20:00:02 UTC
* Number of recursive dependencies: 104

Run `revdep_details(,"blockCV")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
       12. layout$setup_panel_params()
       13. ggplot2:::f(..., self = self)
       14. base::Map(setup_panel_params, scales_x, scales_y)
       15. base::mapply(FUN = f, ..., SIMPLIFY = FALSE)
       17. self$coord$setup_panel_params(scale_x, scale_y, params = self$coord_params)
       18. ggplot2:::f(..., self = self)
       19. sf::st_graticule(...)
       21. sf:::st_transform.sfc(box, datum, partial = TRUE)
       23. sf:::CPL_transform(x, crs$proj4string)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 127 | SKIPPED: 8 | WARNINGS: 5 | FAILED: 6 ]
      1. Error: test spatialAutoRange function with multi-layer raster in parallel (@testSpatialAutoRange.R#19) 
      2. Error: test spatialAutoRange for low-resolution rasters (@testSpatialAutoRange.R#71) 
      3. Error: test spatiaBlock function with systematic assingment and no raster file (@testSpatialBlock.R#65) 
      4. Error: test spatiaBlock function with non-numeric iteration (@testSpatialBlock.R#98) 
      5. Error: test spatiaBlock with checkerboard assingment and only row blocks (@testSpatialBlock.R#132) 
      6. Error: test spatialBlock with no speceis column match (@testSpatialBlock.R#269) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘biomod2’ in Rd xrefs
    ```

# codebook

<details>

* Version: 0.8.2
* Source code: https://github.com/cran/codebook
* URL: https://github.com/rubenarslan/codebook
* BugReports: https://github.com/rubenarslan/codebook/issues
* Date/Publication: 2020-01-09 16:20:07 UTC
* Number of recursive dependencies: 176

Run `revdep_details(,"codebook")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘graphics’ ‘jsonlite’ ‘pander’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 65 marked UTF-8 strings
    ```

# cSEM

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/cSEM
* URL: https://github.com/M-E-Rademaker/cSEM, https://m-e-rademaker.github.io/cSEM/
* BugReports: https://github.com/M-E-Rademaker/cSEM/issues
* Date/Publication: 2020-01-13 17:20:02 UTC
* Number of recursive dependencies: 100

Run `revdep_details(,"cSEM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# datapackage.r

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2019-05-20 16:40:03 UTC
* Number of recursive dependencies: 128

Run `revdep_details(,"datapackage.r")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
       4. datapackage.r::dereferenceResourceDescriptor(descriptor, basePath)
       5. base::tryCatch(...)
       6. base:::tryCatchList(expr, classes, parentenv, handlers)
       7. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       8. value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 179 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 17 ]
      1. Error: initializes with URL descriptor (@test-package.R#23) 
      2. Error: loads relative resource (@test-package.R#48) 
      3. Error: loads resource from absolute URL (@test-package.R#60) 
      4. Error: loads resource from absolute URL disregarding basePath (@test-package.R#72) 
      5. Error: loads remote resource with basePath (@test-package.R#85) 
      6. Error: remote 
      7. Error: profile data-package should be up-to-date (@test-profile.R#105) 
      8. Error: profile tabular-data-package should be up-to-date (@test-profile.R#105) 
      9. Error: profile fiscal-data-package should be up-to-date (@test-profile.R#105) 
      1. ...
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘iterators’ ‘readr’
      All declared Imports should be used.
    ```

# delayed

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/delayed
* URL: https://tlverse.org/delayed
* BugReports: https://github.com/tlverse/delayed/issues
* Date/Publication: 2020-02-28 11:40:02 UTC
* Number of recursive dependencies: 64

Run `revdep_details(,"delayed")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘assertthat’
      All declared Imports should be used.
    ```

# fabletools

<details>

* Version: 0.1.2
* Source code: https://github.com/cran/fabletools
* URL: http://fabletools.tidyverts.org/
* BugReports: https://github.com/tidyverts/fabletools/issues
* Date/Publication: 2020-01-29 09:00:02 UTC
* Number of recursive dependencies: 90

Run `revdep_details(,"fabletools")` for more info

</details>

## In both

*   checking S3 generic/method consistency ... WARNING
    ```
    Failed to query server: Connection timed out
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    Failed to query server: Connection timed out
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking Rd files ... WARNING
    ```
    Failed to query server: Connection timed out
    prepare_Rd: running command 'timedatectl' had status 1
    ```

*   checking for missing documentation entries ... WARNING
    ```
    Failed to query server: Connection timed out
    All user-level objects in a package should have documentation entries.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    Failed to query server: Connection timed out
    ```

*   checking for unstated dependencies in examples ... WARNING
    ```
    Failed to query server: Connection timed out
    Warning in system("timedatectl", intern = TRUE) :
      running command 'timedatectl' had status 1
    ```

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    ```

*   checking foreign function calls ... NOTE
    ```
    Failed to query server: Connection timed out
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Failed to query server: Connection timed out
    ```

*   checking Rd \usage sections ... NOTE
    ```
    Failed to query server: Connection timed out
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# fiery

<details>

* Version: 1.1.2
* Source code: https://github.com/cran/fiery
* URL: https://fiery.data-imaginist.com, https://github.com/thomasp85/fiery
* BugReports: https://github.com/thomasp85/fiery/issues
* Date/Publication: 2019-09-27 06:50:03 UTC
* Number of recursive dependencies: 61

Run `revdep_details(,"fiery")` for more info

</details>

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(fiery)
      > 
      > test_check("fiery")
      
      ── 1. Failure: TimeStack works (@test-FutureStack.R#84)  ───────────────────────
      `time$eval()` produced messages.
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 258 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Failure: TimeStack works (@test-FutureStack.R#84) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# foieGras

<details>

* Version: 0.4.0
* Source code: https://github.com/cran/foieGras
* URL: https://cran.r-project.org/package=foieGras
* BugReports: https://github.com/ianjonsen/foieGras/issues
* Date/Publication: 2019-10-07 22:10:03 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"foieGras")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘foieGras-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: fit_mpm
    > ### Title: fit a a Move Persistence Model (mpm)
    > ### Aliases: fit_mpm
    > 
    > ### ** Examples
    > 
    > ## fit jmpm to two southern elephant seals
    > data(fssm)
    > dmp <- grab(fssm, "predicted", as_sf=FALSE)
    Warning in CPL_transform(x, crs$proj4string) :
      GDAL Error 6: Unable to load PROJ.4 library (libproj.so), creation of OGRCoordinateTransformation failed.
    Error in CPL_transform(x, crs$proj4string) : 
      OGRCreateCoordinateTransformation() returned NULL: PROJ available?
    Calls: grab ... st_transform -> st_transform.sfc -> structure -> CPL_transform
    Execution halted
    ```

*   checking tests ...
    ```
    ...
      
      ── 7. Error: (unknown) (@test-prefilter.R#15)  ─────────────────────────────────
      OGRCreateCoordinateTransformation() returned NULL: PROJ available?
      Backtrace:
       1. sf::st_transform(ellie_sf, crs = "+proj=stere +lat_0=-90 +lat_ts=-71 +lon_0=0 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=km +no_defs")
       2. sf:::st_transform.sf(ellie_sf, crs = "+proj=stere +lat_0=-90 +lat_ts=-71 +lon_0=0 +k=1 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=km +no_defs")
       4. sf:::st_transform.sfc(st_geometry(x), crs, ...)
       6. sf:::CPL_transform(x, crs$proj4string)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 10 | SKIPPED: 12 | WARNINGS: 7 | FAILED: 7 ]
      1. Error: (unknown) (@test-fit_mpm.R#7) 
      2. Error: fit_ssm defaults + crw + KF return foieGras list w 15 elements (@test-fit_ssm.R#34) 
      3. Error: (unknown) (@test-fmap.R#6) 
      4. Error: (unknown) (@test-grab.R#6) 
      5. Error: (unknown) (@test-join.R#7) 
      6. Error: (unknown) (@test-plot.R#7) 
      7. Error: (unknown) (@test-prefilter.R#15) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        libs  11.0Mb
    ```

# future.batchtools

<details>

* Version: 0.8.1
* Source code: https://github.com/cran/future.batchtools
* URL: https://github.com/HenrikBengtsson/future.batchtools
* BugReports: https://github.com/HenrikBengtsson/future.batchtools/issues
* Date/Publication: 2019-10-01 05:10:05 UTC
* Number of recursive dependencies: 35

Run `revdep_details(,"future.batchtools")` for more info

</details>

## In both

*   R CMD check timed out
    

# GetBCBData

<details>

* Version: 0.5
* Source code: https://github.com/cran/GetBCBData
* URL: https://github.com/msperlin/GetBCBData/
* BugReports: https://github.com/msperlin/GetBCBData/issues
* Date/Publication: 2019-04-23 10:10:29 UTC
* Number of recursive dependencies: 102

Run `revdep_details(,"GetBCBData")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘GetBCBData-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: gbcbd_test_internet
    > ### Title: Tests for an internet conection
    > ### Aliases: gbcbd_test_internet
    > 
    > ### ** Examples
    > 
    > 
    > inet.flag <- gbcbd_test_internet()
    Error in gbcbd_test_internet() : No internet connection found...
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘lubridate’ ‘readr’ ‘stats’
      All declared Imports should be used.
    ```

# grattan

<details>

* Version: 1.8.0.0
* Source code: https://github.com/cran/grattan
* URL: https://github.com/HughParsonage/grattan, https://hughparsonage.github.io/grattan/
* BugReports: https://github.com/HughParsonage/grattan/issues
* Date/Publication: 2019-11-15 18:50:09 UTC
* Number of recursive dependencies: 113

Run `revdep_details(,"grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

# GSODR

<details>

* Version: 2.0.1
* Source code: https://github.com/cran/GSODR
* URL: https://docs.ropensci.org/GSODR/
* BugReports: https://github.com/ropensci/GSODR/issues
* Date/Publication: 2020-01-24 07:50:02 UTC
* Number of recursive dependencies: 122

Run `revdep_details(,"GSODR")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
       11. value[[3L]](cond)
      
      ── 2. Error: when year is selected for a station not providing it, error (@test-
      
      The file downloads have failed. Please restart.
      Backtrace:
        1. testthat::expect_message(...)
        6. GSODR::get_GSOD(years = 1950, station = "959360-99999")
        7. GSODR:::.download_files(station, years)
        8. base::tryCatch(...)
        9. base:::tryCatchList(expr, classes, parentenv, handlers)
       10. base:::tryCatchOne(expr, names, parentenv, handlers[[1L]])
       11. value[[3L]](cond)
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 31 | SKIPPED: 9 | WARNINGS: 0 | FAILED: 2 ]
      1. Failure: The 'max_missing' parameter filters out improper stations (@test-get_GSOD.R#128) 
      2. Error: when year is selected for a station not providing it, error (@test-get_GSOD.R#249) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# gWQS

<details>

* Version: 2.0.1
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2020-03-03 12:20:02 UTC
* Number of recursive dependencies: 159

Run `revdep_details(,"gWQS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘dplyr’
      All declared Imports should be used.
    ```

# gWQSRS

<details>

* Version: 1.1.1
* Source code: https://github.com/cran/gWQSRS
* Date/Publication: 2020-03-03 11:40:02 UTC
* Number of recursive dependencies: 111

Run `revdep_details(,"gWQSRS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘dplyr’ ‘ggrepel’ ‘kableExtra’ ‘knitr’ ‘nnet’ ‘plotROC’
      All declared Imports should be used.
    ```

# hackeRnews

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/hackeRnews
* URL: https://github.com/szymanskir/hackeRnews
* BugReports: https://github.com/szymanskir/hackeRnews/issues
* Date/Publication: 2019-12-13 13:20:05 UTC
* Number of recursive dependencies: 61

Run `revdep_details(,"hackeRnews")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘hackeRnews-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_best_stories
    > ### Title: Hacker News best stories
    > ### Aliases: get_best_stories
    > 
    > ### ** Examples
    > 
    > # get the best story on Hacker News
    > best_story <- get_best_stories(max_items = 1)
    Error in curl::curl_fetch_memory(url, handle = handle) : 
      Could not resolve host: hacker-news.firebaseio.com; Name or service not known
    Calls: get_best_stories ... request_fetch -> request_fetch.write_memory -> <Anonymous>
    Execution halted
    ```

# infercnv

<details>

* Version: 1.2.1
* Source code: https://github.com/cran/infercnv
* URL: https://github.com/broadinstitute/inferCNV/wiki
* BugReports: https://github.com/broadinstitute/inferCNV/issues
* Date/Publication: 2019-11-15
* Number of recursive dependencies: 126

Run `revdep_details(,"infercnv")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
      See the note in ?`:::` about the use of this operator.
    ```

# inlinedocs

<details>

* Version: 2019.12.5
* Source code: https://github.com/cran/inlinedocs
* URL: http://github.com/tdhock/inlinedocs
* BugReports: http://github.com/tdhock/inlinedocs/issues
* Date/Publication: 2019-12-05 23:30:07 UTC
* Number of recursive dependencies: 6

Run `revdep_details(,"inlinedocs")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘R.methodsS3’ in Rd xrefs
    ```

# ipc

<details>

* Version: 0.1.3
* Source code: https://github.com/cran/ipc
* URL: https://github.com/fellstat/ipc
* BugReports: https://github.com/fellstat/ipc/issues
* Date/Publication: 2019-06-23 06:00:03 UTC
* Number of recursive dependencies: 55

Run `revdep_details(,"ipc")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    ...
    > 
    > ### ** Examples
    > 
    > library(future)
    > strategy <- "future::multisession"
    > plan(strategy)
    Warning in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  :
      port 37400 cannot be opened
    Error in socketConnection("localhost", port = port, server = TRUE, blocking = TRUE,  : 
      Failed to launch and connect to R worker on local machine ‘localhost’ from local machine ‘qb3-id134’.
     * The error produced by socketConnection() was: ‘cannot open the connection’
     * In addition, socketConnection() produced 1 warning(s):
       - Warning #1: ‘port 37400 cannot be opened’ (which suggests that this port is either already occupied by another process or blocked by the firewall on your local machine)
     * The localhost socket connection that failed to connect to the R worker used port 37400 using a communication timeout of 120 seconds and a connection timeout of 120 seconds.
     * Worker launch call: '/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript' --default-packages=datasets,utils,grDevices,graphics,stats,methods -e '#label=UNKNOWN:12852:qb3-id134:hb' -e 'try(suppressWarnings(cat(Sys.getpid(),file="/scratch/678242.1.long.q/RtmpbFCxuf/future.parent=12852.323450bd0e70.pid")), silent = TRUE)' -e 'parallel:::.slaveRSOCK()' MASTER=localhost PORT=37400 OUT=/dev/null TIMEOUT=120 XDR=TRUE.
     * Worker (PID 13024) was successfully killed: TRUE
     * Troubleshooting suggestions:
       - Suggestion #1: Set 'verbose=TRUE' to see more details.
       - Suggestion #2: Set 'outfile=NULL' to see output from worker.
    Calls: plan ... tryCatchList -> tryCatchOne -> <Anonymous> -> <Anonymous>
    Execution halted
    ```

# ldaPrototype

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/ldaPrototype
* URL: https://github.com/JonasRieger/ldaPrototype, https://doi.org/10.5281/zenodo.3597978
* BugReports: https://github.com/JonasRieger/ldaPrototype/issues
* Date/Publication: 2020-01-10 17:40:09 UTC
* Number of recursive dependencies: 100

Run `revdep_details(,"ldaPrototype")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      The following object is masked from 'package:stats':
      
          cutree
      
      > 
      > test_check("ldaPrototype")
      ── 1. Error: (unknown) (@test_jaccardTopics.R#8)  ──────────────────────────────
      wrong sign in 'by' argument
      Backtrace:
       1. ldaPrototype::jaccardTopics(mtopics, pm.backend = "socket")
       2. ldaPrototype:::jaccardTopics.parallel(...)
       3. base::lapply(...)
       4. ldaPrototype:::FUN(X[[i]], ...)
       6. base::seq.default(x, N - 2, max(ncpus, 2))
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 241 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Error: (unknown) (@test_jaccardTopics.R#8) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# lidR

<details>

* Version: 2.2.3
* Source code: https://github.com/cran/lidR
* URL: https://github.com/Jean-Romain/lidR
* BugReports: https://github.com/Jean-Romain/lidR/issues
* Date/Publication: 2020-03-02 19:10:02 UTC
* Number of recursive dependencies: 153

Run `revdep_details(,"lidR")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘rgl’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# mcp

<details>

* Version: 0.2.0
* Source code: https://github.com/cran/mcp
* URL: http://lindeloev.github.io/mcp/, https://github.com/lindeloev/mcp
* BugReports: https://github.com/lindeloev/mcp/issues
* Date/Publication: 2020-01-09 16:30:02 UTC
* Number of recursive dependencies: 94

Run `revdep_details(,"mcp")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘bayesplot’ ‘methods’ ‘purrr’
      All declared Imports should be used.
    ```

# merTools

<details>

* Version: 0.5.0
* Source code: https://github.com/cran/merTools
* BugReports: https://www.github.com/jknowles/merTools
* Date/Publication: 2019-05-13 12:30:06 UTC
* Number of recursive dependencies: 130

Run `revdep_details(,"merTools")` for more info

</details>

## In both

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setClass("balance", representation(rawdata = "data.frame", matched = "data.frame",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘arm’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rstanarm’
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setClass("balance", representation(rawdata = "data.frame", matched = "data.frame",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘arm’
    Execution halted
    ```

# metagam

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/metagam
* URL: https://lifebrain.github.io/metagam/, https://github.com/Lifebrain/metagam
* BugReports: https://github.com/Lifebrain/metagam/issues
* Date/Publication: 2020-02-20 10:20:02 UTC
* Number of recursive dependencies: 139

Run `revdep_details(,"metagam")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# MetamapsDB

<details>

* Version: 0.0.2
* Source code: https://github.com/cran/MetamapsDB
* Date/Publication: 2017-12-06 09:51:00 UTC
* Number of recursive dependencies: 121

Run `revdep_details(,"MetamapsDB")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Matrix’ ‘shiny’
      All declared Imports should be used.
    ```

# methyvim

<details>

* Version: 1.8.0
* Source code: https://github.com/cran/methyvim
* URL: https://github.com/nhejazi/methyvim
* BugReports: https://github.com/nhejazi/methyvim/issues
* Date/Publication: 2019-11-01
* Number of recursive dependencies: 192

Run `revdep_details(,"methyvim")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘tmle.npvi’ in Rd xrefs
    ```

# ngstk

<details>

* Version: 0.2.3
* Source code: https://github.com/cran/ngstk
* URL: https://github.com/JhuangLab/ngstk
* BugReports: https://github.com/JhuangLab/ngstk/issues
* Date/Publication: 2018-11-22 16:40:03 UTC
* Number of recursive dependencies: 49

Run `revdep_details(,"ngstk")` for more info

</details>

## In both

*   checking Rd \usage sections ... WARNING
    ```
    Documented arguments not in \usage in documentation object 'rbin':
      ‘...’
    
    Functions with \usage entries need to have the appropriate \alias
    entries, and all their arguments documented.
    The \usage entries must correspond to syntactically valid R code.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# origami

<details>

* Version: 1.0.3
* Source code: https://github.com/cran/origami
* URL: https://tlverse.org/origami
* BugReports: https://github.com/tlverse/origami/issues
* Date/Publication: 2020-01-16 22:40:02 UTC
* Number of recursive dependencies: 82

Run `revdep_details(,"origami")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘glmnet’ in Rd xrefs
    ```

# pavo

<details>

* Version: 2.4.0
* Source code: https://github.com/cran/pavo
* URL: http://pavo.colrverse.com, https://github.com/rmaia/pavo/
* BugReports: https://github.com/rmaia/pavo/issues
* Date/Publication: 2020-02-08 16:20:08 UTC
* Number of recursive dependencies: 106

Run `revdep_details(,"pavo")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rgl’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘rgl’ in Rd xrefs
    ```

# PCRedux

<details>

* Version: 1.0-4
* Source code: https://github.com/cran/PCRedux
* URL: https://CRAN.R-project.org/package=PCRedux
* BugReports: https://github.com/PCRuniversum/PCRedux/issues
* Date/Publication: 2020-01-07 22:40:02 UTC
* Number of recursive dependencies: 164

Run `revdep_details(,"PCRedux")` for more info

</details>

## In both

*   checking whether package ‘PCRedux’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/PCRedux/new/PCRedux.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘PCRedux’ ...
** package ‘PCRedux’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/PCRedux/new/PCRedux.Rcheck/00_pkg_src/PCRedux: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rgl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PCRedux’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/PCRedux/new/PCRedux.Rcheck/PCRedux’

```
### CRAN

```
* installing *source* package ‘PCRedux’ ...
** package ‘PCRedux’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/PCRedux/old/PCRedux.Rcheck/00_pkg_src/PCRedux: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘rgl’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘PCRedux’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/PCRedux/old/PCRedux.Rcheck/PCRedux’

```
# photosynthesis

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/photosynthesis
* Date/Publication: 2019-05-09 15:10:03 UTC
* Number of recursive dependencies: 73

Run `revdep_details(,"photosynthesis")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyr’
      All declared Imports should be used.
    ```

# phylolm

<details>

* Version: 2.6
* Source code: https://github.com/cran/phylolm
* URL: https://CRAN.R-project.org/package=phylolm
* Date/Publication: 2018-05-31 04:51:24 UTC
* Number of recursive dependencies: 33

Run `revdep_details(,"phylolm")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown packages ‘surface’, ‘bayou’, ‘geiger’, ‘caper’ in Rd xrefs
    ```

# prewas

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/prewas
* URL: http://github.com/Snitkin-Lab-Umich/prewas
* BugReports: http://github.com/Snitkin-Lab-Umich/prewas/issues
* Date/Publication: 2020-02-25 14:50:03 UTC
* Number of recursive dependencies: 70

Run `revdep_details(,"prewas")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘stats’
      All declared Imports should be used.
    ```

# promises

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/promises
* URL: https://rstudio.github.io/promises, https://github.com/rstudio/promises
* BugReports: https://github.com/rstudio/promises/issues
* Date/Publication: 2019-10-04 23:00:05 UTC
* Number of recursive dependencies: 44

Run `revdep_details(,"promises")` for more info

</details>

## In both

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘purrr’ in Rd xrefs
    ```

# Prostar

<details>

* Version: 1.18.6
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2020-01-23
* Number of recursive dependencies: 259

Run `revdep_details(,"Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

# QDNAseq

<details>

* Version: 1.22.0
* Source code: https://github.com/cran/QDNAseq
* URL: https://github.com/ccagc/QDNAseq
* BugReports: https://github.com/ccagc/QDNAseq/issues
* Date/Publication: 2019-10-29
* Number of recursive dependencies: 70

Run `revdep_details(,"QDNAseq")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# qgcomp

<details>

* Version: 2.2.2
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2020-03-01 23:00:02 UTC
* Number of recursive dependencies: 81

Run `revdep_details(,"qgcomp")` for more info

</details>

## In both

*   checking for missing documentation entries ... ERROR
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking whether the package can be unloaded cleanly ... WARNING
    ```
    Error in setClass("balance", representation(rawdata = "data.frame", matched = "data.frame",  : 
      could not find function "setClass"
    Error: package or namespace load failed for ‘qgcomp’:
     unable to load R code in package ‘arm’
    Execution halted
    ```

*   checking whether the namespace can be loaded with stated dependencies ... WARNING
    ```
    Error in setClass("balance", representation(rawdata = "data.frame", matched = "data.frame",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘arm’
    Execution halted
    
    A namespace must be able to be loaded with just the base namespace
    loaded: otherwise if the namespace gets loaded by a saved object, the
    session will be unable to start.
    
    Probably some imports need to be declared in the NAMESPACE file.
    ```

*   checking S3 generic/method consistency ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See section ‘Generic functions and methods’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking replacement functions ... WARNING
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The argument of a replacement function which corresponds to the right
    hand side must be named ‘value’.
    ```

*   checking for code/documentation mismatches ... WARNING
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    ...
    Call sequence:
    6: stop(msg, call. = FALSE, domain = NA)
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    ```

*   checking foreign function calls ... NOTE
    ```
    ...
    5: value[[3L]](cond)
    4: tryCatchOne(expr, names, parentenv, handlers[[1L]])
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    See chapter ‘System and foreign language interfaces’ in the ‘Writing R
    Extensions’ manual.
    ```

*   checking R code for possible problems ... NOTE
    ```
    Error in setClass("balance", representation(rawdata = "data.frame", matched = "data.frame",  : 
      could not find function "setClass"
    Error: unable to load R code in package ‘arm’
    Execution halted
    ```

*   checking Rd \usage sections ... NOTE
    ```
    ...
    3: tryCatchList(expr, classes, parentenv, handlers)
    2: tryCatch({
           attr(package, "LibPath") <- which.lib.loc
           ns <- loadNamespace(package, lib.loc)
           env <- attachNamespace(ns, pos = pos, deps, exclude, include.only)
       }, error = function(e) {
           P <- if (!is.null(cc <- conditionCall(e))) 
               paste(" in", deparse(cc)[1L])
           else ""
           msg <- gettextf("package or namespace load failed for %s%s:\n %s", 
               sQuote(package), P, conditionMessage(e))
           if (logical.return) 
               message(paste("Error:", msg), domain = NA)
           else stop(msg, call. = FALSE, domain = NA)
       })
    1: library(package, lib.loc = lib.loc, character.only = TRUE, verbose = FALSE)
    Execution halted
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# reproducible

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/reproducible
* URL: https://reproducible.predictiveecology.org, https://github.com/PredictiveEcology/reproducible
* BugReports: https://github.com/PredictiveEcology/reproducible/issues
* Date/Publication: 2020-02-20 17:30:02 UTC
* Number of recursive dependencies: 121

Run `revdep_details(,"reproducible")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      2        .FUN         .FUN 7a8f2865ef4bc06d    1256
        functionName        component  elapsedTime units
      1      readRDS          Hashing 0.0015921593  secs
      2      readRDS  Running readRDS 0.0006744862  secs
      3      readRDS   Saving to repo 1.8572595119  secs
      4      readRDS Whole Cache call 1.8833503723  secs
        objectNames hashElements             hash objSize
      1        file         file 3b7b314e89d64c2b   24120
      2        .FUN         .FUN 7a8f2865ef4bc06d    1256
        functionName         component  elapsedTime units
      1      readRDS           Hashing 0.0011324883  secs
      2      readRDS Loading from repo 0.0006251335  secs
      3      readRDS  Whole Cache call 0.2205529213  secs
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 310 | SKIPPED: 67 | WARNINGS: 5 | FAILED: 3 ]
      1. Error: testing prepInputs with deauthorized googledrive 
      2. Error: git-related functions work (@test-git.R#15) 
      3. Error: prepInputs doesn't work (part 3) (@test-postProcess.R#27) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# robotstxt

<details>

* Version: 0.6.2
* Source code: https://github.com/cran/robotstxt
* URL: https://github.com/ropensci/robotstxt
* BugReports: https://github.com/ropensci/robotstxt/issues
* Date/Publication: 2018-07-18 21:30:03 UTC
* Number of recursive dependencies: 62

Run `revdep_details(,"robotstxt")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# sapfluxnetr

<details>

* Version: 0.0.7
* Source code: https://github.com/cran/sapfluxnetr
* URL: https://github.com/sapfluxnet/sapfluxnetr
* BugReports: https://github.com/sapfluxnet/sapfluxnetr/issues
* Date/Publication: 2019-05-01 10:40:03 UTC
* Number of recursive dependencies: 101

Run `revdep_details(,"sapfluxnetr")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# SCtools

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/SCtools
* BugReports: https://github.com/bcastanho/SCtools/issues
* Date/Publication: 2019-12-12 13:40:02 UTC
* Number of recursive dependencies: 85

Run `revdep_details(,"SCtools")` for more info

</details>

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 27 marked UTF-8 strings
    ```

# seer

<details>

* Version: 1.1.4
* Source code: https://github.com/cran/seer
* Date/Publication: 2020-02-21 17:20:03 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"seer")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ForeCA’ ‘Mcomp’ ‘repmis’
      All declared Imports should be used.
    ```

# Seurat

<details>

* Version: 3.1.4
* Source code: https://github.com/cran/Seurat
* URL: http://www.satijalab.org/seurat, https://github.com/satijalab/seurat
* BugReports: https://github.com/satijalab/seurat/issues
* Date/Publication: 2020-02-26 19:00:06 UTC
* Number of recursive dependencies: 221

Run `revdep_details(,"Seurat")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: 'loomR', 'SDMTools'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown packages ‘SDMTools’, ‘loomR’ in Rd xrefs
    ```

# shinyrecap

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/shinyrecap
* URL: https://fellstat.github.io/shinyrecap/
* Date/Publication: 2019-01-19 23:40:03 UTC
* Number of recursive dependencies: 85

Run `revdep_details(,"shinyrecap")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CARE1’ ‘LCMCR’ ‘coda’ ‘conting’ ‘dga’ ‘future’ ‘ggplot2’ ‘ipc’
      ‘promises’ ‘reshape’ ‘shinycssloaders’ ‘testthat’
      All declared Imports should be used.
    ```

# skpr

<details>

* Version: 0.64.2
* Source code: https://github.com/cran/skpr
* URL: https://github.com/tylermorganwall/skpr
* BugReports: https://github.com/tylermorganwall/skpr/issues
* Date/Publication: 2020-03-04 20:20:02 UTC
* Number of recursive dependencies: 126

Run `revdep_details(,"skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.4Mb
      sub-directories of 1Mb or more:
        libs  12.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘nlme’
      All declared Imports should be used.
    ```

# solitude

<details>

* Version: 0.2.1
* Source code: https://github.com/cran/solitude
* URL: https://github.com/talegari/solitude
* BugReports: https://github.com/talegari/solitude/issues
* Date/Publication: 2019-12-07 09:00:02 UTC
* Number of recursive dependencies: 38

Run `revdep_details(,"solitude")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# spacey

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/spacey
* URL: https://github.com/mikemahoney218/spacey, https://mikemahoney218.github.io/spacey/
* BugReports: https://github.com/mikemahoney218/spacey/issues
* Date/Publication: 2020-02-28 12:30:03 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"spacey")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘spacey-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_texture
    > ### Title: Get color textures for a map
    > ### Aliases: get_texture
    > ### Keywords: internal
    > 
    > ### ** Examples
    > 
    > get_texture("spacey1")
    Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
      there is no package called ‘rgl’
    Calls: get_texture ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# stars

<details>

* Version: 0.4-0
* Source code: https://github.com/cran/stars
* URL: https://r-spatial.github.io/stars/, https://github.com/r-spatial/stars/
* BugReports: https://github.com/r-spatial/stars/issues/
* Date/Publication: 2019-10-10 13:00:02 UTC
* Number of recursive dependencies: 122

Run `revdep_details(,"stars")` for more info

</details>

## In both

*   checking whether package ‘stars’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/stars/new/stars.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘starsdata’
    ```

## Installation

### Devel

```
* installing *source* package ‘stars’ ...
** package ‘stars’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/stars/new/stars.Rcheck/00_pkg_src/stars: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/scratch/678242.1.long.q/tmp.pLrWv5vzw7/stars/lwgeom/libs/lwgeom.so':
  /scratch/678242.1.long.q/tmp.pLrWv5vzw7/stars/lwgeom/libs/lwgeom.so: undefined symbol: GEOSClipByRect
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘stars’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/stars/new/stars.Rcheck/stars’

```
### CRAN

```
* installing *source* package ‘stars’ ...
** package ‘stars’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/stars/old/stars.Rcheck/00_pkg_src/stars: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/scratch/678242.1.long.q/tmp.pLrWv5vzw7/stars/lwgeom/libs/lwgeom.so':
  /scratch/678242.1.long.q/tmp.pLrWv5vzw7/stars/lwgeom/libs/lwgeom.so: undefined symbol: GEOSClipByRect
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘stars’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/stars/old/stars.Rcheck/stars’

```
# startR

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/startR
* URL: https://earth.bsc.es/gitlab/es/startR/
* BugReports: https://earth.bsc.es/gitlab/es/startR/issues
* Date/Publication: 2017-04-22 04:26:58 UTC
* Number of recursive dependencies: 29

Run `revdep_details(,"startR")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Unexported objects imported by ':::' calls:
      ‘s2dverification:::.KnownLatNames’ ‘s2dverification:::.KnownLonNames’
      See the note in ?`:::` about the use of this operator.
    ```

# tableschema.r

<details>

* Version: 1.1.0
* Source code: https://github.com/cran/tableschema.r
* URL: https://github.com/frictionlessdata/tableschema-r
* BugReports: https://github.com/frictionlessdata/tableschema-r/issues
* Date/Publication: 2018-11-14 16:50:03 UTC
* Number of recursive dependencies: 56

Run `revdep_details(,"tableschema.r")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
       1. table$read(limit = 2)
       2. self$iter(keyed = keyed, extended = extended, cast = cast, relations = relations)
       3. con$iterable()
       5. base::open.connection(private$connection_)
      
      Failed to query server: Connection timed out
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 513 | SKIPPED: 0 | WARNINGS: 4 | FAILED: 5 ]
      1. Error: test (@test-helpers.R#19) 
      2. Error: test (@test-helpers.R#24) 
      3. Error: table-schema is up-to-date (@test-profile.R#13) 
      4. Error: should use utf-8 by default for remote resource (@test-table-general.R#186) 
      5. Error: should support user-defined encoding for remote resource (@test-table-general.R#207) 
      
      Error: testthat unit tests failed
      In addition: Warning messages:
      1: In is.data.frame(x) :
        closing unused connection 99 (https://raw.githubusercontent.com/frictionlessdata/tableschema-js/master/data/latin1.csv)
      2: In is.data.frame(x) :
        closing unused connection 5 (https://raw.githubusercontent.com/frictionlessdata/tableschema-js/master/data/data_infer.csv)
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘iterators’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘parsedate’ in Rd xrefs
    ```

# tealeaves

<details>

* Version: 1.0.0
* Source code: https://github.com/cran/tealeaves
* Date/Publication: 2019-05-04 16:40:03 UTC
* Number of recursive dependencies: 71

Run `revdep_details(,"tealeaves")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘tidyr’
      All declared Imports should be used.
    ```

# treeHMM

<details>

* Version: 0.1.1
* Source code: https://github.com/cran/treeHMM
* Date/Publication: 2019-12-12 17:10:02 UTC
* Number of recursive dependencies: 10

Run `revdep_details(,"treeHMM")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Matrix’
      All declared Imports should be used.
    ```

# tsfeatures

<details>

* Version: 1.0.1
* Source code: https://github.com/cran/tsfeatures
* URL: https://pkg.robjhyndman.com/tsfeatures/
* BugReports: https://github.com/robjhyndman/tsfeatures/issues/
* Date/Publication: 2019-04-16 13:02:47 UTC
* Number of recursive dependencies: 96

Run `revdep_details(,"tsfeatures")` for more info

</details>

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘tsfeatures-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: yahoo_data
    > ### Title: Yahoo server metrics
    > ### Aliases: yahoo_data
    > 
    > ### ** Examples
    > 
    > yahoo <- yahoo_data()
    trying URL 'https://github.com/robjhyndman/tsfeatures/raw/master/extra-data/yahoo.rda'
    Warning in utils::download.file("https://github.com/robjhyndman/tsfeatures/raw/master/extra-data/yahoo.rda",  :
      URL 'https://github.com/robjhyndman/tsfeatures/raw/master/extra-data/yahoo.rda': status was 'Couldn't resolve host name'
    Error in utils::download.file("https://github.com/robjhyndman/tsfeatures/raw/master/extra-data/yahoo.rda",  : 
      cannot open URL 'https://github.com/robjhyndman/tsfeatures/raw/master/extra-data/yahoo.rda'
    Calls: yahoo_data -> <Anonymous>
    Execution halted
    ```

# TSstudio

<details>

* Version: 0.1.6
* Source code: https://github.com/cran/TSstudio
* URL: https://github.com/RamiKrispin/TSstudio
* BugReports: https://github.com/RamiKrispin/TSstudio/issues
* Date/Publication: 2020-01-21 05:30:02 UTC
* Number of recursive dependencies: 140

Run `revdep_details(,"TSstudio")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    Namespace in Imports field not imported from: ‘forecastHybrid’
      All declared Imports should be used.
    ```

