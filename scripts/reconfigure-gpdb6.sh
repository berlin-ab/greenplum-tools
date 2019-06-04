echo "Reconfiguring $PWD"

echo "Re-running configure."
./configure --silent CC='ccache gcc' \
	    --prefix=${PWD}/gpAux/greenplum-db-devel \
	    --with-libxml \
	    --with-python \
	    --with-perl \
	    --without-zstd \
	    --disable-orca \
	    --disable-gpfdist \
	    --with-openssl \
	    --enable-tap-tests \
	    --enable-debug-extensions \
	    --enable-debug \
	    --enable-cassert \
	    --enable-tap-tests \
	    --enable-depend \
	    CFLAGS='-O0' \
	    CXXFLAGS='-O0'

