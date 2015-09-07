#################################################################
# Test coverage
#
# * covr-utils: https://github.com/HenrikBengtsson/covr-utils
# * covr: https://github.com/jimhester/covr
# * Coveralls: https://coveralls.io/
#
# Henrik Bengtsson
#################################################################
if (!file_test("-f", "covr-utils.R")) {
  source("http://callr.org/install#R.utils[u]")
  R.utils::downloadFile("https://raw.githubusercontent.com/HenrikBengtsson/covr-utils/master/covr-utils.R")
}

source("covr-utils.R")

# Exclusion rules
excl <- exclusions(
  filter(r_files(), covr_lines), # Apply 'covr:' rules in source code
  filter(r_files(), stop_lines)  # Skip lines with stop().
)
str(excl)

# Run through tests, record source code coverage, and
# publish to Coveralls
covr <- covr_package(exclusions=excl, quiet=FALSE)
