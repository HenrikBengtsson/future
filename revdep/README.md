# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.2 (2016-10-31) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |en_US.UTF-8                  |
|tz       |America/Los_Angeles          |
|date     |2016-12-31                   |

## Packages

|package  |*  |version |date       |source         |
|:--------|:--|:-------|:----------|:--------------|
|digest   |   |0.6.10  |2016-08-02 |CRAN (R 3.3.1) |
|future   |   |1.2.0   |2016-11-12 |cran (@1.2.0)  |
|globals  |   |0.7.1   |2016-10-14 |local          |
|listenv  |   |0.6.0   |2015-12-28 |CRAN (R 3.3.1) |
|markdown |   |0.7.7   |2015-04-22 |cran (@0.7.7)  |
|R.rsp    |   |0.40.0  |2016-12-06 |cran (@0.40.0) |

# Check results

20 packages

|package              |version | errors| warnings| notes|
|:--------------------|:-------|------:|--------:|-----:|
|ACNE                 |0.8.1   |      0|        0|     0|
|aroma.affymetrix     |3.0.0   |      0|        0|     0|
|aroma.cn             |1.6.1   |      0|        0|     0|
|aroma.core           |3.0.0   |      0|        0|     1|
|calmate              |0.12.1  |      0|        0|     0|
|doFuture             |0.3.0   |      0|        0|     0|
|fiery                |0.2.1   |      0|        0|     0|
|future.BatchJobs     |0.13.1  |      1|        0|     0|
|GeneBreak            |1.4.0   |      0|        0|     1|
|googleComputeEngineR |0.1.0   |      0|        0|     0|
|MPAgenomics          |1.1.2   |      0|        0|     2|
|NSA                  |0.0.32  |      0|        0|     6|
|pbmcapply            |1.1.3   |      0|        0|     0|
|PECA                 |1.10.0  |      0|        0|     1|
|PSCBS                |0.62.0  |      0|        0|     0|
|PureCN               |1.2.3   |      0|        1|     1|
|QDNAseq              |1.10.0  |      0|        0|     0|
|Repitools            |1.20.0  |      0|        0|     2|
|R.filesets           |2.10.0  |      0|        0|     0|
|TIN                  |1.6.0   |      0|        0|     2|

## ACNE (0.8.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/ACNE/issues

0 errors | 0 warnings | 0 notes

## aroma.affymetrix (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.affymetrix/issues

0 errors | 0 warnings | 0 notes

## aroma.cn (1.6.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.cn/issues

0 errors | 0 warnings | 0 notes

## aroma.core (3.0.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/aroma.core/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘sfit’ ‘expectile’ ‘HaarSeg’ ‘mpcbs’
```

## calmate (0.12.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/calmate/issues

0 errors | 0 warnings | 0 notes

## doFuture (0.3.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/doFuture/issues

0 errors | 0 warnings | 0 notes

## fiery (0.2.1)
Maintainer: Thomas Lin Pedersen <thomasp85@gmail.com>  
Bug reports: https://github.com/thomasp85/fiery/issues

0 errors | 0 warnings | 0 notes

## future.BatchJobs (0.13.1)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/future.BatchJobs/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/DEPRECATED.backend.R’ failed.
Last 13 lines of output:
  List of 1
   $ cluster.functions:List of 5
    ..$ name             : chr "Local"
    ..$ submitJob        :function (conf, reg, job.name, rscript, log.file, job.dir, resources, arrayjobs)  
    ..$ killJob          :function (conf, reg, batch.job.id)  
    ..$ listJobs         :function (conf, reg)  
    ..$ getArrayEnvirName:function ()  
    ..- attr(*, "class")= chr "ClusterFunctions"
  Saving conf: /home/hb/repositories/future/revdep/checks/future.BatchJobs.Rcheck/tests/.future/20161231_165100-UyVeKV/BatchJobs_2132372677-files/conf.RData
  Submitting 1 chunks / 1 jobs.
  Cluster functions: Local.
  Auto-mailer settings: start=none, done=none, error=none.
  Aborted (core dumped)
```

About "Aborted (core dumped)":
While running the future.BatchJobs package tests, something core dumped R.
The backtrace outputted to the terminal is below.  Since future.BatchJobs
does not use native code itself, it is more likely that it was one of the
dependent packages or R itself that caused it.

