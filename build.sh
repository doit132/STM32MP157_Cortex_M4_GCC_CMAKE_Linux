#!/bin/bash
CURRENT_DIR=$(pwd)
PATH_WORKSPACE_ROOT=$CURRENT_DIR

if [ ! -d "Build" ]; then
    mkdir "Build"
fi

cd Build

# 这里之所以要判断 CMakeCache.txt 是否存在是为了防止进入的不是 CMake 的目录
if [ "$1" = "clean" ] && [ -f "CMakeCache.txt" ]; then
    yes | rm -rf *
fi

# cmake --Build .
if [ -f "Makefile" ]; then
    make clean
else
    cmake ..
fi

if [ -f "compile_commands.json" ]; then
    cp compile_commands.json $PATH_WORKSPACE_ROOT
fi

make -j8
