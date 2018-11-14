#!/usr/bin/env bash

psql -c 'select version();' --expanded --tuples-only