```
*** Error in `/usr/lib/R/bin/exec/R': double free or corruption (!prev): 0x00000000042e82e0 ***
======= Backtrace: =========
/lib/x86_64-linux-gnu/libc.so.6(+0x777e5)[0x7f77be11e7e5]
/lib/x86_64-linux-gnu/libc.so.6(+0x7fe0a)[0x7f77be126e0a]
/lib/x86_64-linux-gnu/libc.so.6(cfree+0x4c)[0x7f77be12a98c]
/usr/lib/R/lib/libR.so(+0x137196)[0x7f77be7c4196]
/usr/lib/R/lib/libR.so(Rf_allocSExp+0xba)[0x7f77be7c505a]
/usr/lib/R/lib/libR.so(+0x181ef7)[0x7f77be80eef7]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x181f94)[0x7f77be80ef94]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x181f94)[0x7f77be80ef94]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x181f94)[0x7f77be80ef94]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x181fb7)[0x7f77be80efb7]
/usr/lib/R/lib/libR.so(+0x180511)[0x7f77be80d511]
/usr/lib/R/lib/libR.so(+0x1808ee)[0x7f77be80d8ee]
/usr/lib/R/lib/libR.so(+0x180d52)[0x7f77be80dd52]
/usr/lib/R/lib/libR.so(R_Unserialize+0x19b)[0x7f77be810d8b]
/usr/lib/R/lib/libR.so(+0x1849e9)[0x7f77be8119e9]
/usr/lib/R/lib/libR.so(+0x184ce4)[0x7f77be811ce4]
/usr/lib/R/lib/libR.so(Rf_eval+0x699)[0x7f77be795679]
/usr/lib/R/lib/libR.so(+0x108a3b)[0x7f77be795a3b]
/usr/lib/R/lib/libR.so(+0x108f18)[0x7f77be795f18]
/usr/lib/R/lib/libR.so(+0x100757)[0x7f77be78d757]
/usr/lib/R/lib/libR.so(Rf_eval+0x180)[0x7f77be795160]
/usr/lib/R/lib/libR.so(+0x108a3b)[0x7f77be795a3b]
/usr/lib/R/lib/libR.so(+0x108f18)[0x7f77be795f18]
/usr/lib/R/lib/libR.so(+0x100757)[0x7f77be78d757]
/usr/lib/R/lib/libR.so(Rf_eval+0x180)[0x7f77be795160]
/usr/lib/R/lib/libR.so(+0x108a3b)[0x7f77be795a3b]
/usr/lib/R/lib/libR.so(+0x108f18)[0x7f77be795f18]
/usr/lib/R/lib/libR.so(+0x100757)[0x7f77be78d757]
/usr/lib/R/lib/libR.so(Rf_eval+0x180)[0x7f77be795160]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(+0x102c40)[0x7f77be78fc40]
/usr/lib/R/lib/libR.so(Rf_eval+0x180)[0x7f77be795160]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(+0x102c40)[0x7f77be78fc40]
/usr/lib/R/lib/libR.so(Rf_eval+0x180)[0x7f77be795160]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(Rf_eval+0x31d)[0x7f77be7952fd]
/usr/lib/R/lib/libR.so(+0x10ae48)[0x7f77be797e48]
/usr/lib/R/lib/libR.so(Rf_eval+0x541)[0x7f77be795521]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(Rf_eval+0x31d)[0x7f77be7952fd]
/usr/lib/R/lib/libR.so(+0x10ae48)[0x7f77be797e48]
/usr/lib/R/lib/libR.so(Rf_eval+0x541)[0x7f77be795521]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(+0x13ce38)[0x7f77be7c9e38]
/usr/lib/R/lib/libR.so(+0x13d24b)[0x7f77be7ca24b]
/usr/lib/R/lib/libR.so(+0x13d548)[0x7f77be7ca548]
/usr/lib/R/lib/libR.so(Rf_eval+0x541)[0x7f77be795521]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(Rf_eval+0x31d)[0x7f77be7952fd]
/usr/lib/R/lib/libR.so(+0x10bfb6)[0x7f77be798fb6]
/usr/lib/R/lib/libR.so(Rf_eval+0x541)[0x7f77be795521]
/usr/lib/R/lib/libR.so(+0x10ae48)[0x7f77be797e48]
/usr/lib/R/lib/libR.so(Rf_eval+0x541)[0x7f77be795521]
/usr/lib/R/lib/libR.so(Rf_applyClosure+0x51d)[0x7f77be796ddd]
/usr/lib/R/lib/libR.so(Rf_eval+0x31d)[0x7f77be7952fd]
/usr/lib/R/lib/libR.so(+0x10bfb6)[0x7f77be798fb6]
======= Memory map: ========
00400000-00401000 r-xp 00000000 103:05 22739542                          /usr/lib/R/bin/exec/R
00600000-00601000 r--p 00000000 103:05 22739542                          /usr/lib/R/bin/exec/R
00601000-00602000 rw-p 00001000 103:05 22739542                          /usr/lib/R/bin/exec/R
0193a000-043b4000 rw-p 00000000 00:00 0                                  [heap]
7f77b6295000-7f77b7b4b000 r-xp 00000000 103:05 21283670                  /usr/lib/x86_64-linux-gnu/libicudata.so.55.1
7f77b7b4b000-7f77b7d4a000 ---p 018b6000 103:05 21283670                  /usr/lib/x86_64-linux-gnu/libicudata.so.55.1
7f77b7d4a000-7f77b7d4b000 r--p 018b5000 103:05 21283670                  /usr/lib/x86_64-linux-gnu/libicudata.so.55.1
7f77b7d4b000-7f77b7d4c000 rw-p 018b6000 103:05 21283670                  /usr/lib/x86_64-linux-gnu/libicudata.so.55.1
7f77b7d4c000-7f77b7ecb000 r-xp 00000000 103:05 21283684                  /usr/lib/x86_64-linux-gnu/libicuuc.so.55.1
7f77b7ecb000-7f77b80cb000 ---p 0017f000 103:05 21283684                  /usr/lib/x86_64-linux-gnu/libicuuc.so.55.1
7f77b80cb000-7f77b80db000 r--p 0017f000 103:05 21283684                  /usr/lib/x86_64-linux-gnu/libicuuc.so.55.1
7f77b80db000-7f77b80dc000 rw-p 0018f000 103:05 21283684                  /usr/lib/x86_64-linux-gnu/libicuuc.so.55.1
7f77b80dc000-7f77b80e0000 rw-p 00000000 00:00 0 
7f77b80e0000-7f77b8332000 r-xp 00000000 103:05 21283672                  /usr/lib/x86_64-linux-gnu/libicui18n.so.55.1
7f77b8332000-7f77b8532000 ---p 00252000 103:05 21283672                  /usr/lib/x86_64-linux-gnu/libicui18n.so.55.1
7f77b8532000-7f77b8541000 r--p 00252000 103:05 21283672                  /usr/lib/x86_64-linux-gnu/libicui18n.so.55.1
7f77b8541000-7f77b8542000 rw-p 00261000 103:05 21283672                  /usr/lib/x86_64-linux-gnu/libicui18n.so.55.1
7f77b8542000-7f77b85b1000 r-xp 00000000 103:05 10118700                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/stringi/libs/stringi.so
7f77b85b1000-7f77b87b0000 ---p 0006f000 103:05 10118700                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/stringi/libs/stringi.so
7f77b87b0000-7f77b87b2000 r--p 0006e000 103:05 10118700                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/stringi/libs/stringi.so
7f77b87b2000-7f77b87b3000 rw-p 00070000 103:05 10118700                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/stringi/libs/stringi.so
7f77b87b3000-7f77b87c7000 r-xp 00000000 103:05 22464317                  /usr/lib/R/library/tools/libs/tools.so
7f77b87c7000-7f77b89c7000 ---p 00014000 103:05 22464317                  /usr/lib/R/library/tools/libs/tools.so
7f77b89c7000-7f77b89c8000 r--p 00014000 103:05 22464317                  /usr/lib/R/library/tools/libs/tools.so
7f77b89c8000-7f77b89c9000 rw-p 00015000 103:05 22464317                  /usr/lib/R/library/tools/libs/tools.so
7f77b89c9000-7f77b8b20000 rw-p 00000000 00:00 0 
7f77b8b20000-7f77b8b23000 r-xp 00000000 103:05 9725632                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/base64enc/libs/base64enc.so
7f77b8b23000-7f77b8d22000 ---p 00003000 103:05 9725632                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/base64enc/libs/base64enc.so
7f77b8d22000-7f77b8d23000 r--p 00002000 103:05 9725632                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/base64enc/libs/base64enc.so
7f77b8d23000-7f77b8d24000 rw-p 00003000 103:05 9725632                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/base64enc/libs/base64enc.so
7f77b8d24000-7f77b8d26000 rw-p 00000000 00:00 0 
7f77b8d26000-7f77b8e44000 r-xp 00000000 103:05 11701563                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/RSQLite/libs/RSQLite.so
7f77b8e44000-7f77b9044000 ---p 0011e000 103:05 11701563                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/RSQLite/libs/RSQLite.so
7f77b9044000-7f77b9047000 r--p 0011e000 103:05 11701563                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/RSQLite/libs/RSQLite.so
7f77b9047000-7f77b904a000 rw-p 00121000 103:05 11701563                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/RSQLite/libs/RSQLite.so
7f77b904a000-7f77b904b000 rw-p 00000000 00:00 0 
7f77b904b000-7f77b91bd000 r-xp 00000000 103:05 21281804                  /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7f77b91bd000-7f77b93bd000 ---p 00172000 103:05 21281804                  /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7f77b93bd000-7f77b93c7000 r--p 00172000 103:05 21281804                  /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7f77b93c7000-7f77b93c9000 rw-p 0017c000 103:05 21281804                  /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.21
7f77b93c9000-7f77b93cd000 rw-p 00000000 00:00 0 
7f77b93cd000-7f77b9422000 r-xp 00000000 103:05 12611024                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/Rcpp/libs/Rcpp.so
7f77b9422000-7f77b9621000 ---p 00055000 103:05 12611024                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/Rcpp/libs/Rcpp.so
7f77b9621000-7f77b9622000 r--p 00054000 103:05 12611024                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/Rcpp/libs/Rcpp.so
7f77b9622000-7f77b9623000 rw-p 00055000 103:05 12611024                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/Rcpp/libs/Rcpp.so
7f77b9623000-7f77b962a000 rw-p 00000000 00:00 0 
7f77b962a000-7f77b962c000 r-xp 00000000 103:05 10118437                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/BBmisc/libs/BBmisc.so
7f77b962c000-7f77b982b000 ---p 00002000 103:05 10118437                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/BBmisc/libs/BBmisc.so
7f77b982b000-7f77b982c000 r--p 00001000 103:05 10118437                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/BBmisc/libs/BBmisc.so
7f77b982c000-7f77b982d000 rw-p 00002000 103:05 10118437                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/BBmisc/libs/BBmisc.so
7f77b982d000-7f77b9839000 r-xp 00000000 103:05 10118346                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/checkmate/libs/checkmate.so
7f77b9839000-7f77b9a38000 ---p 0000c000 103:05 10118346                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/checkmate/libs/checkmate.so
7f77b9a38000-7f77b9a39000 r--p 0000b000 103:05 10118346                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/checkmate/libs/checkmate.so
7f77b9a39000-7f77b9a3a000 rw-p 0000c000 103:05 10118346                  /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/checkmate/libs/checkmate.so
7f77b9a3a000-7f77b9a3f000 r-xp 00000000 103:05 22462209                  /usr/lib/R/library/parallel/libs/parallel.so
7f77b9a3f000-7f77b9c3e000 ---p 00005000 103:05 22462209                  /usr/lib/R/library/parallel/libs/parallel.so
7f77b9c3e000-7f77b9c3f000 r--p 00004000 103:05 22462209                  /usr/lib/R/library/parallel/libs/parallel.so
7f77b9c3f000-7f77b9c40000 rw-p 00005000 103:05 22462209                  /usr/lib/R/library/parallel/libs/parallel.so
7f77b9c40000-7f77ba21f000 r-xp 00000000 103:05 22738047                  /usr/lib/atlas-base/atlas/liblapack.so.3.0
7f77ba21f000-7f77ba41f000 ---p 005df000 103:05 22738047                  /usr/lib/atlas-base/atlas/liblapack.so.3.0
7f77ba41f000-7f77ba424000 rw-p 005df000 103:05 22738047                  /usr/lib/atlas-base/atlas/liblapack.so.3.0
7f77ba424000-7f77ba4c6000 r-xp 00000000 103:05 22739700                  /usr/lib/R/library/stats/libs/stats.so
7f77ba4c6000-7f77ba6c5000 ---p 000a2000 103:05 22739700                  /usr/lib/R/library/stats/libs/stats.so
7f77ba6c5000-7f77ba6c7000 r--p 000a1000 103:05 22739700                  /usr/lib/R/library/stats/libs/stats.so
7f77ba6c7000-7f77ba6c8000 rw-p 000a3000 103:05 22739700                  /usr/lib/R/library/stats/libs/stats.so
7f77ba6c8000-7f77ba6c9000 rw-p 00000000 00:00 0 
7f77ba6c9000-7f77ba709000 r-xp 00000000 103:05 22463709                  /usr/lib/R/library/graphics/libs/graphics.so
7f77ba709000-7f77ba908000 ---p 00040000 103:05 22463709                  /usr/lib/R/library/graphics/libs/graphics.so
7f77ba908000-7f77ba909000 r--p 0003f000 103:05 22463709                  /usr/lib/R/library/graphics/libs/graphics.so
7f77ba909000-7f77ba90a000 rw-p 00040000 103:05 22463709                  /usr/lib/R/library/graphics/libs/graphics.so
7f77ba90a000-7f77ba948000 rw-p 00000000 00:00 0 
7f77ba948000-7f77ba97c000 r-xp 00000000 103:05 22464338                  /usr/lib/R/library/grDevices/libs/grDevices.so
7f77ba97c000-7f77bab7c000 ---p 00034000 103:05 22464338                  /usr/lib/R/library/grDevices/libs/grDevices.so
7f77bab7c000-7f77bab81000 r--p 00034000 103:05 22464338                  /usr/lib/R/library/grDevices/libs/grDevices.so
7f77bab81000-7f77bab83000 rw-p 00039000 103:05 22464338                  /usr/lib/R/library/grDevices/libs/grDevices.so
7f77bab83000-7f77bab84000 rw-p 00000000 00:00 0 
7f77bab98000-7f77babcd000 r--s 00000000 103:05 17731212                  /var/cache/nscd/group
7f77babcd000-7f77bac02000 r--s 00000000 103:05 17730845                  /var/cache/nscd/passwd
7f77bac02000-7f77bac1c000 r-xp 00000000 103:05 9718668                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/digest/libs/digest.so
7f77bac1c000-7f77bae1c000 ---p 0001a000 103:05 9718668                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/digest/libs/digest.so
7f77bae1c000-7f77bae1d000 r--p 0001a000 103:05 9718668                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/digest/libs/digest.so
7f77bae1d000-7f77bae1e000 rw-p 0001b000 103:05 9718668                   /home/hb/R/x86_64-pc-linux-gnu-library/devtools/3.3/digest/libs/digest.so
7f77bae1e000-7f77baf1a000 rw-p 00000000 00:00 0 
7f77baf1a000-7f77baf22000 r-xp 00000000 103:05 22739723                  /usr/lib/R/library/methods/libs/methods.so
7f77baf22000-7f77bb121000 ---p 00008000 103:05 22739723                  /usr/lib/R/library/methods/libs/methods.so
7f77bb121000-7f77bb122000 r--p 00007000 103:05 22739723                  /usr/lib/R/library/methods/libs/methods.so
7f77bb122000-7f77bb123000 rw-p 00008000 103:05 22739723                  /usr/lib/R/library/methods/libs/methods.so
7f77bb123000-7f77bb12d000 r-xp 00000000 103:05 22739671                  /usr/lib/R/library/utils/libs/utils.so
7f77bb12d000-7f77bb32c000 ---p 0000a000 103:05 22739671                  /usr/lib/R/library/utils/libs/utils.so
7f77bb32c000-7f77bb32d000 r--p 00009000 103:05 22739671                  /usr/lib/R/library/utils/libs/utils.so
7f77bb32d000-7f77bb32e000 rw-p 0000a000 103:05 22739671                  /usr/lib/R/library/utils/libs/utils.so
7f77bb32e000-7f77bb562000 rw-p 00000000 00:00 0 
7f77bb562000-7f77bbae9000 r--p 00000000 103:05 21276557                  /usr/lib/locale/locale-archive
7f77bbae9000-7f77bbb27000 r-xp 00000000 103:05 21281807                  /usr/lib/x86_64-linux-gnu/libquadmath.so.0.0.0
7f77bbb27000-7f77bbd26000 ---p 0003e000 103:05 21281807                  /usr/lib/x86_64-linux-gnu/libquadmath.so.0.0.0
7f77bbd26000-7f77bbd27000 r--p 0003d000 103:05 21281807                  /usr/lib/x86_64-linux-gnu/libquadmath.so.0.0.0
7f77bbd27000-7f77bbd28000 rw-p 0003e000 103:05 21281807                  /usr/lib/x86_64-linux-gnu/libquadmath.so.0.0.0
7f77bbd28000-7f77bbd4d000 r-xp 00000000 103:05 15501335                  /lib/x86_64-linux-gnu/libtinfo.so.5.9
7f77bbd4d000-7f77bbf4c000 ---p 00025000 103:05 15501335                  /lib/x86_64-linux-gnu/libtinfo.so.5.9
7f77bbf4c000-7f77bbf50000 r--p 00024000 103:05 15501335                  /lib/x86_64-linux-gnu/libtinfo.so.5.9
7f77bbf50000-7f77bbf51000 rw-p 00028000 103:05 15501335                  /lib/x86_64-linux-gnu/libtinfo.so.5.9
7f77bbf51000-7f77bbf67000 r-xp 00000000 103:05 15501201                  /lib/x86_64-linux-gnu/libgcc_s.so.1
7f77bbf67000-7f77bc166000 ---p 00016000 103:05 15501201                  /lib/x86_64-linux-gnu/libgcc_s.so.1
7f77bc166000-7f77bc167000 rw-p 00015000 103:05 15501201                  /lib/x86_64-linux-gnu/libgcc_s.so.1
7f77bc167000-7f77bc290000 r-xp 00000000 103:05 21280520                  /usr/lib/x86_64-linux-gnu/libgfortran.so.3.0.0
7f77bc290000-7f77bc48f000 ---p 00129000 103:05 21280520                  /usr/lib/x86_64-linux-gnu/libgfortran.so.3.0.0
7f77bc48f000-7f77bc490000 r--p 00128000 103:05 21280520                  /usr/lib/x86_64-linux-gnu/libgfortran.so.3.0.0
7f77bc490000-7f77bc492000 rw-p 00129000 103:05 21280520                  /usr/lib/x86_64-linux-gnu/libgfortran.so.3.0.0
7f77bc492000-7f77bc829000 r-xp 00000000 103:05 22738049                  /usr/lib/atlas-base/libatlas.so.3.0
7f77bc829000-7f77bca29000 ---p 00397000 103:05 22738049                  /usr/lib/atlas-base/libatlas.so.3.0
7f77bca29000-7f77bca30000 rw-p 00397000 103:05 22738049                  /usr/lib/atlas-base/libatlas.so.3.0
7f77bca30000-7f77bca51000 r-xp 00000000 103:05 21281808                  /usr/lib/x86_64-linux-gnu/libgomp.so.1.0.0
7f77bca51000-7f77bcc50000 ---p 00021000 103:05 21281808                  /usr/lib/x86_64-linux-gnu/libgomp.so.1.0.0
7f77bcc50000-7f77bcc51000 r--p 00020000 103:05 21281808                  /usr/lib/x86_64-linux-gnu/libgomp.so.1.0.0
7f77bcc51000-7f77bcc52000 rw-p 00021000 103:05 21281808                  /usr/lib/x86_64-linux-gnu/libgomp.so.1.0.0
7f77bcc52000-7f77bcc55000 r-xp 00000000 103:05 15503573                  /lib/x86_64-linux-gnu/libdl-2.23.so
7f77bcc55000-7f77bce54000 ---p 00003000 103:05 15503573                  /lib/x86_64-linux-gnu/libdl-2.23.so
7f77bce54000-7f77bce55000 r--p 00002000 103:05 15503573                  /lib/x86_64-linux-gnu/libdl-2.23.so
7f77bce55000-7f77bce56000 rw-p 00003000 103:05 15503573                  /lib/x86_64-linux-gnu/libdl-2.23.so
7f77bce56000-7f77bce5d000 r-xp 00000000 103:05 15503565                  /lib/x86_64-linux-gnu/librt-2.23.so
7f77bce5d000-7f77bd05c000 ---p 00007000 103:05 15503565                  /lib/x86_64-linux-gnu/librt-2.23.so
7f77bd05c000-7f77bd05d000 r--p 00006000 103:05 15503565                  /lib/x86_64-linux-gnu/librt-2.23.so
7f77bd05d000-7f77bd05e000 rw-p 00007000 103:05 15503565                  /lib/x86_64-linux-gnu/librt-2.23.so
7f77bd05e000-7f77bd077000 r-xp 00000000 103:05 15501354                  /lib/x86_64-linux-gnu/libz.so.1.2.8
7f77bd077000-7f77bd276000 ---p 00019000 103:05 15501354                  /lib/x86_64-linux-gnu/libz.so.1.2.8
7f77bd276000-7f77bd277000 r--p 00018000 103:05 15501354                  /lib/x86_64-linux-gnu/libz.so.1.2.8
7f77bd277000-7f77bd278000 rw-p 00019000 103:05 15501354                  /lib/x86_64-linux-gnu/libz.so.1.2.8
7f77bd278000-7f77bd287000 r-xp 00000000 103:05 15501162                  /lib/x86_64-linux-gnu/libbz2.so.1.0.4
7f77bd287000-7f77bd486000 ---p 0000f000 103:05 15501162                  /lib/x86_64-linux-gnu/libbz2.so.1.0.4
7f77bd486000-7f77bd487000 r--p 0000e000 103:05 15501162                  /lib/x86_64-linux-gnu/libbz2.so.1.0.4
7f77bd487000-7f77bd488000 rw-p 0000f000 103:05 15501162                  /lib/x86_64-linux-gnu/libbz2.so.1.0.4
7f77bd488000-7f77bd4a9000 r-xp 00000000 103:05 15501230                  /lib/x86_64-linux-gnu/liblzma.so.5.0.0
7f77bd4a9000-7f77bd6a8000 ---p 00021000 103:05 15501230                  /lib/x86_64-linux-gnu/liblzma.so.5.0.0
7f77bd6a8000-7f77bd6a9000 r--p 00020000 103:05 15501230                  /lib/x86_64-linux-gnu/liblzma.so.5.0.0
7f77bd6a9000-7f77bd6aa000 rw-p 00021000 103:05 15501230                  /lib/x86_64-linux-gnu/liblzma.so.5.0.0
7f77bd6aa000-7f77bd718000 r-xp 00000000 103:05 15501292                  /lib/x86_64-linux-gnu/libpcre.so.3.13.2
7f77bd718000-7f77bd918000 ---p 0006e000 103:05 15501292                  /lib/x86_64-linux-gnu/libpcre.so.3.13.2
7f77bd918000-7f77bd919000 r--p 0006e000 103:05 15501292                  /lib/x86_64-linux-gnu/libpcre.so.3.13.2
7f77bd919000-7f77bd91a000 rw-p 0006f000 103:05 15501292                  /lib/x86_64-linux-gnu/libpcre.so.3.13.2
7f77bd91a000-7f77bd957000 r-xp 00000000 103:05 15501314                  /lib/x86_64-linux-gnu/libreadline.so.6.3
7f77bd957000-7f77bdb57000 ---p 0003d000 103:05 15501314                  /lib/x86_64-linux-gnu/libreadline.so.6.3
7f77bdb57000-7f77bdb59000 r--p 0003d000 103:05 15501314                  /lib/x86_64-linux-gnu/libreadline.so.6.3
7f77bdb59000-7f77bdb5f000 rw-p 0003f000 103:05 15501314                  /lib/x86_64-linux-gnu/libreadline.so.6.3
7f77bdb5f000-7f77bdb60000 rw-p 00000000 00:00 0 
7f77bdb60000-7f77bdc68000 r-xp 00000000 103:05 15503590                  /lib/x86_64-linux-gnu/libm-2.23.so
7f77bdc68000-7f77bde67000 ---p 00108000 103:05 15503590                  /lib/x86_64-linux-gnu/libm-2.23.so
7f77bde67000-7f77bde68000 r--p 00107000 103:05 15503590                  /lib/x86_64-linux-gnu/libm-2.23.so
7f77bde68000-7f77bde69000 rw-p 00108000 103:05 15503590                  /lib/x86_64-linux-gnu/libm-2.23.so
7f77bde69000-7f77bdea6000 r-xp 00000000 103:05 22738048                  /usr/lib/atlas-base/atlas/libblas.so.3.0
7f77bdea6000-7f77be0a6000 ---p 0003d000 103:05 22738048                  /usr/lib/atlas-base/atlas/libblas.so.3.0
7f77be0a6000-7f77be0a7000 rw-p 0003d000 103:05 22738048                  /usr/lib/atlas-base/atlas/libblas.so.3.0
7f77be0a7000-7f77be266000 r-xp 00000000 103:05 15503575                  /lib/x86_64-linux-gnu/libc-2.23.so
7f77be266000-7f77be466000 ---p 001bf000 103:05 15503575                  /lib/x86_64-linux-gnu/libc-2.23.so
7f77be466000-7f77be46a000 r--p 001bf000 103:05 15503575                  /lib/x86_64-linux-gnu/libc-2.23.so
7f77be46a000-7f77be46c000 rw-p 001c3000 103:05 15503575                  /lib/x86_64-linux-gnu/libc-2.23.so
7f77be46c000-7f77be470000 rw-p 00000000 00:00 0 
7f77be470000-7f77be488000 r-xp 00000000 103:05 15503592                  /lib/x86_64-linux-gnu/libpthread-2.23.so
7f77be488000-7f77be687000 ---p 00018000 103:05 15503592                  /lib/x86_64-linux-gnu/libpthread-2.23.so
7f77be687000-7f77be688000 r--p 00017000 103:05 15503592                  /lib/x86_64-linux-gnu/libpthread-2.23.so
7f77be688000-7f77be689000 rw-p 00018000 103:05 15503592                  /lib/x86_64-linux-gnu/libpthread-2.23.so
7f77be689000-7f77be68d000 rw-p 00000000 00:00 0 
7f77be68d000-7f77be92d000 r-xp 00000000 103:05 21669201                  /usr/lib/R/lib/libR.so
7f77be92d000-7f77beb2d000 ---p 002a0000 103:05 21669201                  /usr/lib/R/lib/libR.so
7f77beb2d000-7f77beb4a000 r--p 002a0000 103:05 21669201                  /usr/lib/R/lib/libR.so
7f77beb4a000-7f77beb55000 rw-p 002bd000 103:05 21669201                  /usr/lib/R/lib/libR.so
7f77beb55000-7f77beca6000 rw-p 00000000 00:00 0 
7f77beca6000-7f77beccc000 r-xp 00000000 103:05 15503553                  /lib/x86_64-linux-gnu/ld-2.23.so
7f77beccf000-7f77bee9d000 rw-p 00000000 00:00 0 
7f77beec1000-7f77beec2000 rw-p 00000000 00:00 0 
7f77beec2000-7f77beec9000 r--s 00000000 103:05 21543419                  /usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache
7f77beec9000-7f77beecb000 rw-p 00000000 00:00 0 
7f77beecb000-7f77beecc000 r--p 00025000 103:05 15503553                  /lib/x86_64-linux-gnu/ld-2.23.so
7f77beecc000-7f77beecd000 rw-p 00026000 103:05 15503553                  /lib/x86_64-linux-gnu/ld-2.23.so
7f77beecd000-7f77beece000 rw-p 00000000 00:00 0 
7fff58f07000-7fff58f32000 rw-p 00000000 00:00 0                          [stack]
7fff58f5b000-7fff58f5d000 r--p 00000000 00:00 0                          [vvar]
7fff58f5d000-7fff58f5f000 r-xp 00000000 00:00 0                          [vdso]
ffffffffff600000-ffffffffff601000 r-xp 00000000 00:00 0                  [vsyscall]
```


## GeneBreak (1.4.0)
Maintainer: Evert van den Broek <vandenbroek.evert@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
.glmbreak: no visible global function definition for ‘glm’
.glmbreak: no visible global function definition for ‘predict’
addGeneAnnotation,CopyNumberBreakPoints: no visible global function
  definition for ‘head’
bpStats,CopyNumberBreakPoints: no visible global function definition
  for ‘sd’
bpStats,CopyNumberBreakPoints: no visible global function definition
  for ‘p.adjust’
Undefined global functions or variables:
  glm head p.adjust predict sd
Consider adding
  importFrom("stats", "glm", "p.adjust", "predict", "sd")
  importFrom("utils", "head")
to your NAMESPACE file.
```

