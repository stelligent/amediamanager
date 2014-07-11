##Supplemental Information That May Be Useful

This document represents some information found along the way that may be useful.  

For a proof of concept based on another repository the user will want to fork that repository.  However if the user would like to rename the repository something else and not have it be associated with the forked repository do the following:

**Based in Linux Command Line**

**Pre-Requisites**
* Access to a local VM or Linux machine command line with internet access (commands are based on Ubuntu)
* GitHub installed `apt-get install git` (see http://git-scm.com/download/linux for other versions)
* Knowledge of Linux command line navigation and directory / copy operations (Ubuntu basic guide https://help.ubuntu.com/community/UsingTheTerminal)

**Why would I want to do this**
* The purpose of doing the following is if it is desired to use a public or private Git repository for a completely independent project.  There will be no contributions back to the original project.  For instance, creating a Continous Delivery Pipeline for an open-source application.  

**Steps**
* In the GitHub WebUI, create a new repository and name it accordingly ("new_repo" for this document)
* Clone the repository that will be used as the base for the new repository ("base_repo" for this document)
  * `git clone https://github.com/org_or_username/base_repo.git` (note: this URL is listed in the GitHub WebUI)
  * On the local machine there should now be a new directory with that repository contents within it; user will still be in home directory (there will be some output of the command saying whether clone was successful)
* In the same fashion, clone the new repository that you created in the first step with that repository's unique URL (make sure you are in your home directory and not in the "base_repo" directory that was just created)
* Now, there will be two repository directories on your local file system, "new-repo" and "base_repo"
* Change directories to "base_repo" and delete .git and .gitignore (the reason for doing this is that .git holds all repository information that tracks the repository and identifies as a .git repository and .gitignore contains any files or directories that should not be tracked in the repository)
* Once both of those directories are deleted, copy all of the content from "base_repo" to "new_repo" 
  * This accomplishes getting all relevant files from the "base_repo" to the "new_repo" without a git repository being associated with the content
* Now, change directories so you are in the root directory of "base_repo"
  * Validate that all of the files copied over correctly
* Next, the base_repo needs to be reinitialized to ensure that the Git repository is initialized correctly
  * Run the command `git init`
  * A message should confirm that the git repository was initialized or reinitialized
* Additional commands need to be run to commit and add (push) the changes to the GitHub repository (online)
  * `git status` (optional, will show all the files that have been added as untracked)
  * `git add .` - This command adds all the untracked files that were copied to the repository
  * `git status` (optional, now this should show no untracked files, but all new files added to the repository)
  * `git commit -m "first commit"` - Adds commit message to all the new files in the repository
  * `git push -u origin master` - pushes the repository to GitHub
* Browse to the GitHub repository on GitHub and all of the files / directories should appear with the message "First Commit"
