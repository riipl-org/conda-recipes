#!/bin/bash
set -e
make guetzli
mkdir -p $PREFIX/bin
cp bin/Release/guetzli $PREFIX/bin/
