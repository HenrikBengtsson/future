# lidR

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/future
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c uriencode.c -o uriencode.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o base64enc.so base64.o uriencode.o utf8.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bit-ops.c -o bit-ops.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c cksum.c -o cksum.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o bitops.so bit-ops.o cksum.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c brio.c -o brio.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c file_line_endings.c -o file_line_endings.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
...
  CC       src/unix/libuv_la-sysinfo-loadavg.lo
  CCLD     libuv.la
make[1]: Leaving directory '/scratch/henrik/RtmppbnZaD/R.INSTALL81fa504e673e/httpuv/src/libuv'
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG -Ilibuv/include -pthread -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/later/include' -I/usr/local/include  -fvisibility=hidden -DSTRICT_R_HEADERS -fpic  -g -O2  -c http-parser/http_parser.c -o http-parser/http_parser.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG -Ilibuv/include -pthread -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/later/include' -I/usr/local/include  -fvisibility=hidden -DSTRICT_R_HEADERS -fpic  -g -O2  -c sha1/sha1.c -o sha1/sha1.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG -Ilibuv/include -pthread -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/later/include' -I/usr/local/include  -fvisibility=hidden -DSTRICT_R_HEADERS -fpic  -g -O2  -c base64/base64.cpp -o base64/base64.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o httpuv.so RcppExports-legacy.o RcppExports.o callback.o callbackqueue.o filedatasource-unix.o filedatasource-win.o fs.o http.o httprequest.o httpresponse.o httpuv.o md5.o mime.o set_invalid_parameter.o socket.o staticpath.o thread.o utils.o uvutil.o webapplication.o websockets-base.o websockets-hixie76.o websockets-hybi03.o websockets-ietf.o websockets.o winutils.o ./libuv/.libs/libuv.a ./http-parser/http_parser.o ./sha1/sha1.o ./base64/base64.o -pthread -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c SatelliteCppFun.cpp -o SatelliteCppFun.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o satellite.so RcppExports.o SatelliteCppFun.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/RcppArmadillo_0.10.2.2.0.tar.gz'
Content type 'application/x-gzip' length 1661194 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

* installing *source* package ‘abind’ ...
** package ‘abind’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
...
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
### CRAN

```
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c uriencode.c -o uriencode.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o base64enc.so base64.o uriencode.o utf8.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bit-ops.c -o bit-ops.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c cksum.c -o cksum.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o bitops.so bit-ops.o cksum.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c brio.c -o brio.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c file_line_endings.c -o file_line_endings.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
...
  CC       src/unix/libuv_la-sysinfo-loadavg.lo
  CCLD     libuv.la
make[1]: Leaving directory '/scratch/henrik/RtmppbnZaD/R.INSTALL81fa504e673e/httpuv/src/libuv'
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG -Ilibuv/include -pthread -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/later/include' -I/usr/local/include  -fvisibility=hidden -DSTRICT_R_HEADERS -fpic  -g -O2  -c http-parser/http_parser.c -o http-parser/http_parser.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG -Ilibuv/include -pthread -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/later/include' -I/usr/local/include  -fvisibility=hidden -DSTRICT_R_HEADERS -fpic  -g -O2  -c sha1/sha1.c -o sha1/sha1.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG -Ilibuv/include -pthread -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/BH/include' -I'/c4/home/henrik/repositories/future/revdep/library/lidR/later/include' -I/usr/local/include  -fvisibility=hidden -DSTRICT_R_HEADERS -fpic  -g -O2  -c base64/base64.cpp -o base64/base64.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o httpuv.so RcppExports-legacy.o RcppExports.o callback.o callbackqueue.o filedatasource-unix.o filedatasource-win.o fs.o http.o httprequest.o httpresponse.o httpuv.o md5.o mime.o set_invalid_parameter.o socket.o staticpath.o thread.o utils.o uvutil.o webapplication.o websockets-base.o websockets-hixie76.o websockets-hybi03.o websockets-ietf.o websockets.o winutils.o ./libuv/.libs/libuv.a ./http-parser/http_parser.o ./sha1/sha1.o ./base64/base64.o -pthread -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/lidR/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c SatelliteCppFun.cpp -o SatelliteCppFun.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o satellite.so RcppExports.o SatelliteCppFun.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/RcppArmadillo_0.10.2.2.0.tar.gz'
Content type 'application/x-gzip' length 1661194 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

* installing *source* package ‘abind’ ...
** package ‘abind’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
...
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location


```
# sdmApp

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/future
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c dotsElt.c -o dotsElt.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c dotsLength.c -o dotsLength.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o backports.so dotsElt.o dotsLength.o init.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c uriencode.c -o uriencode.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o base64enc.so base64.o uriencode.o utf8.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c brio.c -o brio.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c file_line_endings.c -o file_line_endings.o
...
in method for ‘rasterize’ with signature ‘x="sf",y="Raster"’: no definition for class “sf”
Creating a generic function for ‘rowSums’ from package ‘base’ in package ‘raster’
Creating a generic function for ‘colSums’ from package ‘base’ in package ‘raster’
in method for ‘setValues’ with signature ‘x="RasterLayerSparse"’: no definition for class “RasterLayerSparse”
in method for ‘spplot’ with signature ‘obj="SpatRaster"’: no definition for class “SpatRaster”
in method for ‘spplot’ with signature ‘obj="SpatVector"’: no definition for class “SpatVector”
in method for ‘stack’ with signature ‘x="kasc"’: no definition for class “kasc”
in method for ‘stack’ with signature ‘x="SpatRaster"’: no definition for class “SpatRaster”
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/sdmApp/Rcpp/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppEigen.cpp -o RcppEigen.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/sdmApp/Rcpp/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o


