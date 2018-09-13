echo "Reinstalling $PWD"

echo "Make and install"
make clean -s && bear make -j6 -s && make install -s

