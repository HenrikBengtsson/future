# abjutils

<details>

* Version: 0.2.3
* Source code: https://github.com/cran/abjutils
* URL: https://github.com/abjur/abjutils
* Date/Publication: 2019-02-07 21:43:35 UTC
* Number of recursive dependencies: 94

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
* Number of recursive dependencies: 94

Run `revdep_details(,"adept")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tibble’
      All declared Imports should be used.
    ```

# alookr

<details>

* Version: 0.3.0
* Source code: https://github.com/cran/alookr
* BugReports: https://github.com/choonghyunryu/alookr/issues
* Date/Publication: 2020-03-20 09:50:08 UTC
* Number of recursive dependencies: 202

Run `revdep_details(,"alookr")` for more info

</details>

## In both

*   checking whether package ‘alookr’ can be installed ... WARNING
    ```
    Found the following significant warnings:
      Warning: no DISPLAY variable so Tk is not available
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/alookr/new/alookr.Rcheck/00install.out’ for details.
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
      'Cairo', 'sfit', 'expectile', 'HaarSeg', 'mpcbs'
    ```

# batchtools

<details>

* Version: 0.9.13
* Source code: https://github.com/cran/batchtools
* URL: https://github.com/mllg/batchtools
* BugReports: https://github.com/mllg/batchtools/issues
* Date/Publication: 2020-03-19 23:00:02 UTC
* Number of recursive dependencies: 74

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

* Version: 0.3-9
* Source code: https://github.com/cran/blavaan
* Date/Publication: 2020-03-09 17:20:02 UTC
* Number of recursive dependencies: 102

Run `revdep_details(,"blavaan")` for more info

</details>

## In both

