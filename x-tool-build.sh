#!/usr/bin/env bash

set -ex

cd build
ct-ng olddefconfig
ct-ng build
cd ..
rm -rf build