## googleComputeEngineR (0.1.0)
Maintainer: Mark Edmondson <r@sunholo.com>  
Bug reports: https://github.com/cloudyr/googleComputeEngineR/issues

0 errors | 0 warnings | 0 notes

## MPAgenomics (1.1.2)
Maintainer: Samuel Blanck <samuel.blanck@inria.fr>

0 errors | 0 warnings | 2 notes

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘R.devices’ ‘R.filesets’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’
  ‘aroma.cn’ ‘aroma.core’ ‘aroma.light’ ‘matrixStats’ ‘snowfall’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
Unexported object imported by a ':::' call: ‘cghseg:::segmeanCO’
  See the note in ?`:::` about the use of this operator.

checking R code for possible problems ... NOTE
.varregtimescount: no visible global function definition for ‘var’
CGHSEGaroma: no visible global function definition for ‘read.csv’
CGHSEGaroma : <anonymous>: no visible global function definition for
  ‘points’
CGHSEGaroma : <anonymous>: no visible global function definition for
  ‘lines’
CGHSEGaroma : <anonymous>: no visible global function definition for
  ‘write.table’
CGHcall: no visible global function definition for ‘mad’
... 43 lines ...
tumorboostPlot: no visible global function definition for ‘par’
tumorboostPlot: no visible global function definition for ‘axis’
tumorboostPlot: no visible global function definition for ‘points’
Undefined global functions or variables:
  axis head lines lm mad median optim par points read.csv sd var
  write.table
