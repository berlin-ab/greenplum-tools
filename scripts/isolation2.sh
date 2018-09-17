#!/usr/bin/env bash

./pg_isolation2_regress --init-file ../regress/init_file $1
cat regression.diffs
