cd /tmp
git clone https://github.com/bombela/backward-cpp.git
cd backward-cpp
git checkout 5ffb2c879ebdbea3bdb8477c671e32b1c984beaa
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make -j4 && sudo make install