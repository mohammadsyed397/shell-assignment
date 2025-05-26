#!/bin/bash

read -p "Enter a word to count the vowels in it:" WORD
VOWEL=$(echo "$WORD" | grep -o -i '[a,i,e,o,u]' | wc -l)
echo "Number of vowels in the given word are: $VOWEL"

