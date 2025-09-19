#!/usr/bin/env bash
set -e

SRC_DIR="src"
OUT_DIR="build"
OUT_EXE="custom_shell.exe"

mkdir -p "$OUT_DIR"

x86_64-w64-mingw32-g++ \
    -std=c++17 \
    -Wall \
    -O2 \
    "$SRC_DIR/main.cpp" \
    -o "$OUT_DIR/$OUT_EXE" \
    -mwindows

echo "Built: $OUT_DIR/$OUT_EXE"
