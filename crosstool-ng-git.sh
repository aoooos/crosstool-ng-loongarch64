#!/bin/sh
set -ex

URL=https://github.com/crosstool-ng/crosstool-ng
REV=943364711a650d9b9e84c1b42c91cc0265b6ab5c

if [ ! -d "crosstool-ng" ]; then
    mkdir "crosstool-ng"
    echo "Created directory 'crosstool-ng'"
else
    rm -rf crosstool-ng
    mkdir crosstool-ng
fi

cd crosstool-ng
git init
git fetch --depth=1 ${URL} ${REV}
git reset --hard FETCH_HEAD
./bootstrap
./configure --prefix=/usr/local
make -j$(nproc)
make install
cd ..
rm -rf crosstool-ng
