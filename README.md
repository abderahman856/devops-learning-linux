🚩 DevOps Journey: Linux Fundamentals & Bandit Mastery

This repository documents my progress through the Linux module of the CoderCo DevOps Bootcamp. It serves as a portfolio of my command-line skills, troubleshooting methodology, and security fundamentals.

🚀 Project Overview

Linux is the backbone of the cloud. This project covers everything from basic file system navigation to advanced networking, process management, and security exploitation via the OverTheWire: Bandit wargame.

🛠️ Core Skills Mastered

Category

Tools & Concepts

File Systems

ls, cd, find, mkdir, cp, mv, rm

Permissions

chmod, chown, SetUID, SSH Key Security (600)

Text Processing

grep, awk, sed, cut, sort, uniq, strings

Networking

nc (Netcat), ssh, openssl, nmap, localhost

Automation

Bash Scripting, Pipes (`

🕵️ Bandit Challenge: "Aha!" Moments (Levels 0-20)

I completed 20 levels of the Bandit wargame. Below are the key logic "Aha!" moments that defined my learning.

Level

Goal

The "Aha!" Moment

0 → 1

Read readme

cat displays text content instantly.

1 → 2

Read -

Use ./ to tell Linux that - is a filename, not a command flag.

2 → 3

Spaces in files

Use Quotes or Backslashes (\ ) to handle spaces in filenames.

3 → 4

Hidden files

ls -a reveals hidden files starting with a ..

4 → 5

Human-readable

file identifies data types before you cat them.

5 → 6

Specific size

find with -size filters thousands of files instantly.

9 → 10

Binary data

strings extracts human-readable text from non-text files.

12 → 13

Compression

Peeling layers of gzip, bzip2, and tar based on file headers.

13 → 14

SSH Keys

ssh -i uses a digital identity key instead of a password.

14 → 15

Port submission

nc sends data directly to a specific network port.

17 → 18

Diffing

diff identifies exactly what changed between two versions of a file.

18 → 19

Shell bypass

Adding a command to an ssh string bypasses .bashrc logout scripts.

19 → 20

SETUID

./binary runs with the owner's permissions to access restricted files.

📂 Repository Structure

/core-tasks: Detailed notes on permissions, processes, and text processing.

/bandit-challenge: Step-by-step commands used to solve Levels 0-20.

/scripts: Initial Bash scripts for automation (e.g., backup.sh).

🏆 Final Result

Successfully achieved Level 20. All flags were captured using native Linux tools and manual investigation.

Follow my journey at @CoderCo #DevOps #Linux #BashScripting
