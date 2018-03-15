#!/bin/bash
set -e

export ORACLE_HOME=/usr/lib/oracle/12.1/client64

python setup.py install --single-version-externally-managed --record=record.txt
