DevOps Learning Journey: Linux & Bash Automation 🚀
Welcome to my central DevOps repository. This project documents my transition from learning core Linux server administration to building advanced automation scripts. It is structured to reflect my progress through two major modules: Linux Fundamentals and Bash Scripting.

📂 Repository Structure
Based on my current workflow, the repository is organized into the following specialized areas:

1. Linux Fundamentals
This section covers the core OS skills required for any DevOps professional.

Core Tasks: Environment setup, navigation, and advanced process management.

Security & Permissions: Deep dive into the Linux security model, user ownership, and chmod/chown logic.

Investigation: Practical troubleshooting through log analysis and system data parsing.

2. Bash Scripting
This section focuses on the transition from manual commands to reusable automation code.

assignment/: Final project scripts submitted for evaluation.

Bash_arena/: Sandbox environment for testing complex logic and experimental scripts.

lessons/: Daily scripts and documentation from the learning phase.

quizzes/: Practice sets and knowledge assessments.

🛠️ Bash Scripting: Assignment Challenges
Within the bash-scripting/assignment/ directory, I have developed the following automation tools:

1. Basic Arithmetic Calculator (calculator.sh)
An interactive tool for math operations.

Key Feature: Implements division-by-zero safety checks.

2. File Operations Automator (bash_demo.sh)
Automates the setup of project workspaces.

Functionality: Creates directories and timestamped verification files automatically.

3. Permission & Existence Checker (file_checker.sh)
A diagnostic tool used to verify file integrity.

Functionality: Provides a visual status report (✓/✗) for Read, Write, and Execute permissions.

4. Smart Backup Utility (backup_script.sh)
An archival tool that organizes data into timestamped folders.

Functionality: Identifies all .txt files in a source path and moves them to a secure, timestamped backup directory.

5. Bonus: System Monitor (system_monitor.sh)
A comprehensive system health reporting tool.

Metrics Captured: CPU Load, Memory Usage (Total/Used/Free), Disk Space, and Top 5 Memory-consuming processes.

Logging: Saves all data to a timestamped .log file for auditing.

🚀 How to Run
Clone the repository:

Bash

git clone https://github.com/abderahman856/devops-learning-linux.git
Navigate to a specialized directory:

Bash

cd bash-scripting/assignment
Ensure scripts are executable:

Bash

chmod +x *.sh
Run a tool:

Bash

./system_monitor.sh
Author: Baashe

Focus: DevOps Engineering & Linux Automation

Repository Stats: 90+ Commits and counting!
