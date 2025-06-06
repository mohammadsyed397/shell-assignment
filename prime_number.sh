#!/bin/bash

############## Approach ##########################
# Prime numbers are defined as numbers greater than 1
# that have no divisors other than 1 and themselves
# Loop through number of times of a given number
# Each loop, divide the number with loop counter
# if it is "Zero", then it's a prime number
# Otherwise -> Not a prime number
############## Approach #########################

NUMBER=$1

# Check if number is valid
if [ -z "$NUMBER" ] || [ "$NUMBER" -le 1 ]; then
    echo "Please enter a valid number greater than 1."
    exit 1
else
	echo "Verifying whether the given number is a prime number or not:"
fi

# Calculate loop limit = number / 2
LOOP=$(( NUMBER / 2 ))

PRIME=1  # Assume prime unless we find divisor

for (( value=2; value<=LOOP; value++ ))
do
    if (( NUMBER % value == 0 )); then
        echo "Given number is NOT prime!! Divisible by $value"
        PRIME=0
        break
    fi
done

if [ $PRIME -eq 1 ]
then
    echo "Given number IS prime."
fi