Consider adding
  importFrom("graphics", "axis", "lines", "par", "points")
  importFrom("stats", "lm", "mad", "median", "optim", "sd", "var")
  importFrom("utils", "head", "read.csv", "write.table")
to your NAMESPACE file.
```

## NSA (0.0.32)
Maintainer: Maria Ortiz-Estevez <mortizest@gmail.com>

0 errors | 0 warnings | 6 notes

```
checking package dependencies ... NOTE
Depends: includes the non-default packages:
  ‘R.methodsS3’ ‘MASS’ ‘matrixStats’ ‘R.oo’ ‘R.utils’ ‘aroma.core’
  ‘aroma.affymetrix’ ‘DNAcopy’
Adding so many packages to the search path is excessive and importing
selectively is preferable.

checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘incl’

checking dependencies in R code ... NOTE
Packages in Depends field not imported from:
  ‘DNAcopy’ ‘MASS’ ‘R.methodsS3’ ‘R.oo’ ‘aroma.affymetrix’ ‘aroma.core’
  ‘matrixStats’
  These packages need to be imported from (in the NAMESPACE file)
  for when this namespace is loaded but not attached.

checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  NSAByTotalAndFracB.matrix allocateOutputDataSets.NSANormalization
  allocateOutputDataSets.SNPsNormalization
  allocateOutputDataSets.SampleNormalization
  as.character.NSANormalization as.character.SNPsNormalization
  as.character.SampleNormalization findArraysTodo.NSANormalization
  findArraysTodo.SampleNormalization findUnitsTodo.SNPsNormalization
  fitNSA.matrix fitNSAcnPs.matrix getDataSets.NSANormalization
  getDataSets.SNPsNormalization getDataSets.SampleNormalization
  getName.NSANormalization getName.SNPsNormalization
  getName.SampleNormalization getOutputDataSets.NSANormalization
  getOutputDataSets.SNPsNormalization
  getOutputDataSets.SampleNormalization getPath.NSANormalization
  getPath.SNPsNormalization getPath.SampleNormalization
  getRootPath.NSANormalization getRootPath.SNPsNormalization
  getRootPath.SampleNormalization process.NSANormalization
  process.SNPsNormalization process.SampleNormalization
  sampleNByTotalAndFracB.numeric snpsNByTotalAndFracB.matrix
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.

