#!/bin/bash
set -e

export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib

for package in $(<$RECIPE_DIR/packages.txt)
do
  $R -e "library('$package')"
done
