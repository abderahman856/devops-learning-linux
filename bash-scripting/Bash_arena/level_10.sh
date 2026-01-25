


#!/bin/bash

mkdir -p Arena_Boss

for i in {1..5}
do
    FILE="Arena_Boss/file$i.txt"
    touch "$FILE"

    LINES=$(( ( RANDOM % 11 ) + 10 ))

    for ((j=1; j<=$LINES; j++))
    do
        echo "This is line $j" >> "$FILE"
    done

    if [ $i -eq 3 ]; then
        echo "Victory" >> "$FILE"
    fi
done

echo "Files sorted by size:"
ls -lS Arena_Boss

mkdir -p Victory_Archive
for file in Arena_Boss/*.txt
do
    if grep -q "Victory" "$file"; then
        mv "$file" Victory_Archive/
        echo "Moved $file to Victory_Archive"
    fi
done
