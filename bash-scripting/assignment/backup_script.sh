#!/bin/bash

read -p "Enter source directory: " source_folder

timestamp=$(date +%Y-%m-%d_%H-%M)
backup_dir="backup_$timestamp"

mkdir "$backup_dir"
echo "Backup directory created: $backup_dir"

echo "Copying .txt files..."
cp "$source_folder"/*.txt "$backup_dir/" 2>/dev/null

count=$(ls "$backup_dir" | wc -l)
echo "Backup complete! Files backed up: $count"
