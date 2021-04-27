## Introduction to Git
    Git is an Open Source Distributed Version Control System.
    -  Control System: This basically means that Git is a content tracker. So Git can be used to store content — it is mostly used to store code due to the other features it provides.
    -   Version Control System: The code which is stored in Git keeps changing as more code is added. Also, many developers can add code in parallel. So Version Control System helps in handling this by maintaining a history of what changes have happened. Also, Git provides features like branches and merges
    -   Distributed Version Control System: Git has a remote repository which is stored in a server and a local repository which is stored in the computer of each developer. This means that the code is not just stored in a central server, but the full copy of the code is present in all the developers’ computers

## Why a Version Control System like Git is needed
    - Real life projects generally have multiple developers working in parallel. So a version control system like Git is needed to ensure there are no code conflicts between the developers.
    - Additionally, the requirements in such projects change often. So a version control system allows developers to revert and go back to an older version of the code.

## Create your local Git repository
    - Go into your project folder and add a local Git repository to the project using the following commands:
        - cd project-name
        - git init
    
## Staging and Committing the code
    - Staging
        - git add demo.txt / git add file1.txt file2.txt
    - Committing
        - git commit -m "Initial Commit"

## Git Status and Git Log
    - git status: to find out information regarding what files are modified and what files are there in the staging area
    - git log: to print out all the commits which have been done up until now.

## What is a branch?
    - A branch is nothing but a pointer to the latest commit in the Git repository.

## Why are multiple branches needed?
    - Multiple branches are needed to support multiple parallel developments.

## git branch
    - git branch <branch_name>
    - git checkout <branch_name>
    - git branch ## list out branch

## git log
    - git log: see the logs

## Merging
    - Let’s say that now we want all the code in the Test Branch to be brought back to the Master Branch. This is where git merge is very useful.
        - First go back to the master branch:
            - git checkout master
        - Then run the merge command:
            - git merge <branch_name>

## Git Push
    - In order to push all the code from the local repository into the remote repository, use the following command:
        - git push -u origin master

## Git Pull
    - git pull is used to pull the latest changes from the remote repository into the local repository
        - git pull origin master

## Git Clone
    - git clone is used to clone an existing remote repository into your computer. The command for this is
        - git clone [repository url]

## What is Github/Gitlab/bitbucket/subcersion ? how are they different?  

