#!/bin/sh
apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
  automake \
  bison \
  bzip2 \
  ca-certificates \
  cmake \
  curl \
  file \
  flex \
  g++ \
  gawk \
  gdb \
  git \
  gperf \
  help2man \
  libncurses-dev \
  libssl-dev \
  libtool-bin \
  make \
  ninja-build \
  patch \
  pkg-config \
  python3 \
  rsync \
  sudo \
  texinfo \
  unzip \
  wget \
  xz-utils


required_version="2.71"
installed_version=$(autoconf --version | awk 'NR==1{print $NF}')

# 使用dpkg的--compare-versions选项来比较版本号
if dpkg --compare-versions "$installed_version" "ge" "$required_version"; then
    echo "autoconf is higher than $required_version"
else
    wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.xz
    tar xvf autoconf-2.71.tar.xz
    cd autoconf-2.71
    ./configure
    make -j$(nproc)
    make install
    cd ..
    rm -rf autoconf-2.71
    rm autoconf-2.71.tar.xz
fi

