#!/bin/bash

SOURCE_DIR="Arena"
BACKUP_ROOT="Backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
mkdir -p "$BACKUP_ROOT"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: $SOURCE_DIR does not exist."
    exit 1
fi

cp -r "$SOURCE_DIR" "$BACKUP_ROOT/backup_$TIMESTAMP"
echo "Backup created at $BACKUP_ROOT/backup_$TIMESTAMP"

ls -dt "$BACKUP_ROOT"/backup_* | tail -n +6 | xargs rm -rf
echo "Rotation complete. Keeping only the last 5 backups."
