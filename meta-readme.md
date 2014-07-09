##Supplemental Information That May Be Useful

This document represents some information found along the way that may be useful.  

For a proof of concept based on another repository the user will want to fork that repository.  However if the user would like to rename the repository something else and not have it be associated with the forked repository do the following:

**Based in Linux Command Line**
* In the GitHub WebUI, create a new repository and name it accordingly ("new_repo" for this document)
* Clone the repository that will be used as the base for the new repository ("base_repo" for this document)
  * `git clone https://github.com/org_or_username/base_repo.git` (note: this URL is listed in the GitHub WebUI)
  * On the local machine there should now be a new directory with that repository contents within it; user will still be in your home directory (there will be some output of the command saying whether clone was successful)
* In the same fashion, clone the new repository that you created in the first step with that repository's unique URL
* Now, there will be two repository directories on your local file system, "new-repo" and "base_repo"
* Navid
