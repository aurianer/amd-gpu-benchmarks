#!/bin/bash

set -eux

proj_dir=~/projects/amd-gpu-benchmarks
build_dir=$proj_dir/rocPRISM/build
mkdir -p $build_dir && cd $build_dir

CC=mpicc CXX=mpicxx cmake -G Ninja -DCMAKE_HIP_ARCHITECTURES="gfx90a;gfx942" ..
ninja
./reduce
