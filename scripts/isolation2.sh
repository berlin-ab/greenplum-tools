#!/usr/bin/env bash

make install -s -C ../regress && \
    make install -s && \
    ./pg_isolation2_regress --init-file ../regress/init_file $1

cat regression.diffs
