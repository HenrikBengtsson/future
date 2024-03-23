# arkdb

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/future
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog.cpp -o duckdb/ub_src_catalog.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog_catalog_entry.cpp -o duckdb/ub_src_catalog_catalog_entry.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog_catalog_entry_dependency.cpp -o duckdb/ub_src_catalog_catalog_entry_dependency.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog_default.cpp -o duckdb/ub_src_catalog_default.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_adbc.cpp -o duckdb/ub_src_common_adbc.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_adbc_nanoarrow.cpp -o duckdb/ub_src_common_adbc_nanoarrow.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common.cpp -o duckdb/ub_src_common.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_arrow_appender.cpp -o duckdb/ub_src_common_arrow_appender.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_arrow.cpp -o duckdb/ub_src_common_arrow.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_crypto.cpp -o duckdb/ub_src_common_crypto.o
...
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c statement.cpp -o statement.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c register.cpp -o register.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c relational.cpp -o relational.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c scan.cpp -o scan.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c transform.cpp -o transform.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c utils.cpp -o utils.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c reltoaltrep.cpp -o reltoaltrep.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c types.cpp -o types.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c cpp11.cpp -o cpp11.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o duckdb.so database.o connection.o statement.o register.o relational.o scan.o transform.o utils.o reltoaltrep.o types.o cpp11.o duckdb/ub_src_catalog.o duckdb/ub_src_catalog_catalog_entry.o duckdb/ub_src_catalog_catalog_entry_dependency.o duckdb/ub_src_catalog_default.o duckdb/ub_src_common_adbc.o duckdb/ub_src_common_adbc_nanoarrow.o duckdb/ub_src_common.o duckdb/ub_src_common_arrow_appender.o duckdb/ub_src_common_arrow.o duckdb/ub_src_common_crypto.o duckdb/ub_src_common_enums.o duckdb/ub_src_common_exception.o duckdb/ub_src_common_operator.o duckdb/ub_src_common_progress_bar.o duckdb/ub_src_common_row_operations.o duckdb/ub_src_common_serializer.o duckdb/ub_src_common_sort.o duckdb/ub_src_common_types.o duckdb/ub_src_common_types_column.o duckdb/ub_src_common_types_row.o duckdb/ub_src_common_value_operations.o duckdb/src/common/vector_operations/boolean_operators.o duckdb/src/common/vector_operations/comparison_operators.o duckdb/src/common/vector_operations/generators.o duckdb/src/common/vector_operations/is_distinct_from.o duckdb/src/common/vector_operations/null_operations.o duckdb/src/common/vector_operations/numeric_inplace_operators.o duckdb/src/common/vector_operations/vector_cast.o duckdb/src/common/vector_operations/vector_copy.o duckdb/src/common/vector_operations/vector_hash.o duckdb/src/common/vector_operations/vector_storage.o duckdb/ub_src_core_functions_aggregate_algebraic.o duckdb/ub_src_core_functions_aggregate_distributive.o duckdb/ub_src_core_functions_aggregate_holistic.o duckdb/ub_src_core_functions_aggregate_nested.o duckdb/ub_src_core_functions_aggregate_regression.o duckdb/ub_src_core_functions.o duckdb/ub_src_core_functions_scalar_array.o duckdb/ub_src_core_functions_scalar_bit.o duckdb/ub_src_core_functions_scalar_blob.o duckdb/ub_src_core_functions_scalar_date.o duckdb/ub_src_core_functions_scalar_debug.o duckdb/ub_src_core_functions_scalar_enum.o duckdb/ub_src_core_functions_scalar_generic.o duckdb/ub_src_core_functions_scalar_list.o duckdb/ub_src_core_functions_scalar_map.o duckdb/ub_src_core_functions_scalar_math.o duckdb/ub_src_core_functions_scalar_operators.o duckdb/ub_src_core_functions_scalar_random.o duckdb/ub_src_core_functions_scalar_secret.o duckdb/ub_src_core_functions_scalar_string.o duckdb/ub_src_core_functions_scalar_struct.o duckdb/ub_src_core_functions_scalar_union.o duckdb/ub_src_execution.o duckdb/ub_src_execution_expression_executor.o duckdb/ub_src_execution_index_art.o duckdb/ub_src_execution_index.o duckdb/ub_src_execution_nested_loop_join.o duckdb/ub_src_execution_operator_aggregate.o duckdb/ub_src_execution_operator_csv_scanner_buffer_manager.o duckdb/ub_src_execution_operator_csv_scanner_scanner.o duckdb/ub_src_execution_operator_csv_scanner_sniffer.o duckdb/ub_src_execution_operator_csv_scanner_state_machine.o duckdb/ub_src_execution_operator_csv_scanner_table_function.o duckdb/ub_src_execution_operator_csv_scanner_util.o duckdb/ub_src_execution_operator_filter.o duckdb/ub_src_execution_operator_helper.o duckdb/ub_src_execution_operator_join.o duckdb/ub_src_execution_operator_order.o duckdb/ub_src_execution_operator_persistent.o duckdb/ub_src_execution_operator_projection.o duckdb/ub_src_execution_operator_scan.o duckdb/ub_src_execution_operator_schema.o duckdb/ub_src_execution_operator_set.o duckdb/ub_src_execution_physical_plan.o duckdb/ub_src_function_aggregate_distributive.o duckdb/ub_src_function_aggregate.o duckdb/ub_src_function.o duckdb/ub_src_function_cast.o duckdb/ub_src_function_cast_union.o duckdb/ub_src_function_pragma.o duckdb/ub_src_function_scalar_compressed_materialization.o duckdb/ub_src_function_scalar.o duckdb/ub_src_function_scalar_generic.o duckdb/ub_src_function_scalar_list.o duckdb/ub_src_function_scalar_operators.o duckdb/ub_src_function_scalar_sequence.o duckdb/ub_src_function_scalar_string.o duckdb/ub_src_function_scalar_string_regexp.o duckdb/ub_src_function_scalar_struct.o duckdb/ub_src_function_scalar_system.o duckdb/ub_src_function_table_arrow.o duckdb/ub_src_function_table.o duckdb/ub_src_function_table_system.o duckdb/ub_src_function_table_version.o duckdb/ub_src_main.o duckdb/ub_src_main_buffered_data.o duckdb/ub_src_main_capi.o duckdb/ub_src_main_capi_cast.o duckdb/ub_src_main_chunk_scan_state.o duckdb/ub_src_main_extension.o duckdb/ub_src_main_relation.o duckdb/ub_src_main_secret.o duckdb/ub_src_main_settings.o duckdb/ub_src_optimizer.o duckdb/ub_src_optimizer_compressed_materialization.o duckdb/ub_src_optimizer_join_order.o duckdb/ub_src_optimizer_matcher.o duckdb/ub_src_optimizer_pullup.o duckdb/ub_src_optimizer_pushdown.o duckdb/ub_src_optimizer_rule.o duckdb/ub_src_optimizer_statistics_expression.o duckdb/ub_src_optimizer_statistics_operator.o duckdb/ub_src_parallel.o duckdb/ub_src_parser.o duckdb/ub_src_parser_constraints.o duckdb/ub_src_parser_expression.o duckdb/ub_src_parser_parsed_data.o duckdb/ub_src_parser_query_node.o duckdb/ub_src_parser_statement.o duckdb/ub_src_parser_tableref.o duckdb/ub_src_parser_transform_constraint.o duckdb/ub_src_parser_transform_expression.o duckdb/ub_src_parser_transform_helpers.o duckdb/ub_src_parser_transform_statement.o duckdb/ub_src_parser_transform_tableref.o duckdb/ub_src_planner.o duckdb/ub_src_planner_binder_expression.o duckdb/ub_src_planner_binder_query_node.o duckdb/ub_src_planner_binder_statement.o duckdb/ub_src_planner_binder_tableref.o duckdb/ub_src_planner_expression.o duckdb/ub_src_planner_expression_binder.o duckdb/ub_src_planner_filter.o duckdb/ub_src_planner_operator.o duckdb/ub_src_planner_subquery.o duckdb/ub_src_storage.o duckdb/ub_src_storage_buffer.o duckdb/ub_src_storage_checkpoint.o duckdb/ub_src_storage_compression_alp.o duckdb/ub_src_storage_compression.o duckdb/ub_src_storage_compression_chimp.o duckdb/ub_src_storage_metadata.o duckdb/ub_src_storage_serialization.o duckdb/ub_src_storage_statistics.o duckdb/ub_src_storage_table.o duckdb/ub_src_transaction.o duckdb/src/verification/copied_statement_verifier.o duckdb/src/verification/deserialized_statement_verifier.o duckdb/src/verification/external_statement_verifier.o duckdb/src/verification/fetch_row_verifier.o duckdb/src/verification/no_operator_caching_verifier.o duckdb/src/verification/parsed_statement_verifier.o duckdb/src/verification/prepared_statement_verifier.o duckdb/src/verification/statement_verifier.o duckdb/src/verification/unoptimized_statement_verifier.o duckdb/third_party/fmt/format.o duckdb/third_party/fsst/fsst_avx512.o duckdb/third_party/fsst/libfsst.o duckdb/third_party/miniz/miniz.o duckdb/third_party/re2/re2/bitstate.o duckdb/third_party/re2/re2/compile.o duckdb/third_party/re2/re2/dfa.o duckdb/third_party/re2/re2/filtered_re2.o duckdb/third_party/re2/re2/mimics_pcre.o duckdb/third_party/re2/re2/nfa.o duckdb/third_party/re2/re2/onepass.o duckdb/third_party/re2/re2/parse.o duckdb/third_party/re2/re2/perl_groups.o duckdb/third_party/re2/re2/prefilter.o duckdb/third_party/re2/re2/prefilter_tree.o duckdb/third_party/re2/re2/prog.o duckdb/third_party/re2/re2/re2.o duckdb/third_party/re2/re2/regexp.o duckdb/third_party/re2/re2/set.o duckdb/third_party/re2/re2/simplify.o duckdb/third_party/re2/re2/stringpiece.o duckdb/third_party/re2/re2/tostring.o duckdb/third_party/re2/re2/unicode_casefold.o duckdb/third_party/re2/re2/unicode_groups.o duckdb/third_party/re2/util/rune.o duckdb/third_party/re2/util/strutil.o duckdb/third_party/hyperloglog/hyperloglog.o duckdb/third_party/hyperloglog/sds.o duckdb/third_party/skiplist/SkipList.o duckdb/third_party/fastpforlib/bitpacking.o duckdb/third_party/utf8proc/utf8proc.o duckdb/third_party/utf8proc/utf8proc_wrapper.o duckdb/third_party/libpg_query/pg_functions.o duckdb/third_party/libpg_query/postgres_parser.o duckdb/third_party/libpg_query/src_backend_nodes_list.o duckdb/third_party/libpg_query/src_backend_nodes_makefuncs.o duckdb/third_party/libpg_query/src_backend_nodes_value.o duckdb/third_party/libpg_query/src_backend_parser_gram.o duckdb/third_party/libpg_query/src_backend_parser_parser.o duckdb/third_party/libpg_query/src_backend_parser_scan.o duckdb/third_party/libpg_query/src_backend_parser_scansup.o duckdb/third_party/libpg_query/src_common_keywords.o duckdb/third_party/mbedtls/library/aes.o duckdb/third_party/mbedtls/library/aria.o duckdb/third_party/mbedtls/library/asn1parse.o duckdb/third_party/mbedtls/library/base64.o duckdb/third_party/mbedtls/library/bignum.o duckdb/third_party/mbedtls/library/camellia.o duckdb/third_party/mbedtls/library/cipher.o duckdb/third_party/mbedtls/library/cipher_wrap.o duckdb/third_party/mbedtls/library/constant_time.o duckdb/third_party/mbedtls/library/entropy.o duckdb/third_party/mbedtls/library/entropy_poll.o duckdb/third_party/mbedtls/library/gcm.o duckdb/third_party/mbedtls/library/md.o duckdb/third_party/mbedtls/library/oid.o duckdb/third_party/mbedtls/library/pem.o duckdb/third_party/mbedtls/library/pk.o duckdb/third_party/mbedtls/library/pk_wrap.o duckdb/third_party/mbedtls/library/pkparse.o duckdb/third_party/mbedtls/library/platform_util.o duckdb/third_party/mbedtls/library/rsa.o duckdb/third_party/mbedtls/library/rsa_alt_helpers.o duckdb/third_party/mbedtls/library/sha1.o duckdb/third_party/mbedtls/library/sha256.o duckdb/third_party/mbedtls/library/sha512.o duckdb/third_party/mbedtls/mbedtls_wrapper.o duckdb/extension/parquet/column_reader.o duckdb/extension/parquet/column_writer.o duckdb/extension/parquet/parquet_crypto.o duckdb/extension/parquet/parquet_extension.o duckdb/extension/parquet/parquet_metadata.o duckdb/extension/parquet/parquet_reader.o duckdb/extension/parquet/parquet_statistics.o duckdb/extension/parquet/parquet_timestamp.o duckdb/extension/parquet/parquet_writer.o duckdb/extension/parquet/serialize_parquet.o duckdb/extension/parquet/zstd_file_system.o duckdb/third_party/parquet/parquet_constants.o duckdb/third_party/parquet/parquet_types.o duckdb/third_party/thrift/thrift/protocol/TProtocol.o duckdb/third_party/thrift/thrift/transport/TTransportException.o duckdb/third_party/thrift/thrift/transport/TBufferTransports.o duckdb/third_party/snappy/snappy.o duckdb/third_party/snappy/snappy-sinksource.o duckdb/third_party/zstd/decompress/zstd_ddict.o duckdb/third_party/zstd/decompress/huf_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress_block.o duckdb/third_party/zstd/common/entropy_common.o duckdb/third_party/zstd/common/fse_decompress.o duckdb/third_party/zstd/common/zstd_common.o duckdb/third_party/zstd/common/error_private.o duckdb/third_party/zstd/common/xxhash.o duckdb/third_party/zstd/compress/fse_compress.o duckdb/third_party/zstd/compress/hist.o duckdb/third_party/zstd/compress/huf_compress.o duckdb/third_party/zstd/compress/zstd_compress.o duckdb/third_party/zstd/compress/zstd_compress_literals.o duckdb/third_party/zstd/compress/zstd_compress_sequences.o duckdb/third_party/zstd/compress/zstd_compress_superblock.o duckdb/third_party/zstd/compress/zstd_double_fast.o duckdb/third_party/zstd/compress/zstd_fast.o duckdb/third_party/zstd/compress/zstd_lazy.o duckdb/third_party/zstd/compress/zstd_ldm.o duckdb/third_party/zstd/compress/zstd_opt.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/bslib_0.6.2.tar.gz'
Content type 'application/x-gzip' length 6060123 bytes (5.8 MB)
==================================================
downloaded 5.8 MB

