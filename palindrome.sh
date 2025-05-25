read -p "Enter a word to check whether it is a palindrome or not: " WORD

if [ -z "$WORD" ]; then
    echo "Please enter a word."
    exit 1
else
    echo "Checking whether the given word is a palindrome..."
fi

PALINDROME=$(echo "$WORD" | rev)

if [ "$PALINDROME" == "$WORD" ]; then
    echo "The given word is a palindrome!"
else
    echo "The given word is not a palindrome."
fi
