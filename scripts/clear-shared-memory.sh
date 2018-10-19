#!/usr/bin/env bash

for id in `ipcs -s | grep staff | awk '{print $2}'`; do ipcrm -s $id; done
for memid in `ipcs -m | grep staff | grep -v '0x00000000' | awk '{print $2}'`; do ipcrm -m $memid; done
