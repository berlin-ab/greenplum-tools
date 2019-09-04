echo "Reconfiguring $PWD"


echo "Re-running configure."
./configure \
            CC='ccache gcc' \
	    --prefix=${PWD}/gpAux/greenplum-db-devel \
	    --with-libxml \
	    --with-python \
	    --with-perl \
	    --with-zstd \
	    --disable-gpfdist \
	    --with-openssl \
	    --enable-tap-tests \
	    --enable-debug-extensions \
	    --enable-debug \
	    --enable-cassert \
	    --enable-tap-tests \
	    --enable-depend \
	    "$@" \
	    CXXFLAGS='-O0 -g -I /usr/local/include' \
	    CPPFLAGS='-I /usr/local/include -I /usr/local/opt/openssl/include' \
	    LDFLAGS='-L /usr/local/opt/openssl/lib -L /usr/local/lib'
	    
