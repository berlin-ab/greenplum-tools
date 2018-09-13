echo "Reinstalling $PWD"

echo "Re-running configure."
./configure --silent CC='ccache gcc -Qunused-arguments' --prefix=${PWD}/gpAux/greenplum-db-devel --disable-orca --with-libxml --with-python --with-perl --enable-mapreduce --enable-debug --enable-cassert CFLAGS=-O0 CPPFLAGS=-O0

echo "Make and install"
make clean -s && bear make -j6 -s && make install -s

