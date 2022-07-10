source("incl/start,load-only.R")

message("*** RNG ...")

set_random_seed(seed = NULL)
seed <- get_random_seed()
stopifnot(is.null(seed))

set_random_seed(seed = 42L)
seed <- get_random_seed()
stopifnot(identical(seed, 42L))

res <- tryCatch({
  seed <- as_lecyer_cmrg_seed(seed = FALSE)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

seed <- as_lecyer_cmrg_seed(seed = 42L)
str(seed)
stopifnot(is_lecyer_cmrg_seed(seed))
set_random_seed(seed = seed)
stopifnot(identical(get_random_seed(), seed))

seed2 <- as_lecyer_cmrg_seed(seed = TRUE)
str(seed2)
stopifnot(identical(seed2, seed))

seed3 <- as_lecyer_cmrg_seed(seed = seed)
str(seed3)
stopifnot(identical(seed3, seed))

## A random seed
seed4 <- as_lecyer_cmrg_seed(seed = NA)
str(seed4)
stopifnot(is_lecyer_cmrg_seed(seed4))


message(" - make_rng_seeds ...")

seeds <- make_rng_seeds(2L, seed = NULL)
stopifnot(is.null(seeds))

seeds <- make_rng_seeds(2L, seed = FALSE)
stopifnot(is.null(seeds))

seeds <- make_rng_seeds(0L, seed = 42L)
stopifnot(length(seeds) == 0L, identical(seeds, list()))

seeds <- make_rng_seeds(2L, seed = TRUE)
stopifnot(length(seeds) == 2L, all(sapply(seeds, FUN = is_lecyer_cmrg_seed)))

seeds <- make_rng_seeds(3L, seed = 42L)
stopifnot(length(seeds) == 3L, all(sapply(seeds, FUN = is_lecyer_cmrg_seed)))

seeds <- make_rng_seeds(1L, seed = 42L)
stopifnot(length(seeds) == 1L, all(sapply(seeds, FUN = is_lecyer_cmrg_seed)))

seeds0 <- lapply(1:3, FUN = as_lecyer_cmrg_seed)
seeds <- make_rng_seeds(length(seeds0), seed = seeds0)
stopifnot(length(seeds) == length(seeds0),
          all(sapply(seeds, FUN = is_lecyer_cmrg_seed)))


message(" - exceptions ...")

## Invalid L'Ecuyer seed
seed_invalid <- seed + 1L
res <- tryCatch({
  seed <- as_lecyer_cmrg_seed(seed = seed_invalid)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

## Invalid seed
res <- tryCatch({
  seed <- as_lecyer_cmrg_seed(seed = 1:2)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

## Invalid length
seeds0 <- lapply(1:2, FUN = as_lecyer_cmrg_seed)
res <- tryCatch({
  seeds <- make_rng_seeds(1L, seed = seeds0)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

## Seeds of different kinds
seeds0 <- lapply(1:2, FUN = as_lecyer_cmrg_seed)
seeds0[[1]] <- seeds0[[1]][-1]
res <- tryCatch({
  seeds <- make_rng_seeds(2L, seed = seeds0)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

## List of scalar seeds?
res <- tryCatch({
  seeds <- make_rng_seeds(1L, seed = list(42L))
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

## Not seeds at all?
seeds0 <- lapply(1:2, FUN = as_lecyer_cmrg_seed)
seeds0[[1]] <- letters[1:7]
res <- tryCatch({
  seeds <- make_rng_seeds(2L, seed = seeds0)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))

## Invalid seeds?
seeds0 <- lapply(1:2, FUN = as_lecyer_cmrg_seed)
seeds0 <- lapply(seeds0, FUN = rev)
res <- tryCatch({
  seeds <- make_rng_seeds(2L, seed = seeds0)
}, error = identity)
print(res)
stopifnot(inherits(res, "error"))


message(" - replicated RNG draws")
library(future.mapreduce)

seed_org <- next_random_seed()
set.seed(42)

## Draw two random number from 1:100 one after the other
seed_before <- get_random_seed()
kind_before <- RNGkind()
x <- sample.int(100L, size = 5L)
y <- sample.int(100L, size = 5L)
seed_after <- get_random_seed()
kind_after <- RNGkind()
print(c(x, y))

## Draw two random number from 1:100 at once
set_random_seed(seed_before)
kind_before2 <- RNGkind()
z <- sample.int(100L, size = 10L)
seed_after2 <- get_random_seed()
kind_after2 <- RNGkind()
print(z)

## The RNG state is the same after the second ...
## run as after the first, two-step, approach
stopifnot(identical(seed_after2, seed_after))
stopifnot(identical(kind_before2, kind_before))
stopifnot(identical(kind_after2, kind_after))

## .... and the exact same set of random numbers where
## drawn [only true in R (>= 4.0.0)]
if (getRversion() >= "4.0.0") {
  stopifnot(identical(z, c(x, y)))
} else {
  stopifnot(identical(z[seq_along(x)], x))
}

set_random_seed(seed_org)
stopifnot(identical(get_random_seed(), seed_org))

message("*** RNG ... DONE")

source("incl/end.R")
