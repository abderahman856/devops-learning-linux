Step 0: Starting Point (Everyone Same)

Project: todo-app

File: todo.js

Content right now in main:

let appName = "Todo App";


Both branches start from this exact line.

Step 1: You Create a New Branch

You create a branch to improve the UI:

git switch -c feature-ui


At this moment:

main has:

let appName = "Todo App";


feature-ui has:

let appName = "Todo App";


👉 Still identical.

Step 2: You Change the File in feature-ui

In feature-ui, you edit todo.js:

let appName = "My Todo List";


You commit it:

git commit -m "Change app name for UI"


Now:

feature-ui → "My Todo List"

main → "Todo App"

Step 3: Someone Else Changes the SAME Line in main

While you’re working, another developer changes main.

They edit the same line in todo.js:

let appName = "Todo Application";


They commit it:

git commit -m "Rename app"


Now the situation is:

main
let appName = "Todo Application";

feature-ui
let appName = "My Todo List";


⚠️ Both branches changed:

Same file (todo.js)

Same line (appName)

Different values

Step 4: You Try to Merge

You now want your UI work in main:

git switch main
git merge feature-ui


Git looks and says:

❓ “Originally this line was:
let appName = "Todo App";

Now in main it is:
let appName = "Todo Application";

And in feature-ui it is:
let appName = "My Todo List";

❌ I cannot choose.”

👉 This moment = merge conflict




Step 0: The Conflict Situation Recap

File: todo.js

main branch:

let appName = "Todo Application";


feature-ui branch:

let appName = "My Todo List";


You try to merge:

git switch main
git merge feature-ui


Git says:

Auto-merging todo.js
CONFLICT (content): Merge conflict in todo.js
Automatic merge failed; fix conflicts and then commit the result.

Step 1: Open the Conflicted File

Open todo.js. Git marks the conflict like this:

<<<<<<< HEAD
let appName = "Todo Application";
=======
let appName = "My Todo List";
>>>>>>> feature-ui


Explanation of markers:

<<<<<<< HEAD → your current branch (main)

======= → separates the two versions

>>>>>>> feature-ui → the branch you are merging (feature-ui)

Step 2: Decide What Should Stay

You have 3 options:

Keep main version → "Todo Application"

Keep feature-ui version → "My Todo List"

Combine them → "Todo Application - My Todo List" (or whatever makes sense)

For example, let’s keep the feature-ui version:

let appName = "My Todo List";


Delete all the conflict markers (<<<<<<<, =======, >>>>>>>).

Step 3: Stage the Resolved File

After editing:

git add todo.js


✅ This tells Git:

“Conflict resolved, include this version in the merge.”

Step 4: Complete the Merge

Now commit the merge:

git commit


Git automatically fills the commit message like:

Merge branch 'feature-ui' into main


And now the conflict is gone.
