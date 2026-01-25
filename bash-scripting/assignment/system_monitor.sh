#!/bin/bash

# 1. Define the log file name with a timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H-%M)
LOG_FILE="system_monitor_$TIMESTAMP.log"

# --- Start Gathering Data ---

# Create/Overwrite the file with a Header
echo "==========================================" > "$LOG_FILE"
echo " SYSTEM MONITORING REPORT - $TIMESTAMP " >> "$LOG_FILE"
echo "==========================================" >> "$LOG_FILE"

# 2. CPU Usage
echo -e "\n[1. CPU USAGE]" >> "$LOG_FILE"
# Grabs the CPU line from a single 'top' snapshot
top -bn1 | grep "Cpu(s)" >> "$LOG_FILE"

# 3. Memory Usage (Total, Used, Free)
echo -e "\n[2. MEMORY USAGE]" >> "$LOG_FILE"
# -h makes it human-readable (GB/MB)
free -h >> "$LOG_FILE"

# 4. Disk Usage
echo -e "\n[3. DISK USAGE]" >> "$LOG_FILE"
# Shows usage for the root partition
df -h / >> "$LOG_FILE"

# 5. Top 5 Processes by Memory
echo -e "\n[4. TOP 5 MEMORY PROCESSES]" >> "$LOG_FILE"
# aux lists all processes, --sort=-%mem puts highest at top, head grabs first 6 lines (header + 5)
ps aux --sort=-%mem | head -n 6 >> "$LOG_FILE"

echo -e "\n==========================================" >> "$LOG_FILE"
echo "Report Generation Complete." >> "$LOG_FILE"

# --- Display to User ---

# Provide feedback in the terminal
echo "Success: System monitoring data has been captured."
echo "Log file created: $LOG_FILE"
echo "------------------------------------------"

# Display the content of the log file so you can see it immediately
cat "$LOG_FILE"
