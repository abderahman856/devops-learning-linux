🟢 1. Getting Started
git init

What it does:
Turns a normal folder into a Git repo.

Example:

mkdir todo-app
cd todo-app
git init


👉 Creates .git/ and starts tracking.

git clone <url>

What it does:
Downloads an existing GitHub repo.

Example:

git clone https://github.com/baashe/todo-app.git


👉 You now have the project + full history.

git config --global user.name "<name>"
git config --global user.email "<email>"

What it does:
Sets who you are (used in commits).

Example:

git config --global user.name "Baashe"
git config --global user.email "baashe@email.com"

git config --list

What it does:
Shows all Git settings.

👉 Useful to debug Git problems.

🟡 2. The Basic Cycle (Work & Save)
git status

What it does:
Shows what’s happening right now.

Example:

git status


👉 Shows:

modified files

staged files

untracked files

git add <file>

What it does:
Adds a file to the staging area.

Example:

git add todo.js

git add .

What it does:
Stages everything.

Example:

git add .

git commit -m "<message>"

What it does:
Saves a snapshot.

Example:

git commit -m "Add basic todo functionality"

git commit --amend

What it does:
Fixes the last commit.

Example:

git commit --amend


👉 Used when:

You forgot a file

You want to change commit message

⚠️ Don’t amend pushed commits.

🔵 3. Branching & Merging
git branch

What it does:
Lists branches.

git branch

git branch <branch-name>

What it does:
Creates a new branch.

git branch feature-login

git checkout <branch-name>
git switch <branch-name>

What it does:
Moves to another branch.

git checkout feature-login
# or
git switch feature-login


👉 git switch is newer & safer.

git switch -c <new-branch-name>

What it does:
Create + switch in one step.

git switch -c feature-ui

git merge <branch-name>

What it does:
Combines branches.

Example:

git switch main
git merge feature-login


👉 Brings login feature into main.

git branch -d <branch-name>

What it does:
Deletes a branch.

git branch -d feature-login

git diff

What it does:
Shows what changed.

git diff


👉 Very important for debugging.

🟣 4. Remote Collaboration
git remote add origin <url>

What it does:
Links local repo to GitHub.

git remote add origin https://github.com/baashe/todo-app.git

git remote -v

What it does:
Shows remote URLs.

git push origin <branch-name>

What it does:
Sends commits to GitHub.

git push origin main

git pull

What it does:
Fetch + merge from GitHub.

git pull

git fetch

What it does:
Downloads changes without merging.

git fetch


👉 Safe way to inspect changes first.

🟠 5. Inspection & History
git log

What it does:
Shows commit history.

git log --oneline

What it does:
Compact history.

git log --graph --oneline --all

What it does:
Visual branch graph.

🔥 Interview favorite.

git show <commit-id>

What it does:
Shows one commit details.

git show a1b2c3

git reflog

What it does:
Shows everything you did, even deleted commits.

🔥 Life saver.

🔴 6. Undo & Recovery
git restore <file>

What it does:
Undo file changes.

git restore todo.js

git restore --staged <file>

What it does:
Unstage a file.

git reset HEAD~1

What it does:
Undo last commit (keep changes).

git reset --soft HEAD~1

What it does:
Undo commit, keep staged changes.

git reset --hard HEAD~1

What it does:
⚠️ Delete commit + changes.

❌ Dangerous.

git revert <commit-id>

What it does:
Safe undo using a new commit.

✔️ Use on shared branches.

git stash

What it does:
Temporarily save work.

git stash pop

What it does:
Restore stashed work.

git clean -fd

What it does:
Deletes untracked files.

⚠️ Dangerous.

⚪ 7. Utility
git rm <file>

What it does:
Deletes file + tracks deletion.

git mv <old> <new>

What it does:
Rename file properly.

git tag -a v1.0 -m "Release version 1.0"

What it does:
Marks a release.

👉 Used in CI/CD.