trying URL 'https://cloud.r-project.org/src/contrib/duckdb_0.10.0.tar.gz'
Content type 'application/x-gzip' length 4090561 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

...
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘jquerylib’ ...
* DONE (jquerylib)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)


```
### CRAN

```
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog.cpp -o duckdb/ub_src_catalog.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog_catalog_entry.cpp -o duckdb/ub_src_catalog_catalog_entry.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog_catalog_entry_dependency.cpp -o duckdb/ub_src_catalog_catalog_entry_dependency.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_catalog_default.cpp -o duckdb/ub_src_catalog_default.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_adbc.cpp -o duckdb/ub_src_common_adbc.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_adbc_nanoarrow.cpp -o duckdb/ub_src_common_adbc_nanoarrow.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common.cpp -o duckdb/ub_src_common.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_arrow_appender.cpp -o duckdb/ub_src_common_arrow_appender.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_arrow.cpp -o duckdb/ub_src_common_arrow.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c duckdb/ub_src_common_crypto.cpp -o duckdb/ub_src_common_crypto.o
...
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c statement.cpp -o statement.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c register.cpp -o register.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c relational.cpp -o relational.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c scan.cpp -o scan.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c transform.cpp -o transform.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c utils.cpp -o utils.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c reltoaltrep.cpp -o reltoaltrep.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c types.cpp -o types.o
g++ -std=gnu++17 -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG -Iinclude -I../inst/include -DDUCKDB_DISABLE_PRINT -DDUCKDB_R_BUILD -Iduckdb/src/include -Iduckdb/third_party/fmt/include -Iduckdb/third_party/fsst -Iduckdb/third_party/re2 -Iduckdb/third_party/miniz -Iduckdb/third_party/utf8proc/include -Iduckdb/third_party/utf8proc -Iduckdb/third_party/hyperloglog -Iduckdb/third_party/skiplist -Iduckdb/third_party/fastpforlib -Iduckdb/third_party/tdigest -Iduckdb/third_party/libpg_query/include -Iduckdb/third_party/libpg_query -Iduckdb/third_party/concurrentqueue -Iduckdb/third_party/pcg -Iduckdb/third_party/httplib -Iduckdb/third_party/fast_float -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -Iduckdb/third_party/mbedtls/library -Iduckdb/third_party/jaro_winkler -Iduckdb/third_party/jaro_winkler/details -Iduckdb/extension/parquet/include -Iduckdb/third_party/parquet -Iduckdb/third_party/thrift -Iduckdb/third_party/snappy -Iduckdb/third_party/zstd/include -Iduckdb/third_party/mbedtls -Iduckdb/third_party/mbedtls/include -I../inst/include -Iduckdb -DDUCKDB_EXTENSION_PARQUET_LINKED -DDUCKDB_BUILD_LIBRARY  -I/usr/local/include    -fpic  -g -O2 -c cpp11.cpp -o cpp11.o
g++ -std=gnu++17 -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o duckdb.so database.o connection.o statement.o register.o relational.o scan.o transform.o utils.o reltoaltrep.o types.o cpp11.o duckdb/ub_src_catalog.o duckdb/ub_src_catalog_catalog_entry.o duckdb/ub_src_catalog_catalog_entry_dependency.o duckdb/ub_src_catalog_default.o duckdb/ub_src_common_adbc.o duckdb/ub_src_common_adbc_nanoarrow.o duckdb/ub_src_common.o duckdb/ub_src_common_arrow_appender.o duckdb/ub_src_common_arrow.o duckdb/ub_src_common_crypto.o duckdb/ub_src_common_enums.o duckdb/ub_src_common_exception.o duckdb/ub_src_common_operator.o duckdb/ub_src_common_progress_bar.o duckdb/ub_src_common_row_operations.o duckdb/ub_src_common_serializer.o duckdb/ub_src_common_sort.o duckdb/ub_src_common_types.o duckdb/ub_src_common_types_column.o duckdb/ub_src_common_types_row.o duckdb/ub_src_common_value_operations.o duckdb/src/common/vector_operations/boolean_operators.o duckdb/src/common/vector_operations/comparison_operators.o duckdb/src/common/vector_operations/generators.o duckdb/src/common/vector_operations/is_distinct_from.o duckdb/src/common/vector_operations/null_operations.o duckdb/src/common/vector_operations/numeric_inplace_operators.o duckdb/src/common/vector_operations/vector_cast.o duckdb/src/common/vector_operations/vector_copy.o duckdb/src/common/vector_operations/vector_hash.o duckdb/src/common/vector_operations/vector_storage.o duckdb/ub_src_core_functions_aggregate_algebraic.o duckdb/ub_src_core_functions_aggregate_distributive.o duckdb/ub_src_core_functions_aggregate_holistic.o duckdb/ub_src_core_functions_aggregate_nested.o duckdb/ub_src_core_functions_aggregate_regression.o duckdb/ub_src_core_functions.o duckdb/ub_src_core_functions_scalar_array.o duckdb/ub_src_core_functions_scalar_bit.o duckdb/ub_src_core_functions_scalar_blob.o duckdb/ub_src_core_functions_scalar_date.o duckdb/ub_src_core_functions_scalar_debug.o duckdb/ub_src_core_functions_scalar_enum.o duckdb/ub_src_core_functions_scalar_generic.o duckdb/ub_src_core_functions_scalar_list.o duckdb/ub_src_core_functions_scalar_map.o duckdb/ub_src_core_functions_scalar_math.o duckdb/ub_src_core_functions_scalar_operators.o duckdb/ub_src_core_functions_scalar_random.o duckdb/ub_src_core_functions_scalar_secret.o duckdb/ub_src_core_functions_scalar_string.o duckdb/ub_src_core_functions_scalar_struct.o duckdb/ub_src_core_functions_scalar_union.o duckdb/ub_src_execution.o duckdb/ub_src_execution_expression_executor.o duckdb/ub_src_execution_index_art.o duckdb/ub_src_execution_index.o duckdb/ub_src_execution_nested_loop_join.o duckdb/ub_src_execution_operator_aggregate.o duckdb/ub_src_execution_operator_csv_scanner_buffer_manager.o duckdb/ub_src_execution_operator_csv_scanner_scanner.o duckdb/ub_src_execution_operator_csv_scanner_sniffer.o duckdb/ub_src_execution_operator_csv_scanner_state_machine.o duckdb/ub_src_execution_operator_csv_scanner_table_function.o duckdb/ub_src_execution_operator_csv_scanner_util.o duckdb/ub_src_execution_operator_filter.o duckdb/ub_src_execution_operator_helper.o duckdb/ub_src_execution_operator_join.o duckdb/ub_src_execution_operator_order.o duckdb/ub_src_execution_operator_persistent.o duckdb/ub_src_execution_operator_projection.o duckdb/ub_src_execution_operator_scan.o duckdb/ub_src_execution_operator_schema.o duckdb/ub_src_execution_operator_set.o duckdb/ub_src_execution_physical_plan.o duckdb/ub_src_function_aggregate_distributive.o duckdb/ub_src_function_aggregate.o duckdb/ub_src_function.o duckdb/ub_src_function_cast.o duckdb/ub_src_function_cast_union.o duckdb/ub_src_function_pragma.o duckdb/ub_src_function_scalar_compressed_materialization.o duckdb/ub_src_function_scalar.o duckdb/ub_src_function_scalar_generic.o duckdb/ub_src_function_scalar_list.o duckdb/ub_src_function_scalar_operators.o duckdb/ub_src_function_scalar_sequence.o duckdb/ub_src_function_scalar_string.o duckdb/ub_src_function_scalar_string_regexp.o duckdb/ub_src_function_scalar_struct.o duckdb/ub_src_function_scalar_system.o duckdb/ub_src_function_table_arrow.o duckdb/ub_src_function_table.o duckdb/ub_src_function_table_system.o duckdb/ub_src_function_table_version.o duckdb/ub_src_main.o duckdb/ub_src_main_buffered_data.o duckdb/ub_src_main_capi.o duckdb/ub_src_main_capi_cast.o duckdb/ub_src_main_chunk_scan_state.o duckdb/ub_src_main_extension.o duckdb/ub_src_main_relation.o duckdb/ub_src_main_secret.o duckdb/ub_src_main_settings.o duckdb/ub_src_optimizer.o duckdb/ub_src_optimizer_compressed_materialization.o duckdb/ub_src_optimizer_join_order.o duckdb/ub_src_optimizer_matcher.o duckdb/ub_src_optimizer_pullup.o duckdb/ub_src_optimizer_pushdown.o duckdb/ub_src_optimizer_rule.o duckdb/ub_src_optimizer_statistics_expression.o duckdb/ub_src_optimizer_statistics_operator.o duckdb/ub_src_parallel.o duckdb/ub_src_parser.o duckdb/ub_src_parser_constraints.o duckdb/ub_src_parser_expression.o duckdb/ub_src_parser_parsed_data.o duckdb/ub_src_parser_query_node.o duckdb/ub_src_parser_statement.o duckdb/ub_src_parser_tableref.o duckdb/ub_src_parser_transform_constraint.o duckdb/ub_src_parser_transform_expression.o duckdb/ub_src_parser_transform_helpers.o duckdb/ub_src_parser_transform_statement.o duckdb/ub_src_parser_transform_tableref.o duckdb/ub_src_planner.o duckdb/ub_src_planner_binder_expression.o duckdb/ub_src_planner_binder_query_node.o duckdb/ub_src_planner_binder_statement.o duckdb/ub_src_planner_binder_tableref.o duckdb/ub_src_planner_expression.o duckdb/ub_src_planner_expression_binder.o duckdb/ub_src_planner_filter.o duckdb/ub_src_planner_operator.o duckdb/ub_src_planner_subquery.o duckdb/ub_src_storage.o duckdb/ub_src_storage_buffer.o duckdb/ub_src_storage_checkpoint.o duckdb/ub_src_storage_compression_alp.o duckdb/ub_src_storage_compression.o duckdb/ub_src_storage_compression_chimp.o duckdb/ub_src_storage_metadata.o duckdb/ub_src_storage_serialization.o duckdb/ub_src_storage_statistics.o duckdb/ub_src_storage_table.o duckdb/ub_src_transaction.o duckdb/src/verification/copied_statement_verifier.o duckdb/src/verification/deserialized_statement_verifier.o duckdb/src/verification/external_statement_verifier.o duckdb/src/verification/fetch_row_verifier.o duckdb/src/verification/no_operator_caching_verifier.o duckdb/src/verification/parsed_statement_verifier.o duckdb/src/verification/prepared_statement_verifier.o duckdb/src/verification/statement_verifier.o duckdb/src/verification/unoptimized_statement_verifier.o duckdb/third_party/fmt/format.o duckdb/third_party/fsst/fsst_avx512.o duckdb/third_party/fsst/libfsst.o duckdb/third_party/miniz/miniz.o duckdb/third_party/re2/re2/bitstate.o duckdb/third_party/re2/re2/compile.o duckdb/third_party/re2/re2/dfa.o duckdb/third_party/re2/re2/filtered_re2.o duckdb/third_party/re2/re2/mimics_pcre.o duckdb/third_party/re2/re2/nfa.o duckdb/third_party/re2/re2/onepass.o duckdb/third_party/re2/re2/parse.o duckdb/third_party/re2/re2/perl_groups.o duckdb/third_party/re2/re2/prefilter.o duckdb/third_party/re2/re2/prefilter_tree.o duckdb/third_party/re2/re2/prog.o duckdb/third_party/re2/re2/re2.o duckdb/third_party/re2/re2/regexp.o duckdb/third_party/re2/re2/set.o duckdb/third_party/re2/re2/simplify.o duckdb/third_party/re2/re2/stringpiece.o duckdb/third_party/re2/re2/tostring.o duckdb/third_party/re2/re2/unicode_casefold.o duckdb/third_party/re2/re2/unicode_groups.o duckdb/third_party/re2/util/rune.o duckdb/third_party/re2/util/strutil.o duckdb/third_party/hyperloglog/hyperloglog.o duckdb/third_party/hyperloglog/sds.o duckdb/third_party/skiplist/SkipList.o duckdb/third_party/fastpforlib/bitpacking.o duckdb/third_party/utf8proc/utf8proc.o duckdb/third_party/utf8proc/utf8proc_wrapper.o duckdb/third_party/libpg_query/pg_functions.o duckdb/third_party/libpg_query/postgres_parser.o duckdb/third_party/libpg_query/src_backend_nodes_list.o duckdb/third_party/libpg_query/src_backend_nodes_makefuncs.o duckdb/third_party/libpg_query/src_backend_nodes_value.o duckdb/third_party/libpg_query/src_backend_parser_gram.o duckdb/third_party/libpg_query/src_backend_parser_parser.o duckdb/third_party/libpg_query/src_backend_parser_scan.o duckdb/third_party/libpg_query/src_backend_parser_scansup.o duckdb/third_party/libpg_query/src_common_keywords.o duckdb/third_party/mbedtls/library/aes.o duckdb/third_party/mbedtls/library/aria.o duckdb/third_party/mbedtls/library/asn1parse.o duckdb/third_party/mbedtls/library/base64.o duckdb/third_party/mbedtls/library/bignum.o duckdb/third_party/mbedtls/library/camellia.o duckdb/third_party/mbedtls/library/cipher.o duckdb/third_party/mbedtls/library/cipher_wrap.o duckdb/third_party/mbedtls/library/constant_time.o duckdb/third_party/mbedtls/library/entropy.o duckdb/third_party/mbedtls/library/entropy_poll.o duckdb/third_party/mbedtls/library/gcm.o duckdb/third_party/mbedtls/library/md.o duckdb/third_party/mbedtls/library/oid.o duckdb/third_party/mbedtls/library/pem.o duckdb/third_party/mbedtls/library/pk.o duckdb/third_party/mbedtls/library/pk_wrap.o duckdb/third_party/mbedtls/library/pkparse.o duckdb/third_party/mbedtls/library/platform_util.o duckdb/third_party/mbedtls/library/rsa.o duckdb/third_party/mbedtls/library/rsa_alt_helpers.o duckdb/third_party/mbedtls/library/sha1.o duckdb/third_party/mbedtls/library/sha256.o duckdb/third_party/mbedtls/library/sha512.o duckdb/third_party/mbedtls/mbedtls_wrapper.o duckdb/extension/parquet/column_reader.o duckdb/extension/parquet/column_writer.o duckdb/extension/parquet/parquet_crypto.o duckdb/extension/parquet/parquet_extension.o duckdb/extension/parquet/parquet_metadata.o duckdb/extension/parquet/parquet_reader.o duckdb/extension/parquet/parquet_statistics.o duckdb/extension/parquet/parquet_timestamp.o duckdb/extension/parquet/parquet_writer.o duckdb/extension/parquet/serialize_parquet.o duckdb/extension/parquet/zstd_file_system.o duckdb/third_party/parquet/parquet_constants.o duckdb/third_party/parquet/parquet_types.o duckdb/third_party/thrift/thrift/protocol/TProtocol.o duckdb/third_party/thrift/thrift/transport/TTransportException.o duckdb/third_party/thrift/thrift/transport/TBufferTransports.o duckdb/third_party/snappy/snappy.o duckdb/third_party/snappy/snappy-sinksource.o duckdb/third_party/zstd/decompress/zstd_ddict.o duckdb/third_party/zstd/decompress/huf_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress.o duckdb/third_party/zstd/decompress/zstd_decompress_block.o duckdb/third_party/zstd/common/entropy_common.o duckdb/third_party/zstd/common/fse_decompress.o duckdb/third_party/zstd/common/zstd_common.o duckdb/third_party/zstd/common/error_private.o duckdb/third_party/zstd/common/xxhash.o duckdb/third_party/zstd/compress/fse_compress.o duckdb/third_party/zstd/compress/hist.o duckdb/third_party/zstd/compress/huf_compress.o duckdb/third_party/zstd/compress/zstd_compress.o duckdb/third_party/zstd/compress/zstd_compress_literals.o duckdb/third_party/zstd/compress/zstd_compress_sequences.o duckdb/third_party/zstd/compress/zstd_compress_superblock.o duckdb/third_party/zstd/compress/zstd_double_fast.o duckdb/third_party/zstd/compress/zstd_fast.o duckdb/third_party/zstd/compress/zstd_lazy.o duckdb/third_party/zstd/compress/zstd_ldm.o duckdb/third_party/zstd/compress/zstd_opt.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR


