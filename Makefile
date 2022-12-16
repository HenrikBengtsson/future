include .make/Makefile

vignettes/future-1-overview.md.rsp: inst/vignettes-static/future-1-overview.md.rsp.rsp
	$(CD) $(@D); \
	$(R_SCRIPT) -e "R.rsp::rfile" ../$< --postprocess=FALSE
	$(RM) README.md
	$(MAKE) README.md

vignettes: vignettes/future-1-overview.md.rsp

spelling:
	$(R_SCRIPT) -e "spelling::spell_check_package()"
	$(R_SCRIPT) -e "spelling::spell_check_files(c('NEWS.md', 'inst/vignettes-static/future-1-overview.md.rsp.rsp', dir('vignettes', pattern='[.]rsp$$', full.names=TRUE)), ignore=readLines('inst/WORDLIST', warn=FALSE))"

future.tests/%:
	$(R_SCRIPT) -e "future.tests::check" --args --test-plan=$*

future.tests: future.tests/sequential future.tests/multicore future.tests/multisession future.tests/cluster
