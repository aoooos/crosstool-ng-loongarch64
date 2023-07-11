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
ct-ng olddefconfig
ct-ng build
cd ..
rm -rf build