trying URL 'https://cloud.r-project.org/src/contrib/bslib_0.6.2.tar.gz'
Content type 'application/x-gzip' length 6060123 bytes (5.8 MB)
==================================================
downloaded 5.8 MB

trying URL 'https://cloud.r-project.org/src/contrib/duckdb_0.10.0.tar.gz'
Content type 'application/x-gzip' length 4090561 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

...
* installing *binary* package ‘httr’ ...
* DONE (httr)
* installing *binary* package ‘jquerylib’ ...
* DONE (jquerylib)
* installing *binary* package ‘pillar’ ...
* DONE (pillar)
* installing *binary* package ‘pkgbuild’ ...
* DONE (pkgbuild)
* installing *binary* package ‘purrr’ ...
* DONE (purrr)


```
# cft

<details>

* Version: 1.0.0
* GitHub: https://github.com/earthlab/cft-CRAN
* Source code: https://github.com/cran/cft
* Date/Publication: 2022-10-03 07:12:18 UTC
* Number of recursive dependencies: 90

Run `revdep_details(, "cft")` for more info

</details>

## In both

*   checking whether package ‘cft’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/cft/new/cft.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cft’ ...
** package ‘cft’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cft’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/cft/new/cft.Rcheck/cft’


```
### CRAN

```
* installing *source* package ‘cft’ ...
** package ‘cft’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(j <- i[[1L]], c(lib.loc, .libPaths()), versionCheck = vI[[j]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘cft’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/cft/old/cft.Rcheck/cft’


```
# erah

