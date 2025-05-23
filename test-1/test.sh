#!/bin/bash

TEST=$(pwd)

# Remove textfile1.txt if it exists
if [ -f "$TEST/textfile1.txt" ]; then
    rm "$TEST/textfile1.txt"
fi

# Read the text file, convert to lowercase, remove punctuation, split words into new lines, and save to textfile1.txt
cat "$TEST/textfile" \
    | tr 'A-Z' 'a-z' \
    | tr -d '[:punct:]' \
    | tr ' ' '\n' \
    | grep -v '^$' > "$TEST/textfile1.txt"

# Sort and count occurrences, then display top 5 words
sort "$TEST/textfile1.txt" | uniq -c | sort -nr | head -n 5
