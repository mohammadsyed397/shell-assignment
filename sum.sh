#!/bin/bash

read -p "Enter a number: " number

# Validate input is a positive integer
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid positive integer."
    exit 1
fi

sum=0
temp=$number

while [ $temp -gt 0 ]
do
    digit=$(( temp % 10 ))      # Get last digit
    sum=$(( sum + digit ))      # Add digit to sum
    temp=$(( temp / 10 ))       # Remove last digit
done

echo "Sum of digits of $number is: $sum"

