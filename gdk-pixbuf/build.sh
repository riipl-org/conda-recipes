#!/bin/bash
set -e
export CPATH=$PREFIX/include
export LD_RUN_PATH=$PREFIX/lib
export LD_LIBRARY_PATH=$PREFIX/lib
./configure --prefix=$PREFIX
make
make install
