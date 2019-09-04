#!/usr/bin/env bash


set -e


source "$(dirname $0)/lib/shared.bash";


run_isolation2() {
	make install -s -C ../regress
	make install -s

   ./pg_isolation2_regress \
		--tablespace-dir=/tmp/tablespace-dir \
		--init-file ../regress/init_file \
		$@
}


main() {
    change_to_project_root
    quick_reinstall
    change_to_isolation2_directory

    run_isolation2 "$@"
}

main "$@"
