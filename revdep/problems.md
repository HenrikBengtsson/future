# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.1 (2016-06-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |en                           |
|collate  |C                            |
|tz       |NA                           |
|date     |2016-09-08                   |

## Packages

|package  |*  |version    |date       |source                                   |
|:--------|:--|:----------|:----------|:----------------------------------------|
|R.rsp    |   |0.30.0     |2016-05-15 |cran (@0.30.0)                           |
|digest   |   |0.6.10     |2016-08-02 |cran (@0.6.10)                           |
|future   |   |1.0.1-9000 |2016-09-08 |local (HenrikBengtsson/future@NA)        |
|globals  |   |0.6.1-9000 |2016-09-08 |Github (HenrikBengtsson/globals@e3ec0b6) |
|listenv  |   |0.6.0      |2015-12-28 |cran (@0.6.0)                            |
|markdown |   |0.7.7      |2015-04-22 |cran (@0.7.7)                            |

# Check results
2 packages with problems

## Repitools (1.18.2)
Maintainer: Mark Robinson <mark.robinson@imls.uzh.ch>

1 error  | 0 warnings | 2 notes

```
checking examples ... ERROR
Running examples in 'Repitools-Ex.R' failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: empBayes
> ### Title: Function to calculate prior parameters using empirical Bayes.
> ### Aliases: empBayes
> ### Keywords: programming
> 
... 49 lines ...

Offset is determined for sample of interest: 2


	Information: The program will take advantage of 4 CPUs from total 12
	If you would like to change this please cancel and set explicitly the argument 'ncpus'


Error in .check_ncores(cores) : 4 simultaneous processes spawned
Calls: empBayes -> mclapply -> .check_ncores
Execution halted

checking R code for possible problems ... NOTE
Found an obsolete/platform-specific call in the following function:
  'maskOut'
Found the platform-specific device:
  'windows'
dev.new() is the preferred way to open a new device, in the unlikely
event one is needed.
.cpgBoxplots: no visible global function definition for 'pdf'
.cpgBoxplots: no visible global function definition for 'par'
.cpgBoxplots: no visible global function definition for 'dev.off'
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

## future.BatchJobs (0.13.0)
Maintainer: Henrik Bengtsson <henrikb@braju.com>  
Bug reports: https://github.com/HenrikBengtsson/future.BatchJobs/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in 'tests/batchjobs_multicore.R' failed.
Last 13 lines of output:
    ..$ submitJob        :function (conf, reg, job.name, rscript, log.file, job.dir, resources, arrayjobs)  
    ..$ killJob          :function (conf, reg, batch.job.id)  
    ..$ listJobs         :function (conf, reg)  
    ..$ getArrayEnvirName:function ()  
    ..- attr(*, "class")= chr "ClusterFunctions"
  Saving conf: /cbc/henrik/repositories/future/revdep/checks/future.BatchJobs.Rcheck/tests/.future/20160908_101259-v6M5mN/BatchJobs_1024245508-files/conf.RData
  Submitting 1 chunks / 1 jobs.
  Cluster functions: Multicore.
  Auto-mailer settings: start=none, done=none, error=none.
  Writing 1 R scripts...
  
  SubmitJobs |+                                                |   0% (00:00:00)
  SubmitJobs |+                                                |   0% (00:00:00)
```