checking R code for possible problems ... NOTE
NB: .First.lib is obsolete and will not be used in R >= 3.0.0

.First.lib: no visible global function definition for
  ‘packageDescription’
NSAByTotalAndFracB.matrix: no visible global function definition for
  ‘throw’
NSAByTotalAndFracB.matrix: no visible global function definition for
  ‘str’
NSANormalization: no visible global function definition for ‘throw’
... 279 lines ...
  extractMatrix findUnitsTodo getAsteriskTags getChipType getFile
  getFullName getFullNames getGenomeInformation getName getNames
  getPath getPathname getPathnames getPositions getRam getRootPath
  getTags getUnitsOnChromosome hist median nbrOfFiles newInstance
  packageDescription rowAlls rowMedians segment setTags str throw trim
  verbose
Consider adding
  importFrom("graphics", "hist")
  importFrom("stats", "approxfun", "median")
  importFrom("utils", "packageDescription", "str")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'NSANormalization.Rd':
  \examples lines wider than 100 characters:
     by <- 50e3; # 50kb bins; you may want to try with other amounts of smoothing xOut <- seq(from=xRange[1], to=xRange[2], by=by);
     plot(getSignals(cnCNPS), getSignals(cnSNPS), xlim=Clim, ylim=Clim); abline(a=0, b=1, col="red", lwd=2);

