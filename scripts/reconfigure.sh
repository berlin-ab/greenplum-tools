echo "Reconfiguring $PWD"

export CC='ccache /usr/local/bin/gcc-9'
export CXX='ccache /usr/local/bin/g++-9'
export CXXFLAGS='-O0 -g -I/usr/local/include'
export CPPFLAGS='-I/usr/local/include -I/usr/local/opt/openssl/include'
export CCACHE_BASEDIR="$PWD/.ccache"
export LDFLAGS='-L/usr/local/opt/openssl/lib -L/usr/local/lib'
export PG_SYSROOT
PG_SYSROOT=`xcrun --show-sdk-path`

echo "Re-running configure."
./configure --prefix=${PWD}/gpAux/greenplum-db-devel \
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
	"$@"
