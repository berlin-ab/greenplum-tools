#!/usr/bin/env bash


change_to_project_root() {
  local project_root=$(git rev-parse --show-toplevel);
  pushd "$project_root";
}


change_to_isolation2_directory() {
    pushd "src/test/isolation2"
}


quick_reinstall() {
    make install -s
}


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
    case 
    run_isolation2 $1
}

main "$@"
