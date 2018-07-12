#!/bin/bash
set -e

$PYTHON setup.py install --single-version-externally-managed --record=record.txt

ACTIVATE_DIR=$PREFIX/etc/conda/activate.d
DEACTIVATE_DIR=$PREFIX/etc/conda/deactivate.d
mkdir -p $ACTIVATE_DIR
mkdir -p $DEACTIVATE_DIR
cp $RECIPE_DIR/activate.sh $ACTIVATE_DIR/activate-${PKG_NAME}.sh
cp $RECIPE_DIR/deactivate.sh $DEACTIVATE_DIR/deactivate-${PKG_NAME}.sh
