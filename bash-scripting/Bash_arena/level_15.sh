#!/bin/bash

ARENA_DIR="Arena"
BACKUP_DIR="Arena_Backups"
CONFIG_FILE="settings.conf"

if [ ! -d "$ARENA_DIR" ]; then mkdir "$ARENA_DIR"; echo "Init" > "$ARENA_DIR/data.txt"; fi
if [ ! -f "$CONFIG_FILE" ]; then echo "VERSION=1.0\nENV=PROD" > "$CONFIG_FILE"; fi

while true; do
    echo "=============================="
    echo "   BOSS BATTLE 3: ADVANCED    "
    echo "=============================="
    echo "1. Check disk space"
    echo "2. Show system uptime"
    echo "3. Backup Arena (Keep last 3)"
    echo "4. Parse settings.conf"
    echo "5. Exit"
    read -p "Choose your move: " choice

    case $choice in
        1)
            df -h .
            ;;
        2)
            uptime
            ;;
        3)
            mkdir -p "$BACKUP_DIR"
            TS=$(date +%H%M%S)
            cp -r "$ARENA_DIR" "$BACKUP_DIR/backup_$TS"
            echo "Backup saved: backup_$TS"
            ls -dt "$BACKUP_DIR"/backup_* | tail -n +4 | xargs rm -rf 2>/dev/null
            echo "Rotated: Kept last 3 backups."
            ;;
        4)
            echo "--- Configuration Values ---"
            while IFS='=' read -r key value; do
                [ -n "$key" ] && echo "CONFIG -> $key is set to $value"
            done < "$CONFIG_FILE"
            ;;
        5)
            echo "Exiting the Arena. Well played!"
            exit 0
            ;;
        *)
            echo "Invalid choice, try again."
            ;;
    esac
    echo ""
done
