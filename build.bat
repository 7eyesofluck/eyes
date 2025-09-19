@echo off
set SRC=src\main.cpp
set OUT=build\custom_shell.exe

if not exist build (
    mkdir build
)

g++ -std=c++17 -Wall -O2 %SRC% -o %OUT% -mwindows

echo Built: %OUT%
