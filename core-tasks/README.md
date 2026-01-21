🛠️ Core Linux Tasks

This directory contains documentation and proof of completion for the foundational Linux tasks required by the DevOps Bootcamp. 
These exercises focus on system administration, user management, and process monitoring.

🛠️ Core Linux Exercises

This directory contains documentation and proof of completion for the foundational Linux tasks required by the DevOps Bootcamp. These exercises focus on system administration, user management, and process monitoring.

📋 Task List & Deliverables

Task 1: Environment Setup — Documentation: setup-notes.md (✅ Done)

Task 2: File System Navigation — Documentation: file-system-notes.md (✅ Done)

Task 3: Permissions & Ownership — Documentation: permissions.md (✅ Done)

Task 4: Process Management — Documentation: process-mgmt.md (✅ Done)

Task 5: Text Processing (Grep/Awk) — Documentation: text-processing.md (✅ Done)

💡 Key Highlights

🔒 Permissions Challenge

Created a file where only the owner can read/write, but others can only read.
Command: chmod 644 security_test.txt
Logic: 6 (Read+Write for me) | 4 (Read for group) | 4 (Read for others).

⚙️ Process Management

Practiced managing background tasks.
Commands used:

sleep 100 & (Start in background)

jobs (List background tasks)

kill <PID> (Terminate process)

🔍 Text Parsing

Extracted all users using the /bin/bash shell from the system password file.
Command: grep "/bin/bash" /etc/passwd | cut -d: -f1

🛠️ Tools Used

Terminal: Killercoda / Ubuntu 24.04

Shell: Bash

Version Control: Git / GitHub

Return to Main README
