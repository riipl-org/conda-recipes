#!/bin/bash
# Fix shebangs
for f in tests/selftest.pl.in; do
  sed -i.bak -e 's|^#!@PERL@ -w|#!/usr/bin/env perl|' "$f"
  rm -f "$f.bak"
done
./configure --prefix=$PREFIX PERL='/usr/bin/env perl'
make
make check
make install
