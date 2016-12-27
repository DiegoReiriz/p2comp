#!/bin/bash


res1=$(cat resultados$1 | grep "sin optimizar -O0" -A 2 | grep "resultado" | cut -f 3 -d " ")
res2=$(cat resultados$1 | grep "sin optimizar -O1" -A 2 | grep "resultado" | cut -f 3 -d " ")
res3=$(cat resultados$1 | grep "sin optimziar -O2" -A 2 | grep "resultado" | cut -f 3 -d " ")
res4=$(cat resultados$1 | grep "sin optimizar -O3" -A 2 | grep "resultado" | cut -f 3 -d " ")
res5=$(cat resultados$1 | grep "optimizado -O0" -A 2 | grep "resultado" | cut -f 3 -d " ")
res6=$(cat resultados$1 | grep "optimizado -O1" -A 2 | grep "resultado" | cut -f 3 -d " ")
res7=$(cat resultados$1 | grep "optimizado -O2" -A 2 | grep "resultado" | cut -f 3 -d " ")
res8=$(cat resultados$1 | grep "optimizado -O3" -A 2 | grep "resultado" | cut -f 3 -d " ")

echo "sin_optimizar_O0 "$res1 | tr " " "\n" > s1
echo "sin_optimizar_O1 "$res2 | tr " " "\n" > s2
echo "sin_optimizat_O2 "$res3 | tr " " "\n" > s3
echo "sin_optimizat_O3 "$res4 | tr " " "\n"> s4
echo "optimizado_O0 "$res5 | tr " " "\n" > s5
echo "optimizado_O1 "$res6 | tr " " "\n" > s6
echo "optimizado_O2 "$res7 | tr " " "\n" > s7
echo "optimizado_O3 "$res8 | tr " " "\n" > s8

paste s1 s2 s3 s4 s5 s6 s7 s8


count=0
val=0
for i in $(cat s1);do
	if [ $count -ne 0 ];then
		val=$(echo "$val + $i" | bc )
	fi
	count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "sin_optimizar_oO "$val

count=0
val=0
for i in $(cat s2);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "sin_optimizar_o1 "$val

count=0
val=0
for i in $(cat s3);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "sin_optimizar_o2 "$val

count=0
val=0
for i in $(cat s4);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "sin_optimizar_o3 "$val

count=0
val=0
for i in $(cat s5);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "optimizado_oO "$val

count=0
val=0
for i in $(cat s6);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "optimizado_o1 "$val

count=0
val=0
for i in $(cat s7);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "optimizado_o2 "$val

count=0
val=0
for i in $(cat s8);do
        if [ $count -ne 0 ];then
                val=$(echo "$val + $i" | bc )
        fi
        count=$(( $count + 1))
done

val=$(python -c "print $val / $count")

echo "optimizado_o4 "$val

rm s1 s2 s3 s4 s5 s6 s7 s8