trying URL 'https://cloud.r-project.org/src/contrib/earth_5.3.0.tar.gz'
Content type 'application/x-gzip' length 1544217 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

trying URL 'https://cloud.r-project.org/src/contrib/RcppArmadillo_0.10.2.2.0.tar.gz'
Content type 'application/x-gzip' length 1661194 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

...
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type {aka __vector(2) long long int}’ [-Wignored-attributes]
../inst/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 0>’:
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 1>’
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 3>’
../inst/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, -1> >’
../inst/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, -1> >’
../inst/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, -1> >’
../inst/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, -1>’
../inst/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:179:36:   required from here
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type {aka __vector(2) long long int}’ [-Wignored-attributes]


```
### CRAN

```
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c dotsElt.c -o dotsElt.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c dotsLength.c -o dotsLength.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c init.c -o init.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o backports.so dotsElt.o dotsLength.o init.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c uriencode.c -o uriencode.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o base64enc.so base64.o uriencode.o utf8.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c brio.c -o brio.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c file_line_endings.c -o file_line_endings.o
...
in method for ‘rasterize’ with signature ‘x="sf",y="Raster"’: no definition for class “sf”
Creating a generic function for ‘rowSums’ from package ‘base’ in package ‘raster’
Creating a generic function for ‘colSums’ from package ‘base’ in package ‘raster’
in method for ‘setValues’ with signature ‘x="RasterLayerSparse"’: no definition for class “RasterLayerSparse”
in method for ‘spplot’ with signature ‘obj="SpatRaster"’: no definition for class “SpatRaster”
in method for ‘spplot’ with signature ‘obj="SpatVector"’: no definition for class “SpatVector”
in method for ‘stack’ with signature ‘x="kasc"’: no definition for class “kasc”
in method for ‘stack’ with signature ‘x="SpatRaster"’: no definition for class “SpatRaster”
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/sdmApp/Rcpp/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppEigen.cpp -o RcppEigen.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/sdmApp/Rcpp/include' -I/usr/local/include  -I../inst/include -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o


trying URL 'https://cloud.r-project.org/src/contrib/earth_5.3.0.tar.gz'
Content type 'application/x-gzip' length 1544217 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

trying URL 'https://cloud.r-project.org/src/contrib/RcppArmadillo_0.10.2.2.0.tar.gz'
Content type 'application/x-gzip' length 1661194 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

...
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type {aka __vector(2) long long int}’ [-Wignored-attributes]
../inst/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 0>’:
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 1>’
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 3>’
../inst/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, -1> >’
../inst/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, -1> >’
../inst/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, -1> >’
../inst/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, -1>’
../inst/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:179:36:   required from here
../inst/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type {aka __vector(2) long long int}’ [-Wignored-attributes]


```
# Seurat

<details>

* Version: 4.0.0
* GitHub: https://github.com/satijalab/seurat
* Source code: https://github.com/cran/Seurat
* Date/Publication: 2021-01-30 00:00:02 UTC
* Number of recursive dependencies: 241

Run `revdep_details(, "Seurat")` for more info

</details>

## In both

*   checking whether package ‘Seurat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/Seurat/new/Seurat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Seurat’ ...
** package ‘Seurat’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c ModularityOptimizer.cpp -o ModularityOptimizer.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c RModularityOptimizer.cpp -o RModularityOptimizer.o
In file included from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/Eigen/Core:397:0,
                 from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/RcppEigenForward.h:30,
                 from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/RcppEigen.h:25,
...
installing to /c4/home/henrik/repositories/future/revdep/checks/Seurat/new/Seurat.Rcheck/00LOCK-Seurat/00new/Seurat/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘markvario’ is not exported by 'namespace:spatstat'
Execution halted
ERROR: lazy loading failed for package ‘Seurat’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Seurat/new/Seurat.Rcheck/Seurat’


```
### CRAN

