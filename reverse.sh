#!/bin/bash

read -p "Enter a two digit number:" NUMBER
LENGTH=${#NUMBER}
if [ "$LENGTH" -ne 2 ]
then
	echo "Please enter a two digit number"
	exit 1
fi
REV=$(echo "$NUMBER" | rev)
echo "original number is $NUMBER"
echo "reverse number is $REV"