<details>

* Version: 2.0.1
* GitHub: https://github.com/xdomingoal/erah-devel
* Source code: https://github.com/cran/erah
* Date/Publication: 2023-12-20 10:10:02 UTC
* Number of recursive dependencies: 92

Run `revdep_details(, "erah")` for more info

</details>

## In both

*   checking whether package ‘erah’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/erah/new/erah.Rcheck/00install.out’ for details.
    ```

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘ncdf4’
    ```

## Installation

### Devel

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11)’
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o erah.so registerDynamicSymbol.o runfunc.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/future/revdep/checks/erah/new/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/erah/new/erah.Rcheck/erah’


```
### CRAN

```
* installing *source* package ‘erah’ ...
** package ‘erah’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C compiler: ‘gcc (GCC) 10.2.1 20210130 (Red Hat 10.2.1-11)’
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c registerDynamicSymbol.c -o registerDynamicSymbol.o
gcc -I"/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/include" -DNDEBUG   -I/usr/local/include    -fpic  -g -O2  -c runfunc.c -o runfunc.o
gcc -shared -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -L/usr/local/lib64 -o erah.so registerDynamicSymbol.o runfunc.o -L/software/c4/cbi/software/_centos7/R-4.3.3-gcc10/lib64/R/lib -lR
installing to /c4/home/henrik/repositories/future/revdep/checks/erah/old/erah.Rcheck/00LOCK-erah/00new/erah/libs
** R
...
** data
*** moving datasets to lazyload DB
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘erah’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/erah/old/erah.Rcheck/erah’


