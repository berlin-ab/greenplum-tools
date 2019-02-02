echo "Reconfiguring $PWD"

echo "Re-running configure."
./configure --silent CC='ccache gcc' --prefix=${PWD}/gpAux/greenplum-db-devel --disable-orca --with-libxml --with-python --with-perl --enable-mapreduce --enable-debug --enable-cassert --enable-tap-tests CFLAGS=-O0 CPPFLAGS=-O0

