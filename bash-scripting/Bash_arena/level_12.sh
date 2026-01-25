#!/bin/bash

CONFIG_FILE="$1"

if [ -z "$CONFIG_FILE" ] || [ ! -f "$CONFIG_FILE" ]; then
    echo "Usage: $0 <config_file>"
    exit 1
fi

while IFS='=' read -r key value
do
    if [ -n "$key" ]; then
        echo "Key: $key, Value: $value"
    fi
done < "$CONFIG_FILE"
