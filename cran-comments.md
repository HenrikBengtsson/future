# CRAN submission future 1.5.0

on 2017-05-23

I've verified that this submission causes no issues for any of the 24 reverse (recursive) package dependencies available on CRAN and Bioconductor.

Thanks in advance


## Resubmission #1

on 2017-05-24

On Tue, May 23, 2017 at 3:23 PM, Uwe Ligges wrote:
> Henrik, thanks, we see:
>
>
> ** running tests for
  arch 'i386' ... [11m] OK
>
> So 11 minutes for one architecture? Can you halve this?
> Otherwise I will disable daily tests at least on winbuilder.

Hi Uwe.

I've done a major cleanup of the tests cutting down the processing time to ~60% on Linux & macOS (looks like ~75% on win-builder). If the current speed up is not enough and if it is alright with you / CRAN, then please disable daily tests - it would really help me.

To speed it up further would require major rewriting in order to penalize the test coverage.  This is already on my agenda (*), but that is major work (weeks), so I'd prefer to push the current submission forward without having to go down that path right now.

Thanks

Henrik

(*) It's my intention to create a future.tests package that will host a standard set of tests that the packages future, future.BatchJobs, ... can re-use to validate that their parallel backends meet the Future API requirements.


## Resubmission #2

on 2017-05-25

On Thu, May 25, 2017 at 1:19 AM, Kurt Hornik <Kurt.Hornik@wu.ac.at> wrote:
>>>>>> Henrik Bengtsson writes:
>
> Checking the reverse depends gives
>
> Package: PSCBS
> Check: tests
> New result: ERROR
[...]
> Package: fiery
> Check: tests
> New result: ERROR
[...]
> Package: future.BatchJobs
> Check: tests
> New result: ERROR
[..]
> Is this "known"?  Did you inform the maintainers?
>
> -k

Hi Kurt,

I'm really sorry about this noise - it should not have happened - thanks for catching it.  I did indeed run full reverse-package dependency checks but due to an external bug (*) the check ERRORs were not propagated.  I can reproduce it locally and I've fixed the error.  With the revised version, all reverse packages now pass the checks.

Thanks

Henrik

(*) Bug in devtools::revdep_check() (https://github.com/hadley/devtools/issues/1519)


### R CMD check --as-cran validation

The package has been verified using `R CMD check --as-cran` on:

* Platform x86_64-apple-darwin13.4.0 (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.0 (2017-04-21)
  
* Platform x86_64-unknown-linux-gnu (64-bit) [Travis CI]:
  - R version 3.3.3 (2017-03-06)
  - R version 3.4.0 (2017-04-21)
  - R Under development (unstable) (2017-05-25 r72739)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R version 3.4.0 (2017-04-21)
  - R Under development (unstable) (2017-05-22 r72717)

* Platform x86_64-pc-linux-gnu (64-bit):
  - R version 3.1.2 (2014-10-31)
  - R version 3.2.5 (2016-04-14)
  - R version 3.3.0 (2016-05-03)
  - R version 3.4.0 (2017-04-21)

* Platform i686-pc-linux-gnu (32-bit):
  - R version 3.4.0 (2017-04-21)

* Platform i386-w64-mingw32 (32-bit) [Appveyor CI]:
  - R Under development (unstable) (2017-05-20 r72713)

* Platform x86_64-w64-mingw32/x64 (64-bit) [Appveyor CI]:
  - R version 3.3.3 (2017-03-06)
  - R Under development (unstable) (2017-05-20 r72713)

* Platform x86_64-pc-linux-gnu (64-bit) [r-hub]:
  - R Under development (unstable) (2017-03-10 r72327)

* Platform x86_64-w64-mingw32/x64 (64-bit) [win-builder]:
  - R version 3.4.0 (2017-04-21)
  - R Under development (unstable) (2017-05-24 r72734)
