#!/bin/bash
set -e

export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:/usr/lib64/pkgconfig:/usr/share/pkgconfig

./configure --prefix=$PREFIX --disable-introspection --disable-static
make
make install

rm -rf $PREFIX/share/gtk-doc
