# Setup

## Platform

|setting  |value                                       |
|:--------|:-------------------------------------------|
|version  |R version 3.3.1 Patched (2016-10-03 r71443) |
|system   |x86_64, linux-gnu                           |
|ui       |X11                                         |
|language |en                                          |
|collate  |C                                           |
|tz       |NA                                          |
|date     |2016-10-05                                  |

## Packages

|package  |*  |version    |date       |source                            |
|:--------|:--|:----------|:----------|:---------------------------------|
|R.rsp    |   |0.30.0     |2016-05-15 |cran (@0.30.0)                    |
|digest   |   |0.6.10     |2016-08-02 |cran (@0.6.10)                    |
|future   |   |1.0.1-9000 |2016-10-05 |local (HenrikBengtsson/future@NA) |
|globals  |   |0.7.0      |2016-09-09 |cran (@0.7.0)                     |
|listenv  |   |0.6.0      |2015-12-28 |cran (@0.6.0)                     |
|markdown |   |0.7.7      |2015-04-22 |cran (@0.7.7)                     |

# Check results
1 packages with problems

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


	Information: The program will take advantage of 21 CPUs from total 64
	If you would like to change this please cancel and set explicitly the argument 'ncpus'


Error in .check_ncores(cores) : 21 simultaneous processes spawned
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

