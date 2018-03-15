#!/bin/bash
set -e

export CFLAGS="$CFLAGS -L/usr/lib64 -Wl,-L/usr/lib64"
export LD_LIBRARY_PATH=/usr/lib64

./configure --prefix=$PREFIX \
            --enable-tools=yes \
            --enable-pixbuf-loader=yes \
            --enable-introspection=no \
            --enable-gtk-doc=no
make
make install
