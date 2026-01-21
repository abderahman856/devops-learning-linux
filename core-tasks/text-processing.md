Objective

Master the "Big Three" of Linux text processing: grep, awk, and sed.


Examples & Challenges

1. Searching with Grep

Found all "error" entries in the system logs:

grep -i "error" /var/log/syslog


2. Parsing Data with Awk

Extracted only the usernames from the system password file:

cat /etc/passwd | awk -F: '{print $1}'


3. The DevOps Challenge

Goal: List all users on the system who use /bin/bash as their default shell.
Command:

grep "/bin/bash" /etc/passwd | cut -d: -f1



Discovery

Piping (|) allows me to combine small, simple tools into a powerful data processing pipeline, which is a core skill for log analysis in DevOps.
