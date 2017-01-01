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

2 packages with problems

|package          |version | errors| warnings| notes|
|:----------------|:-------|------:|--------:|-----:|
|future.BatchJobs |0.13.1  |      1|        0|     0|
|PureCN           |1.2.3   |      0|        1|     1|

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