```
* installing *source* package ‘Seurat’ ...
** package ‘Seurat’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c ModularityOptimizer.cpp -o ModularityOptimizer.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/Rcpp/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include' -I'/c4/home/henrik/repositories/future/revdep/library/Seurat/RcppProgress/include' -I/usr/local/include   -fpic  -g -O2  -c RModularityOptimizer.cpp -o RModularityOptimizer.o
In file included from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/Eigen/Core:397:0,
                 from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/Eigen/Dense:1,
                 from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/RcppEigenForward.h:30,
                 from /c4/home/henrik/repositories/future/revdep/library/Seurat/RcppEigen/include/RcppEigen.h:25,
...
installing to /c4/home/henrik/repositories/future/revdep/checks/Seurat/old/Seurat.Rcheck/00LOCK-Seurat/00new/Seurat/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘markvario’ is not exported by 'namespace:spatstat'
Execution halted
ERROR: lazy loading failed for package ‘Seurat’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Seurat/old/Seurat.Rcheck/Seurat’


```
# Signac

<details>

* Version: 1.1.1
* GitHub: https://github.com/timoast/signac
* Source code: https://github.com/cran/Signac
* Date/Publication: 2021-02-03 23:50:09 UTC
* Number of recursive dependencies: 243

Run `revdep_details(, "Signac")` for more info

</details>

## In both

*   checking whether package ‘Signac’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/Signac/new/Signac.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Signac’ ...
** package ‘Signac’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c filter.cpp -o filter.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c group.cpp -o group.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c split.cpp -o split.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c validate.cpp -o validate.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o Signac.so RcppExports.o filter.o group.o split.o validate.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
...
installing to /c4/home/henrik/repositories/future/revdep/checks/Signac/new/Signac.Rcheck/00LOCK-Signac/00new/Signac/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘markvario’ is not exported by 'namespace:spatstat'
Execution halted
ERROR: lazy loading failed for package ‘Signac’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Signac/new/Signac.Rcheck/Signac’


```
### CRAN

```
* installing *source* package ‘Signac’ ...
** package ‘Signac’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c filter.cpp -o filter.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c group.cpp -o group.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c split.cpp -o split.o
g++ -std=gnu++11 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG  -I'/c4/home/henrik/repositories/future/revdep/library/Signac/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c validate.cpp -o validate.o
g++ -std=gnu++11 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o Signac.so RcppExports.o filter.o group.o split.o validate.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
...
installing to /c4/home/henrik/repositories/future/revdep/checks/Signac/old/Signac.Rcheck/00LOCK-Signac/00new/Signac/libs
** R
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error: object ‘markvario’ is not exported by 'namespace:spatstat'
Execution halted
ERROR: lazy loading failed for package ‘Signac’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Signac/old/Signac.Rcheck/Signac’


```
# stars

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/future
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c uriencode.c -o uriencode.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o base64enc.so base64.o uriencode.o utf8.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_bdsmatrix.c -o R_init_bdsmatrix.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_index1.c -o bdsmatrix_index1.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_index2.c -o bdsmatrix_index2.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_index3.c -o bdsmatrix_index3.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_prod.c -o bdsmatrix_prod.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_prod2.c -o bdsmatrix_prod2.o
...
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c lm.c -o lm.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c mapio.c -o mapio.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c msim.c -o msim.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c mtrx.c -o mtrx.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nsearch.c -o nsearch.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pqueue.c -o pqueue.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c reml.c -o reml.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c s.c -o s.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c select.c -o select.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c sem.c -o sem.o


* installing *source* package ‘abind’ ...
** package ‘abind’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
...
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (covr)
* installing *source* package ‘gstat’ ...
** package ‘gstat’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


```
### CRAN

```
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c base64.c -o base64.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c uriencode.c -o uriencode.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c utf8.c -o utf8.o
gcc -std=gnu99 -shared -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -L/usr/local/lib64 -o base64enc.so base64.o uriencode.o utf8.o -L/software/c4/cbi/software/R-4.0.4/lib64/R/lib -lR
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c R_init_bdsmatrix.c -o R_init_bdsmatrix.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_index1.c -o bdsmatrix_index1.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_index2.c -o bdsmatrix_index2.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_index3.c -o bdsmatrix_index3.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_prod.c -o bdsmatrix_prod.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c bdsmatrix_prod2.c -o bdsmatrix_prod2.o
...
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c lm.c -o lm.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c mapio.c -o mapio.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c msim.c -o msim.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c mtrx.c -o mtrx.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c nsearch.c -o nsearch.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c pqueue.c -o pqueue.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c reml.c -o reml.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c s.c -o s.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c select.c -o select.o
gcc -std=gnu99 -I"/software/c4/cbi/software/R-4.0.4/lib64/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2  -c sem.c -o sem.o


* installing *source* package ‘abind’ ...
** package ‘abind’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
...
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (covr)
* installing *source* package ‘gstat’ ...
** package ‘gstat’ successfully unpacked and MD5 sums checked
** using staged installation
** libs


```
