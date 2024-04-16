# Install stella_vslam core library
mkdir -p ~/lib
cd ~/lib
git clone --recursive https://github.com/stella-cv/stella_vslam.git
cd stella_vslam
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
make -j4
sudo make install

# When building with support for PangolinViewer
cd ~/lib
git clone -b 0.0.1 --recursive https://github.com/stella-cv/pangolin_viewer.git
mkdir -p pangolin_viewer/build
cd pangolin_viewer/build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
make -j
sudo make install

# When building with support for SocketViewer
cd ~/lib
git clone -b 0.0.1 --recursive https://github.com/stella-cv/socket_publisher.git
mkdir -p socket_publisher/build
cd socket_publisher/build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
make -j
sudo make install

# Install stella_vslam executables
cd ~/lib
git clone -b 0.0.1 --recursive https://github.com/stella-cv/stella_vslam_examples.git
mkdir -p stella_vslam_examples/build
cd stella_vslam_examples/build
cmake \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DUSE_STACK_TRACE_LOGGER=ON \
    ..
make -j
