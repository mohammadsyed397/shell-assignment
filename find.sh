#!/bin/bash

read -p "Enter the string to find: " find_str
read -p "Enter the string to replace with: " replace_str
read -p "Enter directory (default is current directory): " dir

dir=${dir:-.}

ls "$dir" >>/dev/null
if [ $? -ne 0 ]; then
    echo "Directory does not exist!"
    exit 1
fi

for file in "$dir"/*.txt
do
    [ -e "$file" ] || { echo "No .txt files found in $dir"; exit 1; }

    sed -i "s/${find_str}/${replace_str}/g" "$file"
    echo "Replaced in $file"
done

