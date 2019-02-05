#!/usr/bin/env bash

source "$(dirname $0)/lib/shared.bash";


run_isolation2() {
    make install -s -C ../regress && \
	make install -s && \
       ./pg_isolation2_regress --init-file ../regress/init_file $1
    
    test regression.diffs && cat regression.diffs
}


main() {
    change_to_project_root
    quick_reinstall
    change_to_isolation2_directory

    run_isolation2 $1
}

main "$@"
