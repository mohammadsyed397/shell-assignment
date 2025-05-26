#!/bin/bash

read -p "Enter the number" number

echo "fibonacci series of $number is"

a=0
b=1
for((i=1; i<=number; i++))
do
	echo -n " $a "
	NEXT=$(( a + b ))
	a=$b
	b=$NEXT
done