These lines will be truncated in the PDF manual.
```

## pbmcapply (1.1.3)
Maintainer: Kevin kuang <kvn.kuang@mail.utoronto.ca>  
Bug reports: https://github.com/kvnkuang/pbmcapply/issues

0 errors | 0 warnings | 0 notes

## PECA (1.10.0)
Maintainer: Tomi Suomi <tomi.suomi@utu.fi>

0 errors | 0 warnings | 1 note 

```
checking Rd line widths ... NOTE
Rd file 'PECA.Rd':
  \usage lines wider than 90 characters:
     PECA_AffyBatch(affy=NULL, normalize=FALSE, test="t", type="median", paired=FALSE, progress=FALSE)

These lines will be truncated in the PDF manual.
```

## PSCBS (0.62.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/PSCBS/issues

0 errors | 0 warnings | 0 notes

## PureCN (1.2.3)
Maintainer: Markus Riester <markus.riester@novartis.com>

0 errors | 1 warning  | 1 note 

```
checking whether package ‘PureCN’ can be installed ... WARNING
Found the following significant warnings:
  Warning: namespace ‘Matrix’ is not available and has been replaced
See ‘/home/hb/repositories/future/revdep/checks/PureCN.Rcheck/00install.out’ for details.

checking R code for possible problems ... NOTE
Found the following calls to data() loading into the global environment:
File ‘PureCN/R/bootstrapResults.R’:
  data(purecn.example.output)
