#!/bin/bash

while true; do
    echo "--- System Task Menu ---"
    echo "1. Check Disk Space"
    echo "2. Show System Uptime"
    echo "3. List Current Users"
    echo "4. Exit"
    read -p "Select an option (1-4): " choice

    case $choice in
        1) df -h ;;
        2) uptime ;;
        3) who ;;
        4) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid option." ;;
    esac
    echo ""
done
