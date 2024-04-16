cd /tmp
# Download OpenCV
wget -q https://github.com/opencv/opencv/archive/4.5.5.zip
unzip -q 4.5.5.zip && rm -rf 4.5.5.zip
# Download aruco module (optional)
wget -q https://github.com/opencv/opencv_contrib/archive/refs/tags/4.5.5.zip -O opencv_contrib-4.5.5.zip
unzip -q opencv_contrib-4.5.5.zip && rm -rf opencv_contrib-4.5.5.zip
mkdir -p extra && mv opencv_contrib-4.5.5/modules/aruco extra
rm -rf opencv_contrib-4.5.5
# Build and install OpenCV
cd opencv-4.5.5
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DBUILD_DOCS=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_JASPER=OFF \
    -DBUILD_OPENEXR=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_PROTOBUF=OFF \
    -DBUILD_opencv_apps=OFF \
    -DBUILD_opencv_dnn=OFF \
    -DBUILD_opencv_ml=OFF \
    -DBUILD_opencv_python_bindings_generator=OFF \
    -DENABLE_CXX11=ON \
    -DENABLE_FAST_MATH=ON \
    -DWITH_EIGEN=ON \
    -DWITH_FFMPEG=ON \
    -DWITH_TBB=ON \
    -DWITH_OPENMP=ON \
    -DOPENCV_EXTRA_MODULES_PATH=/tmp/extra \
    ..
make -j4 && sudo make install