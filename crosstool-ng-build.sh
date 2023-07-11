#!/usr/bin/env bash

set -ex

#!/bin/bash

if [ ! -d "build" ]; then
    mkdir "build"
    echo "Created directory 'build'"
else
    echo "Directory 'build' already exists. Skipping creation."
fi

cd build
cp ../loongarch64-unknown-linux-gnu.defconfig .config
