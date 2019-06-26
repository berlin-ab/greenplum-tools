#!/usr/bin/env bash

set -e;


source "$(dirname $0)/lib/shared.bash";


REGRESSION_FILE_NAME=$@


function switch_to_regression_directory {
    change_to_project_root
    cd src/test/regress;
}


function run_regression_test {    
    quick_reinstall && \
	./pg_regress --init-file init_file \
		     --load-extension=gp_inject_fault \
		     $REGRESSION_FILE_NAME
}


function show_output {
    test -e regression.diffs && \
	cat regression.diffs
}


function main {
    switch_to_regression_directory
    run_regression_test "$@"
    show_output
}


main "$@"
