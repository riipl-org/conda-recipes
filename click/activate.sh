#!/bin/bash

# Store existing env vars
if [[ -n "$LANG" ]]; then
    export _CONDA_SET_LANG=$LANG
fi
if [[ -n "$LC_ALL" ]]; then
    export _CONDA_SET_LC_ALL=$LC_ALL
fi

export LANG=en_US.utf8
export LC_ALL=en_US.utf8
