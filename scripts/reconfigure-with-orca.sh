echo "Reconfiguring $PWD"

echo "Re-running configure."
./configure --silent CC='ccache gcc -Qunused-arguments' --prefix=${PWD}/gpAux/greenplum-db-devel --with-libxml --with-python --with-perl --enable-mapreduce --enable-debug --enable-cassert CFLAGS=-O0 CPPFLAGS=-O0