```
# flowml

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/future
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```



* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘bitops’ ...
* DONE (bitops)
...
* installing *binary* package ‘caret’ ...
* DONE (caret)
* installing *binary* package ‘ConsRank’ ...
* DONE (ConsRank)
* installing *binary* package ‘labelled’ ...
* DONE (labelled)
* installing *binary* package ‘nloptr’ ...
* DONE (nloptr)
* installing *binary* package ‘rrcovHD’ ...
* DONE (rrcovHD)


```
### CRAN

```



* installing *binary* package ‘abind’ ...
* DONE (abind)
* installing *binary* package ‘backports’ ...
* DONE (backports)
* installing *binary* package ‘base64enc’ ...
* DONE (base64enc)
* installing *binary* package ‘bit’ ...
* DONE (bit)
* installing *binary* package ‘bitops’ ...
* DONE (bitops)
...
* installing *binary* package ‘caret’ ...
* DONE (caret)
* installing *binary* package ‘ConsRank’ ...
* DONE (ConsRank)
* installing *binary* package ‘labelled’ ...
* DONE (labelled)
* installing *binary* package ‘nloptr’ ...
* DONE (nloptr)
* installing *binary* package ‘rrcovHD’ ...
* DONE (rrcovHD)


```
# marginaleffects

<details>

* Version: 
* GitHub: https://github.com/HenrikBengtsson/future
* Source code: NA
* Number of recursive dependencies: 0

</details>

## Error before installation

### Devel

```
Creating a generic function for ‘nrow’ from package ‘base’ in package ‘tinytable’
Creating a generic function for ‘ncol’ from package ‘base’ in package ‘tinytable’
Creating a generic function for ‘colnames’ from package ‘base’ in package ‘tinytable’
Creating a generic function for ‘colnames<-’ from package ‘base’ in package ‘tinytable’