File ‘PureCN/R/callAlterations.R’:
  data(purecn.example.output)
  data(purecn.example.output)
File ‘PureCN/R/callLOH.R’:
  data(purecn.example.output)
File ‘PureCN/R/createCurationFile.R’:
  data(purecn.example.output)
File ‘PureCN/R/curateResults.R’:
  data(purecn.example.output)
  data(purecn.example.output)
File ‘PureCN/R/plotAbs.R’:
  data(purecn.example.output)
File ‘PureCN/R/predictSomatic.R’:
  data(purecn.example.output)
File ‘PureCN/R/readCurationFile.R’:
  data(purecn.example.output)
See section ‘Good practice’ in ‘?data’.
```

## QDNAseq (1.10.0)
Maintainer: Daoud Sie <d.sie@vumc.nl>  
Bug reports: https://github.com/ccagc/QDNAseq/issues

0 errors | 0 warnings | 0 notes

## Repitools (1.20.0)
Maintainer: Mark Robinson <mark.robinson@imls.uzh.ch>

0 errors | 0 warnings | 2 notes

```
checking R code for possible problems ... NOTE
Found an obsolete/platform-specific call in the following function:
  ‘maskOut’
Found the platform-specific device:
  ‘windows’
dev.new() is the preferred way to open a new device, in the unlikely
event one is needed.
.cpgBoxplots: no visible global function definition for ‘pdf’
.cpgBoxplots: no visible global function definition for ‘par’
.cpgBoxplots: no visible global function definition for ‘dev.off’
... 291 lines ...
  rainbow read.table rect str t.test text title verbose
