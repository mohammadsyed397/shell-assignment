#!/bin/bash

read -p "Enter a number: " NUMBER

# Validate that the input is a positive integer
if ! [[ "$NUMBER" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid positive integer"
    exit 1
fi

if [ "$NUMBER" -eq 0 ] || [ "$NUMBER" -eq 1 ]; then
    echo "Factorial for given number is 1"
    exit 0
fi

factorial=1

for counter in $(seq 2 $NUMBER)
do
    factorial=$((factorial * counter))
done

echo "Factorial for given number $NUMBER is $factorial"




