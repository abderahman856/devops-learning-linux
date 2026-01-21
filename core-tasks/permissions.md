Objective

Understand the Linux permission model (Read, Write, Execute) and how to secure scripts.

Exercise: Making a Script Executable

I created a simple bash script and managed its permissions.

# Create the script
echo '#!/bin/bash\necho "Hello DevOps"' > hello.sh

# Initial state: Permission denied
./hello.sh 

# Grant execute permissions
chmod +x hello.sh

# Run successfully
./hello.sh


Permissions Challenge

Goal: Create a file that only I can read/write, but others can only read.
Command: chmod 644 security_test.txt

Understanding the Bits

6 (Owner): Read (4) + Write (2) = 6

4 (Group): Read (4)

4 (Others): Read (4)
