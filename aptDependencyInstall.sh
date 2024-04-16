# DEPENDENCY INSTALL START
# You must run this with sudo

apt update -y
apt upgrade -y --no-install-recommends
# basic dependencies
apt install -y build-essential pkg-config cmake git wget curl unzip
# g2o dependencies
apt install -y libatlas-base-dev libsuitesparse-dev
# OpenCV dependencies
apt install -y libgtk-3-dev ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavresample-dev libtbb-dev
# eigen dependencies
apt install -y gfortran
# backward-cpp dependencies (optional)
apt install -y binutils-dev
# other dependencies
apt install -y libyaml-cpp-dev libgflags-dev sqlite3 libsqlite3-dev

# (if you plan on using PangolinViewer)
# Pangolin dependencies
apt install -y libglew-dev

# (if you plan on using SocketViewer)
# Protobuf dependencies
apt install -y autogen autoconf libtool
# Node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install -y nodejs
