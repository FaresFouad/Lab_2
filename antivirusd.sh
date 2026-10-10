#!/bin/bash
extension=(exe bat vbs scr ps1)
malicious_words=(virus trojan malware ransomware worm)
flag=0;
while true;do
    ls -l "$1" > "directory_info.new"
    if [ -f "directory_info.last" ] && [ "$(diff "directory_info.last" "directory_info.new")" = "" ]; then
        sleep "$3"
        continue
    fi
    for file in $1/*; do
        for ext in ${extension[@]}; do
            if [ "$(echo "$file" | awk -F. '{print $NF}')" = "$ext" ]; then
                echo "$file is malicious and it is DELETED"
                cp "$file" "$2"
                rm "$file"
                flag=1;
                break
            fi
        done
        for word in ${malicious_words[@]}; do
            if [ $flag -eq 1 ]; then
                break
            fi
            if [ "$(cat "$file" | grep -i "$word")" != "" ]; then
                echo "$file is malicious and it is DELETED"
                cp "$file" "$2"
                rm "$file"
                break
            fi
        done
        flag=0;

    done
    ls -l "$1" > "directory_info.new"
    cp "directory_info.new" "directory_info.last"
    sleep "$3"
done
