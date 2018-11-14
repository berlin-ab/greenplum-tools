#!/usr/bin/env bash

pg_ctl -D $PWD/postgresql-dev-data -l postgresql.log start
