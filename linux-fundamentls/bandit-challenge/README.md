🕵️ OverTheWire: Bandit Challenge Solutions

This folder contains my step-by-step solutions and methodology for the Bandit wargame. Bandit is a security-focused challenge designed to teach Linux fundamentals, networking, and basic exploitation.

🎯 Objective

The goal of this challenge is to log into various levels of a remote Linux server using SSH. Each level provides a password or a security key for the next level, requiring increasingly complex commands to retrieve.


🛠️ Skills Demonstrated

Secure Shell (SSH): Handling ports, private keys (-i), and command injection.

Data Investigation: Finding files by size, ownership, and non-executable bits.

Text Processing: Filtering massive logs using grep, awk, cut, and uniq.

Networking: Communicating with local ports using nc (Netcat) and openssl.

Cryptography: Decoding base64, ROT13, and multi-layer compression (gzip/bzip2).


📖 Solutions Index (Levels 0-20)

I have documented the "Aha! Moments" for the most significant jumps in my learning:

Levels 0–5 (Basics): Focus on navigation and handling tricky filenames (e.g., files starting with - or containing spaces).

Levels 6–10 (Filtering): Mastering find with size/user filters and extracting strings from binary files.

Levels 11–15 (Encoding & Ports): Decoding data and interacting with server ports using nc.

Levels 16–20 (Networking & SetUID): Using RSA keys, port scanning with nmap, and leveraging SetUID binaries to gain elevated permissions.


🚀 How to use these solutions

Navigate to the level-specific file (e.g., solutions.md).

Review the command provided.

Read the Explanation section to understand the "Why" behind the solution.


⚠️ Warning

If you are currently playing the game, try to solve the levels yourself first! Use these notes only when you are stuck to ensure you actually build the muscle memory.
