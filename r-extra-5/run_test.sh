#!/bin/bash
set -e
for package in $(<$RECIPE_DIR/packages.txt)
do
  $R -e "library('$package')"
done
