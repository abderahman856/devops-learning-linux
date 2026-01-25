#!/bin/bash

MONITOR_DIR="."
BEFORE_STATE="/tmp/state_before.txt"
AFTER_STATE="/tmp/state_after.txt"

echo "Watching for changes in $MONITOR_DIR... (Press Ctrl+C to stop)"

ls -lR "$MONITOR_DIR" > "$BEFORE_STATE"

while true; do
    sleep 2
    
    ls -lR "$MONITOR_DIR" > "$AFTER_STATE"
    
    if ! diff "$BEFORE_STATE" "$AFTER_STATE" > /dev/null; then
        TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
        echo "[$TIMESTAMP] CHANGE DETECTED: A file was created, modified, or deleted."
        
        cp "$AFTER_STATE" "$BEFORE_STATE"
    fi
done
