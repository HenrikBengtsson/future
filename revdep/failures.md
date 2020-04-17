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
