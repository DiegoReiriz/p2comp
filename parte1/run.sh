#!/bin/bash
echo "version normal"
gcc main$1.cpp
./a.out

echo ""
echo "sin optimizar -O0"
gcc -O0 main$1.cpp
./a.out

echo ""
echo "sin optimizar -O1"
gcc -O1 main$1.cpp
./a.out

echo ""
echo "sin optimziar -O2"
gcc -O2 main$!.cpp
./a.out

echo ""
echo "sin optimizar -O3"
gcc -O3 main$1.cpp
./a.out

echo ""
echo "version optimizada"
gcc mainOptimizado$1.cpp
./a.out

echo ""
echo "optimizado -O0"
gcc -O0 mainOptimizado$1.cpp
./a.out

echo ""
echo "optimizado -O1"
gcc -O1 mainOptimizado$1.cpp
./a.out

echo ""
echo "optimizado -O2"
gcc -O2 mainOptimizado$1.cpp
./a.out

echo ""
echo "optimizado -O3"
gcc -O3 mainOptimizado$1.cpp
./a.out
