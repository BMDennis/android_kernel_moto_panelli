#!/bin/bash

#Dhiraj

#Compile kernel with a build script to make things simple

git clone https://github.com/DhirajSurvase/GCC_4.8 toolchain

mkdir -p out

#export USE_CCACHE=1

#export KBUILD_BUILD_USER="DhirajMS"
#export KBUILD_BUILD_HOST="WinterIsHere"

export CROSS_COMPILE=/home/ubuntu/ck/toolchain/bin/arm-eabi-

make -C $PWD O=$PWD/out ARCH=arm A158_defconfig

make -j64 -C $PWD O=$PWD/out ARCH=arm
