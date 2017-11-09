#!/bin/bash
tar -xf jsl-0.3.0-src.tar.gz
cd jsl-0.3.0/src
make -f Makefile.ref
# binary is in LinuxALLDBG.OBJ
