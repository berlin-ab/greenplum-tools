#!/usr/bin/env bash

function build {
    make install -s
}

function restart {
    gpstop -ra
}

function main {
    echo "Rebuilding gpdb." && \
	build && \
	echo "Restarting gpdb." && \
	restart
}

main
