#!/bin/bash
# Restore previous env vars if they were set

unset LANG
if [[ -n "$_CONDA_SET_LANG" ]]; then
    export LANG=$_CONDA_SET_LANG
    unset _CONDA_SET_LANG
fi

unset LC_ALL
if [[ -n "$_CONDA_SET_LC_ALL" ]]; then
    export LC_ALL=$_CONDA_SET_LC_ALL
    unset _CONDA_SET_LC_ALL
fi
