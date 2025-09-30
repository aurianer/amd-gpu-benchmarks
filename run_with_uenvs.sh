#!/bin/bash


set -eux

uenv run --view=default-llvm-amdgpu prgenv-gnu/25.07-6.3.3:v5 -- ./run_tests.sh
