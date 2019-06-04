echo "Reconfiguring gpdb4 for $PWD"

echo "Re-running configure."
./configure --silent CC='ccache gcc' \
	    --prefix=${PWD}/gpAux/greenplum-db-devel \
	    --with-libxml \
	    --with-python \
	    --with-perl \
	    --disable-orca \
	    --disable-gpfdist \
	    --enable-debug \
	    --enable-cassert \
	    --enable-tap-tests \
	    --enable-depend \
	    CFLAGS='-O0' \
	    CXXFLAGS='-O0'

