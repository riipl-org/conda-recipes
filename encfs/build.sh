#!/bin/bash
set -e

mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make install
