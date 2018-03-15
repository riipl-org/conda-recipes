#!/bin/bash
set -e

export CFLAGS=$CFLAGS" -I$PREFIX/include -L$PREFIX/lib"

./configure                 \
    --prefix=$PREFIX        \
    --disable-glitz         \
    --disable-gobject       \
    --disable-gtk-doc       \
    --disable-static        \
    --disable-xcb           \
    --disable-xlib          \
    --enable-ft             \
    --enable-ps             \
    --enable-pdf            \
    --enable-svg            \

make install
