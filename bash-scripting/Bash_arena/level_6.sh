#!/bin/bash

FILE="$1"

if [ -z "$1" ]; then
        echo "No file provided! Please type a filename"
else
        wc -l "$1"
fi
~ 
