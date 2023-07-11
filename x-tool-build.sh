#!/usr/bin/env bash

set -ex

ct-ng olddefconfig
ct-ng build
cd ..
rm -rf build
