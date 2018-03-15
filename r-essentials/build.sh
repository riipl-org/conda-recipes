#!/bin/bash
set -e

mkdir -p $PREFIX/bin
ln -s $CC $PREFIX/bin/gcc
ln -s $CXX $PREFIX/bin/g++

for package in $(<$RECIPE_DIR/packages.txt)
do
  $R -e "install.packages('$package', repos='file:///cran/latest')"
done

rm $PREFIX/bin/gcc $PREFIX/bin/g++
