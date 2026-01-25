#!/bin/bash

read -p "Enter filename to check: " file


if [ -e "$file" ]; then
    echo "File '$file' exists."

    
    if [ -r "$file" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    
    if [ -w "$file" ]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    
    if [ -x "$file" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi

else
    echo "File '$file' does not exist."
fi