Consider adding
  importFrom("grDevices", "dev.off", "pdf", "rainbow")
  importFrom("graphics", "abline", "axis", "barplot", "bxp", "grid",
             "layout", "legend", "lines", "matlines", "matplot", "mtext",
             "par", "persp", "plot", "plot.new", "plot.window", "points",
             "polygon", "rect", "text", "title")
  importFrom("stats", "dbeta", "embed", "filter", "kmeans", "lm",
             "lowess", "p.adjust", "predict", "pt", "qnorm", "t.test")
  importFrom("utils", "read.table", "str")
to your NAMESPACE file.

checking Rd line widths ... NOTE
Rd file 'ChromaBlocks.Rd':
  \usage lines wider than 90 characters:
     ChromaBlocks(rs.ip, rs.input, organism, chrs, ipWidth=100, inputWidth=500, preset=NULL, blockWidth=NULL, minBlocks=NULL, extend=NULL, c ... [TRUNCATED]

Rd file 'GCbiasPlots.Rd':
  \usage lines wider than 90 characters:
                 cex = 0.2, pch.col = "black", line.col = "red", lty = 1, lwd = 2, verbose = TRUE)

Rd file 'absoluteCN.Rd':
... 57 lines ...

Rd file 'regionStats.Rd':
  \usage lines wider than 90 characters:
     regionStats(x, design = NULL, maxFDR=0.05, n.perm=5, window=600, mean.trim=.1, min.probes=10, max.gap=500, two.sides=TRUE, ndf, return. ... [TRUNCATED]
     regionStats(x, design = NULL, maxFDR=0.05, n.perm=5, window=600, mean.trim=.1, min.probes=10, max.gap=500, two.sides=TRUE, ind=NULL, re ... [TRUNCATED]

Rd file 'writeWig.Rd':
  \usage lines wider than 90 characters:
     writeWig(rs, seq.len = NULL, design=NULL, sample=20, drop.zero=TRUE, normalize=TRUE, verbose=TRUE)

These lines will be truncated in the PDF manual.
```

## R.filesets (2.10.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/R.filesets/issues

0 errors | 0 warnings | 0 notes

## TIN (1.6.0)
Maintainer: Bjarne Johannessen <bjajoh@rr-research.no>

0 errors | 0 warnings | 2 notes

```
checking top-level files ... NOTE
Non-standard file/directory found at top level:
  ‘doc’

checking R code for possible problems ... NOTE
aberrantExonUsage: no visible global function definition for ‘quantile’
aberrantExonUsage: no visible global function definition for ‘ave’
clusterPlot: no visible global function definition for ‘dist’
clusterPlot: no visible global function definition for ‘hclust’
clusterPlot: no visible global function definition for
  ‘colorRampPalette’
clusterPlot: no visible global function definition for ‘par’
clusterPlot: no visible global function definition for ‘png’
clusterPlot: no visible global function definition for ‘jpeg’
... 50 lines ...
  importFrom("stats", "ave", "dist", "hclust", "median", "quantile")
  importFrom("utils", "data", "read.table")
to your NAMESPACE file.

Found the following assignments to the global environment:
File ‘TIN/R/aberrantExonUsage.R’:
  assign("quantiles", quantiles, envir = .GlobalEnv)
  assign("aberrantExons", aberrantExons, envir = .GlobalEnv)
File ‘TIN/R/correlationPlot.R’:
  assign("randomGeneSetsDist", B, envir = .GlobalEnv)
  assign("traPermutationsDist", L, envir = .GlobalEnv)
```

