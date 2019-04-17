echo "Reconfiguring gpdb5 for $PWD"

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
	    CFLAGS='-O0' \
	    CXXFLAGS='-O0'

