A =  Git Terminologies & Concepts
  
1. Repository (Repo)
   
A Git project folder that contains all your files and the complete history of every change made to them. It includes the hidden .git directory where all metadata is stored.

3. Commit

A snapshot of your project at a specific point in time. Every commit has a unique ID (SHA-1 hash) and a message explaining what changed.

3. Branch

A parallel version of your repository. It allows you to develop features or fix bugs in a safe "What If?" timeline without affecting the main stable code.

4. Remote

A version of your project hosted on the internet or a network (like GitHub). It acts as a reference point so multiple people can sync their work.

5. Staging Area (The Index)

A "holding zone" between your working directory and your repository. It allows you to choose exactly which changes you want to include in your next commit.

🔬 The "Under the Hood" Internals

6. Blobs (Binary Large Objects)

In Git, every version of a file is stored as a "blob." It stores the data of the file but not the filename or permissions.

7. Trees

A "Tree" is like a directory. It maps filenames to Blobs and can contain other Trees (subdirectories). It represents the structure of your project at a specific commit.

8. Refs (References)

Simple names (like main or feature-1) that point to a specific commit ID. Instead of remembering a1b2c3d..., you just use the Ref name.

9. HEAD

A special pointer that tells Git which branch you are currently working on. If you checkout a different branch, the HEAD moves to point to the latest commit on that branch.

10. Object Store

The database inside the .git/objects folder. This is where Git stores all your Blobs, Trees, and Commits.

11. Tag

A permanent pointer to a specific commit, usually used to mark Releases (e.g., v1.0.0). Unlike branches, tags do not move.

🚀 Advanced DevOps Terms (The "Bonus" List)

12. SHA-1 Hash

The 40-character string (e.g., 2c85eb1...) that uniquely identifies every object in Git. If even one character in a file changes, the Hash changes.

13. Origin

The default name Git gives to the primary remote server you cloned from.

14. Upstream

Refers to the original repository you "forked" from. In DevOps, we use this to keep our local forks synchronized with the main team project.

15. Revert vs. Reset

Revert: Creates a new commit that does the exact opposite of a previous commit (Safe for shared projects).

Reset: "Rewinds" your history to a previous point, deleting the commits that came after it (Dangerous for shared projects).

16. Cherry-pick

The act of picking one specific commit from one branch and applying it to another.

17. Stash

A "temporary drawer" where you can hide uncommitted changes so you can switch branches quickly without losing work.