*   checking whether package ‘blavaan’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/blavaan/new/blavaan.Rcheck/00install.out’ for details.
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
g++ -std=c++1y -fPIC  -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG -I"../inst/include" -I"`"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/RcppEigen/include" -I/usr/local/include    -Wno-unused-variable -Wno-unused-function -c stan_files/stanmarg.cc -o stan_files/stanmarg.o
In file included from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:32: error: ‘std::index_sequence’ has not been declared
                           std::index_sequence<I...> i) {
                                ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:46: error: expected ‘,’ or ‘...’ before ‘<’ token
                           std::index_sequence<I...> i) {
                                              ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In function ‘constexpr auto stan::math::internal::apply(const F&, const Tuple&)’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: error: ‘make_index_sequence’ is not a member of ‘std’
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                           ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: note: suggested alternative:
In file included from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/container/vector/vector.hpp:28:0,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/container/vector/vector10.hpp:25,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/transform_view/transform_view.hpp:22,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/algorithm/transformation/transform.hpp:11,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/zip_view/detail/begin_impl.hpp:14,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/zip_view/zip_view.hpp:16,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/zip_view.hpp:12,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/include/zip_view.hpp:11,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint/util/resize.hpp:26,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint/util/state_wrapper.hpp:26,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint/util/ublas_wrapper.hpp:33,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint.hpp:25,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/prim/arr/functor/integrate_ode_rk45.hpp:17,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/prim/arr.hpp:46,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/prim/mat.hpp:344,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:12,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/support/detail/index_sequence.hpp:59:12: note:   ‘boost::fusion::detail::make_index_sequence’
     struct make_index_sequence
            ^
In file included from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected primary-expression before ‘{’ token
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                                                                             ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected ‘)’ before ‘{’ token
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: At global scope:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:151:9: error: expected type-specifier
       = std::result_of_t<F(decltype(is_var_), decltype(value_of(Targs()))...)>;
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:42: error: ‘FReturnType’ was not declared in this scope
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                          ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:53: error: template argument 1 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                     ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:61: error: template argument 2 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                             ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘std::vector<stan::math::var> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const std::vector<double>&)’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:349:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.size();
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:350:32: error: invalid types ‘int[int]’ for array subscript
     std::vector<var> var_y(M_[0]);
                                ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘Eigen::Matrix<stan::math::var, R, C> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const Eigen::Matrix<double, R, C>&)’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:375:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.rows();
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:376:9: error: invalid types ‘int[int]’ for array subscript
     M_[1] = val_y.cols();
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:40: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                        ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:47: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                               ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘void stan::math::adj_jac_vari<F, Targs>::chain()’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:5: error: ‘FReturnType’ was not declared in this scope
     FReturnType y_adj;
     ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:17: error: expected ‘;’ before ‘y_adj’
     FReturnType y_adj;
                 ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:532:38: error: ‘y_adj’ was not declared in this scope
     internal::build_y_adj(y_vi_, M_, y_adj);
                                      ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:26: error: expansion pattern ‘auto&&’ contains no argument packs
         [this](auto&&... args) { this->accumulate_adjoints(args...); },
                          ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In lambda function:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:60: error: ‘args’ was not declared in this scope
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
g++ -std=c++1y -fPIC  -I"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/include" -DNDEBUG -I"../inst/include" -I"`"/wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/Rscript" --vanilla -e "cat(system.file('include', 'src', package = 'StanHeaders'))"`" -DBOOST_RESULT_OF_USE_TR1 -DBOOST_NO_DECLTYPE -DBOOST_DISABLE_ASSERTS -DEIGEN_NO_DEBUG -DBOOST_MATH_OVERFLOW_ERROR_POLICY=errno_on_error -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/Rcpp/include" -I"/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/RcppEigen/include" -I/usr/local/include    -Wno-unused-variable -Wno-unused-function -c stan_files/stanmarg.cc -o stan_files/stanmarg.o
In file included from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:32: error: ‘std::index_sequence’ has not been declared
                           std::index_sequence<I...> i) {
                                ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:31:46: error: expected ‘,’ or ‘...’ before ‘<’ token
                           std::index_sequence<I...> i) {
                                              ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In function ‘constexpr auto stan::math::internal::apply(const F&, const Tuple&)’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: error: ‘make_index_sequence’ is not a member of ‘std’
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                           ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:27: note: suggested alternative:
In file included from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/container/vector/vector.hpp:28:0,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/container/vector/vector10.hpp:25,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/transform_view/transform_view.hpp:22,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/algorithm/transformation/transform.hpp:11,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/zip_view/detail/begin_impl.hpp:14,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/zip_view/zip_view.hpp:16,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/view/zip_view.hpp:12,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/include/zip_view.hpp:11,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint/util/resize.hpp:26,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint/util/state_wrapper.hpp:26,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint/util/ublas_wrapper.hpp:33,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/numeric/odeint.hpp:25,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/prim/arr/functor/integrate_ode_rk45.hpp:17,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/prim/arr.hpp:46,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/prim/mat.hpp:344,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:12,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/BH/include/boost/fusion/support/detail/index_sequence.hpp:59:12: note:   ‘boost::fusion::detail::make_index_sequence’
     struct make_index_sequence
            ^
In file included from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/fun/ordered_constrain.hpp:6:0,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat.hpp:41,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/log_prob_grad.hpp:4,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/model/test_gradients.hpp:7,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/src/stan/services/diagnose/diagnose.hpp:10,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/stan_fit.hpp:35,
                 from /wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/rstan/include/rstan/rstaninc.hpp:3,
                 from stan_files/stanmarg.hpp:18,
                 from stan_files/stanmarg.cc:3:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected primary-expression before ‘{’ token
   return apply_impl(f, t, std::make_index_sequence<std::tuple_size<Tuple>{}>{});
                                                                             ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:49:77: error: expected ‘)’ before ‘{’ token
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: At global scope:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:151:9: error: expected type-specifier
       = std::result_of_t<F(decltype(is_var_), decltype(value_of(Targs()))...)>;
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:42: error: ‘FReturnType’ was not declared in this scope
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                          ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:53: error: template argument 1 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                     ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:156:61: error: template argument 2 is invalid
   std::array<int, internal::compute_dims<FReturnType>::value> M_;
                                                             ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘std::vector<stan::math::var> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const std::vector<double>&)’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:349:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.size();
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:350:32: error: invalid types ‘int[int]’ for array subscript
     std::vector<var> var_y(M_[0]);
                                ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘Eigen::Matrix<stan::math::var, R, C> stan::math::adj_jac_vari<F, Targs>::build_return_varis_and_vars(const Eigen::Matrix<double, R, C>&)’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:375:9: error: invalid types ‘int[int]’ for array subscript
     M_[0] = val_y.rows();
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:376:9: error: invalid types ‘int[int]’ for array subscript
     M_[1] = val_y.cols();
         ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:40: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                        ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:377:47: error: invalid types ‘int[int]’ for array subscript
     Eigen::Matrix<var, R, C> var_y(M_[0], M_[1]);
                                               ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In member function ‘void stan::math::adj_jac_vari<F, Targs>::chain()’:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:5: error: ‘FReturnType’ was not declared in this scope
     FReturnType y_adj;
     ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:530:17: error: expected ‘;’ before ‘y_adj’
     FReturnType y_adj;
                 ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:532:38: error: ‘y_adj’ was not declared in this scope
     internal::build_y_adj(y_vi_, M_, y_adj);
                                      ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:26: error: expansion pattern ‘auto&&’ contains no argument packs
         [this](auto&&... args) { this->accumulate_adjoints(args...); },
                          ^
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp: In lambda function:
/wynton/home/cbi/hb/repositories/future/revdep/library/blavaan/StanHeaders/include/stan/math/rev/mat/functor/adj_jac_apply.hpp:536:60: error: ‘args’ was not declared in this scope
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

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘biomod2’
    ```

# codebook

<details>

* Version: 0.8.2
* Source code: https://github.com/cran/codebook
* URL: https://github.com/rubenarslan/codebook
* BugReports: https://github.com/rubenarslan/codebook/issues
* Date/Publication: 2020-01-09 16:20:07 UTC
* Number of recursive dependencies: 178

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

* Version: 0.2.0
* Source code: https://github.com/cran/cSEM
* URL: https://github.com/M-E-Rademaker/cSEM, https://m-e-rademaker.github.io/cSEM/
* BugReports: https://github.com/M-E-Rademaker/cSEM/issues
* Date/Publication: 2020-03-29 11:00:20 UTC
* Number of recursive dependencies: 110

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

* Version: 1.3.0
* Source code: https://github.com/cran/datapackage.r
* URL: https://github.com/frictionlessdata/datapackage-r
* BugReports: https://github.com/frictionlessdata/datapackage-r/issues
* Date/Publication: 2020-03-11 13:20:02 UTC
* Number of recursive dependencies: 109

Run `revdep_details(,"datapackage.r")` for more info

</details>

## In both

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

* Version: 0.1.3
* Source code: https://github.com/cran/fabletools
* URL: http://fabletools.tidyverts.org/, https://github.com/tidyverts/fabletools
* BugReports: https://github.com/tidyverts/fabletools/issues
* Date/Publication: 2020-03-24 07:10:02 UTC
* Number of recursive dependencies: 92

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

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘feasts’
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

# foieGras

<details>

* Version: 0.4.0
* Source code: https://github.com/cran/foieGras
* URL: https://cran.r-project.org/package=foieGras
* BugReports: https://github.com/ianjonsen/foieGras/issues
* Date/Publication: 2019-10-07 22:10:03 UTC
* Number of recursive dependencies: 100

Run `revdep_details(,"foieGras")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.1Mb
      sub-directories of 1Mb or more:
        libs  11.0Mb
    ```

# forecastML

<details>

* Version: 0.8.0
* Source code: https://github.com/cran/forecastML
* URL: https://github.com/nredell/forecastML/
* Date/Publication: 2020-02-28 22:40:12 UTC
* Number of recursive dependencies: 93

Run `revdep_details(,"forecastML")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘xgboost’
    ```

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

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RCurl’ ‘lubridate’ ‘readr’ ‘stats’
      All declared Imports should be used.
    ```

# grattan

<details>

* Version: 1.8.0.1
* Source code: https://github.com/cran/grattan
* URL: https://github.com/HughParsonage/grattan, https://hughparsonage.github.io/grattan/
* BugReports: https://github.com/HughParsonage/grattan/issues
* Date/Publication: 2020-03-16 16:40:09 UTC
* Number of recursive dependencies: 113

Run `revdep_details(,"grattan")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking:
      'taxstats', 'taxstats1516'
    ```

# gstat

<details>

* Version: 2.0-5
* Source code: https://github.com/cran/gstat
* URL: https://github.com/r-spatial/gstat/
* BugReports: https://github.com/r-spatial/gstat/issues/
* Date/Publication: 2020-04-04 14:20:02 UTC
* Number of recursive dependencies: 37

Run `revdep_details(,"gstat")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      
      > meuse.riv <- SpatialPolygons(list(Polygons(list(Polygon(meuse.riv)),"meuse.riv")))
      
      > proj4string(meuse.riv) <- crs
      
      > data("meuse.area")
      
      > meuse.area = SpatialPolygons(list(Polygons(list(Polygon(meuse.area)), "area")))
      
      > proj4string(meuse.area) <- crs
      > 
      > v = variogram(log(zinc)~1, meuse_sf)
      > (v.fit = fit.variogram(v, vgm(1, "Sph", 900, 1)))
        model      psill    range
      1   Nug 0.05066243   0.0000
      2   Sph 0.59060780 897.0209
      > k_sf = krige(log(zinc)~1, meuse_sf[-(1:5),], meuse_sf[1:5,], v.fit)
      Error in .local(formula, locations, ...) : 
        stars required: install that first
      Calls: krige -> krige -> .local
      Execution halted
    ```

# gtfs2gps

<details>

* Version: 1.1-0
* Source code: https://github.com/cran/gtfs2gps
* URL: https://github.com/ipeaGIT/gtfs2gps
* BugReports: https://github.com/ipeaGIT/gtfs2gps/issues
* Date/Publication: 2020-04-12 05:20:02 UTC
* Number of recursive dependencies: 70

Run `revdep_details(,"gtfs2gps")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘lwgeom’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# gWQS

<details>

* Version: 2.0.1
* Source code: https://github.com/cran/gWQS
* Date/Publication: 2020-03-03 12:20:02 UTC
* Number of recursive dependencies: 160

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
* Number of recursive dependencies: 112

Run `revdep_details(,"gWQSRS")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘broom’ ‘dplyr’ ‘ggrepel’ ‘kableExtra’ ‘knitr’ ‘nnet’ ‘plotROC’
      All declared Imports should be used.
    ```

# iml

<details>

* Version: 0.10.0
* Source code: https://github.com/cran/iml
* URL: https://github.com/christophM/iml
* BugReports: https://github.com/christophM/iml/issues
* Date/Publication: 2020-03-26 10:20:03 UTC
* Number of recursive dependencies: 155

Run `revdep_details(,"iml")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
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

# lidR

<details>

* Version: 2.2.3
* Source code: https://github.com/cran/lidR
* URL: https://github.com/Jean-Romain/lidR
* BugReports: https://github.com/Jean-Romain/lidR/issues
* Date/Publication: 2020-03-02 19:10:02 UTC
* Number of recursive dependencies: 161

Run `revdep_details(,"lidR")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      > library(lidR)
      Loading required package: raster
      Loading required package: sp
      > 
      > options(lidR.progress = FALSE)
      > 
      > test_check("lidR")
      ── 1. Failure: catalog_apply automerge works with in memory POINTS (@test-catalo
      projection(req2) not equal to "+proj=tmerc +lat_0=0 +lon_0=-55.5 +k=0.9999 +x_0=304800 +y_0=0 +ellps=clrk66 +units=m +no_defs".
      1/1 mismatches
      x[1]: "+proj=tmerc +lat_0=0 +lon_0=-55.5 +k=0.9999 +x_0=304800 +y_0=0 +ellps=clr
      x[1]: k66 +units=m +no_defs "
      y[1]: "+proj=tmerc +lat_0=0 +lon_0=-55.5 +k=0.9999 +x_0=304800 +y_0=0 +ellps=clr
      y[1]: k66 +units=m +no_defs"
      
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 971 | SKIPPED: 0 | WARNINGS: 0 | FAILED: 1 ]
      1. Failure: catalog_apply automerge works with in memory POINTS (@test-catalog_apply-automerge.R#171) 
      
      Error: testthat unit tests failed
      Execution halted
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
* Number of recursive dependencies: 131

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
* Number of recursive dependencies: 138

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
* Number of recursive dependencies: 122

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
* Number of recursive dependencies: 193

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

# PCRedux

<details>

* Version: 1.0-6
* Source code: https://github.com/cran/PCRedux
* URL: https://CRAN.R-project.org/package=PCRedux
* BugReports: https://github.com/PCRuniversum/PCRedux/issues
* Date/Publication: 2020-03-06 08:10:02 UTC
* Number of recursive dependencies: 115

Run `revdep_details(,"PCRedux")` for more info

</details>

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘FFTrees’
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

* Version: 1.1.0
* Source code: https://github.com/cran/prewas
* URL: http://github.com/Snitkin-Lab-Umich/prewas
* BugReports: http://github.com/Snitkin-Lab-Umich/prewas/issues
* Date/Publication: 2020-03-21 17:10:06 UTC
* Number of recursive dependencies: 71

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

*   checking whether package ‘Prostar’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00_pkg_src/Prostar: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Warning: no DISPLAY variable so Tk is not available
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘imp4p’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/Prostar’

```
### CRAN

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
.Rprofile error [/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/old/Prostar.Rcheck/00_pkg_src/Prostar: /wynton/home/cbi/shared/software/CBI/R-3.6.3/lib64/R/bin/exec/R --no-save --slave]: there is no package called ‘startup’
Warning: no DISPLAY variable so Tk is not available
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘imp4p’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/wynton/home/cbi/hb/repositories/future/revdep/checks/Prostar/old/Prostar.Rcheck/Prostar’

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

* Version: 2.3.0
* Source code: https://github.com/cran/qgcomp
* Date/Publication: 2020-04-08 05:50:02 UTC
* Number of recursive dependencies: 116

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
* Number of recursive dependencies: 122

Run `revdep_details(,"reproducible")` for more info

</details>

## In both

*   checking tests ...
    ```
    ...
      1        file         file 51da4e6a77e9a9a6     152
      2        .FUN         .FUN 7a8f2865ef4bc06d    1256
        functionName        component  elapsedTime units
      1      readRDS          Hashing 0.0012297630  secs
      2      readRDS  Running readRDS 0.0005888939  secs
      3      readRDS   Saving to repo 0.5330145359  secs
      4      readRDS Whole Cache call 0.5559754372  secs
        objectNames hashElements             hash objSize
      1        file         file 51da4e6a77e9a9a6   24102
      2        .FUN         .FUN 7a8f2865ef4bc06d    1256
        functionName         component elapsedTime units
      1      readRDS           Hashing 0.002010107  secs
      2      readRDS Loading from repo 0.001060009  secs
      3      readRDS  Whole Cache call 0.089134932  secs
      ══ testthat results  ═══════════════════════════════════════════════════════════
      [ OK: 314 | SKIPPED: 67 | WARNINGS: 5 | FAILED: 2 ]
      1. Error: git-related functions work (@test-git.R#15) 
      2. Error: prepInputs doesn't work (part 3) (@test-postProcess.R#40) 
      
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
* Number of recursive dependencies: 63

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
* Number of recursive dependencies: 219

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

# simhelpers

<details>

* Version: 0.1.0
* Source code: https://github.com/cran/simhelpers
* URL: https://meghapsimatrix.github.io/simhelpers/index.html
* BugReports: https://github.com/meghapsimatrix/simhelpers/issues
* Date/Publication: 2020-03-31 15:00:06 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"simhelpers")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘magrittr’ ‘purrr’ ‘rlang’ ‘utils’
      All declared Imports should be used.
    ```

# skpr

<details>

* Version: 0.64.2
* Source code: https://github.com/cran/skpr
* URL: https://github.com/tylermorganwall/skpr
* BugReports: https://github.com/tylermorganwall/skpr/issues
* Date/Publication: 2020-03-04 20:20:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(,"skpr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.5Mb
      sub-directories of 1Mb or more:
        libs  13.0Mb
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

* Version: 0.1.1
* Source code: https://github.com/cran/spacey
* URL: https://github.com/mikemahoney218/spacey, https://mikemahoney218.github.io/spacey/
* BugReports: https://github.com/mikemahoney218/spacey/issues
* Date/Publication: 2020-03-14 18:50:02 UTC
* Number of recursive dependencies: 99

Run `revdep_details(,"spacey")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# sperrorest

<details>

* Version: 3.0.0
* Source code: https://github.com/cran/sperrorest
* URL: https://giscience-fsu.github.io/sperrorest, https://github.com/giscience-fsu/sperrorest
* BugReports: https://github.com/giscience-fsu/sperrorest/issues
* Date/Publication: 2020-04-13 08:10:02 UTC
* Number of recursive dependencies: 57

Run `revdep_details(,"sperrorest")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘future’
      All declared Imports should be used.
    ```

# stars

<details>

* Version: 0.4-1
* Source code: https://github.com/cran/stars
* URL: https://r-spatial.github.io/stars/, https://github.com/r-spatial/stars/
* BugReports: https://github.com/r-spatial/stars/issues/
* Date/Publication: 2020-04-07 10:00:02 UTC
* Number of recursive dependencies: 127

Run `revdep_details(,"stars")` for more info

</details>

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘lwgeom’
    
    Package suggested but not available for checking: ‘starsdata’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# startR

<details>

* Version: 0.0.1
* Source code: https://github.com/cran/startR
* URL: https://earth.bsc.es/gitlab/es/startR/
* BugReports: https://earth.bsc.es/gitlab/es/startR/issues
* Date/Publication: 2017-04-22 04:26:58 UTC
* Number of recursive dependencies: 35

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

* Version: 1.1.1
* Source code: https://github.com/cran/tableschema.r
* URL: https://github.com/frictionlessdata/tableschema-r
* BugReports: https://github.com/frictionlessdata/tableschema-r/issues
* Date/Publication: 2020-03-12 12:40:02 UTC
* Number of recursive dependencies: 57

Run `revdep_details(,"tableschema.r")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘iterators’
      All declared Imports should be used.
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘parsedate’
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

# TSstudio

<details>

* Version: 0.1.6
* Source code: https://github.com/cran/TSstudio
* URL: https://github.com/RamiKrispin/TSstudio
* BugReports: https://github.com/RamiKrispin/TSstudio/issues
* Date/Publication: 2020-01-21 05:30:02 UTC
* Number of recursive dependencies: 136

Run `revdep_details(,"TSstudio")` for more info

</details>

## In both

*   checking dependencies in R code ... NOTE
    ```
    Failed to query server: Connection timed out
    Namespace in Imports field not imported from: ‘forecastHybrid’
      All declared Imports should be used.
    ```

