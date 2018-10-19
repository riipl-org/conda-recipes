#!/bin/bash
set -e
for package in $(<$RECIPE_DIR/packages.txt)
do
  $R -e "install.packages('$package', repos='https://cran.cnr.berkeley.edu/')"
done
