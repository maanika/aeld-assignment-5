#!/bin/sh

if [ -d buildroot ]; then
    make -C buildroot distclean
else
    echo "ERROR: no buildroot directory found"
fi

