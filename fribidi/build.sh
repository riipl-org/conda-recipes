#!/bin/bash
set -e
mkdir -p $PREFIX/bin
ln -s $CC $PREFIX/bin/gcc
export PATH=$PREFIX/bin:$PATH
./configure --prefix=$PREFIX
make
make install
rm $PREFIX/bin/gcc
