#!/bin/bash
set -e
./configure --prefix=$PREFIX --disable-static
make
make install
