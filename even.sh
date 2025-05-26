#!/bin/bash

read -p "Enter a number: " NUMBER

if [ "$NUMBER" -le 0 ]; then
    echo "Please enter a number greater than 0"
    exit 1
else
    echo "Verifying whether the given number is even or not"
fi

if (( NUMBER % 2 == 0 )); then
    echo " $NUMBER is an even number"
else
    echo "$NUMBER is an odd number"
fi
 

