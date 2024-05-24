#!/bin/bash

ROOT=$(cd "$(dirname "$0")";pwd)
PREFIX=${ROOT}/install
CROSS_COMPILE=0

if [ $CROSS_COMPILE -eq 1 ]; then
echo "not support cross compile now"
exit
else
cd ${ROOT}/FFmpeg
./configure --prefix=${PREFIX}  --disable-all --enable-small --disable-x86asm \
--enable-avcodec \
--enable-avformat \
--enable-avfilter
make
make install
cd ${ROOT}
fi