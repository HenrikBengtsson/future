# bcmaps

<details>

* Version: 0.18.1
* Source code: https://github.com/cran/bcmaps
* URL: https://github.com/bcgov/bcmaps
* BugReports: https://github.com/bcgov/bcmaps/issues
* Date/Publication: 2020-04-29 10:30:10 UTC
* Number of recursive dependencies: 83

Run `revdep_details(, "bcmaps")` for more info

</details>

## In both

*   R CMD check timed out
    

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘bcmapsdata’
    ```

# lidR

<details>

* Version: 3.0.3
* Source code: https://github.com/cran/lidR
* URL: https://github.com/Jean-Romain/lidR
* BugReports: https://github.com/Jean-Romain/lidR/issues
* Date/Publication: 2020-08-03 06:30:10 UTC
* Number of recursive dependencies: 155

Run `revdep_details(, "lidR")` for more info

</details>

## In both

*   checking whether package ‘lidR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/home/henrik/c4/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘lidR’ ...
** package ‘lidR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c BoundingBox.cpp -o BoundingBox.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_Gatziolis2019.cpp -o C_Gatziolis2019.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_dalponte2016.cpp -o C_dalponte2016.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_delaunay.cpp -o C_delaunay.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c GridPartition.cpp -o GridPartition.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c LAS.cpp -o LAS.o
In file included from /home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:49,
                 from /home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include/armadillo:52:10: fatal error: armadillo_bits/compiler_extra.hpp: No such file or directory
 #include "armadillo_bits/compiler_extra.hpp"
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/software/c4/cbi/software/R-4.0.2/lib64/R/etc/Makeconf:176: LAS.o] Error 1
ERROR: compilation failed for package ‘lidR’
* removing ‘/home/henrik/c4/repositories/future/revdep/checks/lidR/new/lidR.Rcheck/lidR’

```
### CRAN

```
* installing *source* package ‘lidR’ ...
** package ‘lidR’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c BoundingBox.cpp -o BoundingBox.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_Gatziolis2019.cpp -o C_Gatziolis2019.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_dalponte2016.cpp -o C_dalponte2016.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c C_delaunay.cpp -o C_delaunay.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c GridPartition.cpp -o GridPartition.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.2/lib64/R/include" -DNDEBUG  -I'/home/henrik/c4/repositories/future/revdep/library/lidR/BH/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/Rcpp/include' -I'/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include' -I/usr/local/include  -fopenmp -I../inst/include/ -DRCPP_NO_MODULES -fpic  -g -O2  -c LAS.cpp -o LAS.o
In file included from /home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadilloForward.h:49,
                 from /home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include/RcppArmadillo.h:31,
                 from LAS.h:5,
                 from LAS.cpp:1:
/home/henrik/c4/repositories/future/revdep/library/lidR/RcppArmadillo/include/armadillo:52:10: fatal error: armadillo_bits/compiler_extra.hpp: No such file or directory
 #include "armadillo_bits/compiler_extra.hpp"
          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make: *** [/software/c4/cbi/software/R-4.0.2/lib64/R/etc/Makeconf:176: LAS.o] Error 1
ERROR: compilation failed for package ‘lidR’
* removing ‘/home/henrik/c4/repositories/future/revdep/checks/lidR/old/lidR.Rcheck/lidR’

```
# mlr3

<details>

* Version: 0.6.0
* Source code: https://github.com/cran/mlr3
* URL: https://mlr3.mlr-org.com, https://github.com/mlr-org/mlr3
* BugReports: https://github.com/mlr-org/mlr3/issues
* Date/Publication: 2020-09-13 13:30:02 UTC
* Number of recursive dependencies: 50

Run `revdep_details(, "mlr3")` for more info

</details>

## In both

*   R CMD check timed out
    

