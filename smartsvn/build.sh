#!/bin/bash

SMARTSVN_HOME=$PREFIX/opt/smartsvn-$PKG_VERSION

mkdir -p $PREFIX/bin
mkdir -p $SMARTSVN_HOME

cp -R * $SMARTSVN_HOME/

cd $PREFIX/bin
ln -s $SMARTSVN_HOME/bin/smartsvn.sh smartsvn
