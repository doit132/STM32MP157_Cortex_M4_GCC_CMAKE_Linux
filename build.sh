#!/bin/bash
CURRENT_DIR=`pwd`
PATH_WORKSPACE_ROOT=$CURRENT_DIR

if [ ! -d "Build" ]; then
    mkdir "Build"
fi

cd Build

if [ "$1" = "clean" ]; then
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
