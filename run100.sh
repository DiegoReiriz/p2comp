#!/bin/bash

i=0

echo ""
while [ $i -lt 10 ]
do
	echo ""
	echo "iteracion $i"
	echo ""
	./run.sh $1
	i=$(( $i + 1 ))
done

echo ""
echo "TERMINADO"
echo ""
