# Notes

## Setup

```r
> options(Ncpus = 6L)
> install.packages("remotes")
> remotes::install_github("r-lib/revdepcheck")
```

```sh
## Used by R itself
$ revdep/run.R --preinstall RCurl XML
```


## Pre-installation

In order to run these checks successfully on a machine _without internet
access_, make sure to first populate the 'crancache' cache by pre-installing
all packages to be tested plus a few more.

```sh
$ scl enable devtoolset-4 "revdep/run.R --preinstall blavaan"

## All packages to be tested
$ revdep/run.R --preinstall-children
```


## Testing

### Package that requires Internet

The following packages will fail when tested in 'offline' mode because
their examples or tests require a working internet connection:

* BatchGetSymbols
* datapackage.r
* GetBCBData
* GSODR
* hackeRnews
* iml
* tableschema.r
* tsfeatures
