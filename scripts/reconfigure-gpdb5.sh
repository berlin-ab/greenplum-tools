echo "Reconfiguring gpdb5 for $PWD"

export CC='/usr/local/bin/gcc-9'
export CXX='/usr/local/bin/g++-9'
export CCACHE_BASEDIR="$PWD/.ccache"
export CXXFLAGS='-O0 -g'
export CPPFLAGS='-I/usr/local/include -I/usr/local/opt/openssl/include'
export LDFLAGS="-L/usr/local/opt/openssl/lib -L/usr/local/lib"

echo "Re-running configure."
./configure --silent CC='ccache gcc' \
	    --prefix=${PWD}/gpAux/greenplum-db-devel \
	    --with-libxml \
	    --with-python \
	    --with-perl \
	    --disable-orca \
	    --enable-gpfdist \
	    --enable-mapreduce \
	    --enable-debug \
	    --enable-cassert \
	    --enable-tap-tests \
	    --enable-depend \
	    "$@"