trying URL 'https://cloud.r-project.org/src/contrib/fmeffects_0.1.2.tar.gz'
Content type 'application/x-gzip' length 2486200 bytes (2.4 MB)
==================================================
downloaded 2.4 MB

trying URL 'https://cloud.r-project.org/src/contrib/ggdag_0.2.12.tar.gz'
Content type 'application/x-gzip' length 1946994 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

...
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (mlr3fselect)
* installing *source* package ‘mlr3learners’ ...
** package ‘mlr3learners’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


```
### CRAN

```
Creating a generic function for ‘nrow’ from package ‘base’ in package ‘tinytable’
Creating a generic function for ‘ncol’ from package ‘base’ in package ‘tinytable’
Creating a generic function for ‘colnames’ from package ‘base’ in package ‘tinytable’
Creating a generic function for ‘colnames<-’ from package ‘base’ in package ‘tinytable’


trying URL 'https://cloud.r-project.org/src/contrib/fmeffects_0.1.2.tar.gz'
Content type 'application/x-gzip' length 2486200 bytes (2.4 MB)
==================================================
downloaded 2.4 MB

trying URL 'https://cloud.r-project.org/src/contrib/ggdag_0.2.12.tar.gz'
Content type 'application/x-gzip' length 1946994 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

...
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (mlr3fselect)
* installing *source* package ‘mlr3learners’ ...
** package ‘mlr3learners’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading


```
# Prostar

<details>

* Version: 1.34.6
* GitHub: https://github.com/prostarproteomics/Prostar
* Source code: https://github.com/cran/Prostar
* Date/Publication: 2024-02-15
* Number of recursive dependencies: 332

Run `revdep_details(, "Prostar")` for more info

</details>

## In both

*   checking whether package ‘Prostar’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/new/Prostar.Rcheck/Prostar’


```
### CRAN

```
* installing *source* package ‘Prostar’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘Prostar’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/Prostar/old/Prostar.Rcheck/Prostar’


```
# startR

<details>

* Version: 2.3.1
* GitHub: NA
* Source code: https://github.com/cran/startR
* Date/Publication: 2023-12-21 16:20:02 UTC
* Number of recursive dependencies: 60

Run `revdep_details(, "startR")` for more info

</details>

## In both

*   checking whether package ‘startR’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/startR/new/startR.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘startR’ ...
** package ‘startR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘startR’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/startR/new/startR.Rcheck/startR’


```
### CRAN

```
* installing *source* package ‘startR’ ...
** package ‘startR’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘ncdf4’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘startR’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/startR/old/startR.Rcheck/startR’


```
# TKCat

<details>

* Version: 1.0.7
* GitHub: https://github.com/patzaw/TKCat
* Source code: https://github.com/cran/TKCat
* Date/Publication: 2023-02-16 14:50:03 UTC
* Number of recursive dependencies: 115

Run `revdep_details(, "TKCat")` for more info

</details>

## In both

*   checking whether package ‘TKCat’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/TKCat/new/TKCat.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TKCat’ ...
** package ‘TKCat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘arrow’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TKCat’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TKCat/new/TKCat.Rcheck/TKCat’


```
### CRAN

```
* installing *source* package ‘TKCat’ ...
** package ‘TKCat’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) : 
  there is no package called ‘arrow’
Calls: <Anonymous> ... loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: lazy loading failed for package ‘TKCat’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TKCat/old/TKCat.Rcheck/TKCat’


```
# TriDimRegression

<details>

* Version: 1.0.2
* GitHub: https://github.com/alexander-pastukhov/tridim-regression
* Source code: https://github.com/cran/TriDimRegression
* Date/Publication: 2023-09-13 14:10:03 UTC
* Number of recursive dependencies: 100

Run `revdep_details(, "TriDimRegression")` for more info

</details>

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/c4/home/henrik/repositories/future/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


```
### CRAN

```
* installing *source* package ‘TriDimRegression’ ...
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/c4/home/henrik/repositories/future/revdep/checks/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
