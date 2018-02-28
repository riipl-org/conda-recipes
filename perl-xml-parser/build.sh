#!/bin/bash
set -e
perl Makefile.PL EXPATLIBPATH=$PREFIX/lib EXPATINCPATH=$PREFIX/include INSTALLDIRS=site CC=$CC
make
make install
