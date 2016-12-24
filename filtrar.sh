#!/bin/bash

res1=$(cat resultados$1 | grep "sin optimizar -O0" -A 2 | grep "resultado" | cut -f 3 -d " ")
res2=$(cat resultados$1 | grep "sin optimizar -O1" -A 2 | grep "resultado" | cut -f 3 -d " ")
res3=$(cat resultados$1 | grep "sin optimizar -O2" -A 2 | grep "resultado" | cut -f 3 -d " ")
res4=$(cat resultados$1 | grep "sin optimizar -O3" -A 2 | grep "resultado" | cut -f 3 -d " ")
res5=$(cat resultados$1 | grep "optimizado -O0" -A 2 | grep "resultado" | cut -f 3 -d " ")
res6=$(cat resultados$1 | grep "optimizado -O1" -A 2 | grep "resultado" | cut -f 3 -d " ")
res7=$(cat resultados$1 | grep "optimizado -O2" -A 2 | grep "resultado" | cut -f 3 -d " ")
res8=$(cat resultados$1 | grep "optimizado -O3" -A 2 | grep "resultado" | cut -f 3 -d " ")

echo "sin_optimizar_O0 "$res1 | tr " " "\n" > 1
echo "sin_optimizar_O1 "$res2 | tr " " "\n" > 2
echo "sin_optimizat_O2 "$res3 | tr " " "\n" > 3
echo "sin_optimizat_O3 "$res4 | tr " " "\n" > 4
echo "optimizado_O0 "$res5 | tr " " "\n" > 5
echo "optimizado_O1 "$res6 | tr " " "\n" > 6
echo "optimizado_O2 "$res7 | tr " " "\n" > 7
echo "optimizado_O3 "$res8 | tr " " "\n" > 8

paste 1 2 3 4 5 6 7 8

rm 1 2 3 4 5 6 7 8
