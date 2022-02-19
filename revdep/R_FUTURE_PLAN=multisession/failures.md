# foieGras

<details>

* Version: 0.7-6
* GitHub: https://github.com/ianjonsen/foieGras
* Source code: https://github.com/cran/foieGras
* Date/Publication: 2021-04-26 22:10:07 UTC
* Number of recursive dependencies: 135

Run `revdep_details(, "foieGras")` for more info

</details>

## In both

*   checking whether package ‘foieGras’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/foieGras/new/foieGras.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘foieGras’ ...
** package ‘foieGras’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.2-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/foieGras/TMB/include' -I'/c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c foieGras.cpp -o foieGras.o
In file included from /c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include/Eigen/Core:397,
                 from /c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/foieGras/TMB/include/TMB.hpp:58,
                 from foieGras.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
TMB was built with Matrix version 1.3.4
Current Matrix version is 1.4.0
Please re-install 'TMB' from source using install.packages('TMB', type = 'source') or ask CRAN for a binary version of 'TMB' matching CRAN's 'Matrix' package
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/c4/home/henrik/repositories/future/revdep/library/foieGras/proj4/libs/proj4.so':
  libproj.so.12: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘foieGras’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/foieGras/new/foieGras.Rcheck/foieGras’


```
### CRAN

```
* installing *source* package ‘foieGras’ ...
** package ‘foieGras’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.1.2-gcc8/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/foieGras/TMB/include' -I'/c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include' -I/usr/local/include   -fpic  -g -O2  -c foieGras.cpp -o foieGras.o
In file included from /c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include/Eigen/Core:397,
                 from /c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/foieGras/TMB/include/TMB.hpp:58,
                 from foieGras.cpp:2:
/c4/home/henrik/repositories/future/revdep/library/foieGras/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ {aka ‘__vector(4) float’} [-Wignored-attributes]
...
TMB was built with Matrix version 1.3.4
Current Matrix version is 1.4.0
Please re-install 'TMB' from source using install.packages('TMB', type = 'source') or ask CRAN for a binary version of 'TMB' matching CRAN's 'Matrix' package
Error in dyn.load(file, DLLpath = DLLpath, ...) : 
  unable to load shared object '/c4/home/henrik/repositories/future/revdep/library/foieGras/proj4/libs/proj4.so':
  libproj.so.12: cannot open shared object file: No such file or directory
Calls: <Anonymous> ... asNamespace -> loadNamespace -> library.dynam -> dyn.load
Execution halted
ERROR: lazy loading failed for package ‘foieGras’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/foieGras/old/foieGras.Rcheck/foieGras’


```
