# The current RNG kind
okind <- RNGkind()
oseed <- globalenv()$.Random.seed

# (a) A L'Ecuyer-CMRG seed based on a numeric-scalar seed
seed1 <- future:::as_lecyer_cmrg_seed(42)
str(seed1)
## int [1:7] 10407 -2133391687 507561766 1260545903 1362917092 -1772566379 -1344458670
# The RNG kind and the RNG state is preserved
stopifnot(
  future:::is_lecyer_cmrg_seed(seed1),
  identical(RNGkind(), okind),
  identical(globalenv()$.Random.seed, oseed)
)

# (b) A L'Ecuyer-CMRG seed based on a L'Ecuyer-CMRG seed
seed2 <- future:::as_lecyer_cmrg_seed(seed1)
str(seed2)
## int [1:7] 10407 -2133391687 507561766 1260545903 1362917092 -1772566379 -1344458670
# The input L'Ecuyer-CMRG seed is returned as-is
stopifnot(identical(seed2, seed1))
# The RNG kind and the RNG state is preserved
stopifnot(
  future:::is_lecyer_cmrg_seed(seed2),
  identical(RNGkind(), okind),
  identical(globalenv()$.Random.seed, oseed)
)

# (c) A L'Ecuyer-CMRG seed based on the current RNG state
seed3 <- future:::as_lecyer_cmrg_seed(TRUE)
str(seed3)
## int [1:7] 10407 495333909 -1491719214 416071979 49340016 1956499377 899435966
stopifnot(future:::is_lecyer_cmrg_seed(seed3))


# All of the above calls preserve the RNG state including the RNG kind
stopifnot(
  identical(RNGkind(), okind),
  identical(globalenv()$.Random.seed, oseed)
)
