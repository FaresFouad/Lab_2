#!/bin/bash

while true; do
    ls $2 | cat -n
    echo "Choose a file: "
    read choice1
    echo "1: Restore this file back into dir(it was a false positive)" 
    echo "2: Permanently delete this file from malicious_dir(it was genuinely malicious)"
    echo "3: Go back"
    read choice2
    file=$(ls $2 | cat | awk "NR==$choice1")
    if [ $choice2 -eq 1 ]; then
        cp "$2/$file" "$1"
        rm "$2/$file"
        echo "$file has been restored back into $1"
    elif [ $choice2 -eq 2 ]; then
        rm "$2/$file"
        echo "$file has been permanently deleted from $2"
    else
        echo "Going back to main menu"
    fi
    done