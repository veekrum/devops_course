## Version Control System
Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later.

## Version Control Tools
  Git, CVS, Mercurial, SVN

## Git
  Git is a 
  - free and open source 
  - distributed version control system
  - handle everything from small to very large projects with speed and efficiency.
  
  History
  - Git was created by Linus Torvalds in 2005 for development of the Linux kernel, with other kernel developers contributing to its initial development.

## Git Hands-on
#### Install and Configure
  ```shell
    sudo apt update
    sudo apt install git

    ## Verify Installation
    git

    ## Configure the use
    git config --global user.name "Sam Smith"
    git config --global user.email sam@example.com

  ```

#### Git basic terminonlogies
  - init
  - commit
  - branch
  - pull
  - push
  - merge
  - remote

#### Creating a working with repository locally
```shell
# 1. Create A directory
mkdir /tmp/hellogit
cd /tmp/hellogit
git init # code tracking has started from this point on

# Verify
ls -a # you should be able to see the .git folder
git status # OR with git status

# 2. Create new file
echo '# Hello World form the git' > Readme.md
git status # check the status of the new file

# 3. Commit changes
git commit -m 'Added first line in Readme'

# 4. Add more changes
echo '## Adding more changes in Readme' >> Readme.md
echo 'Another file' > Another.txt
git status
git add Readme.md Another.txt
git status
git commit -m 'adding Another.txt and Appending more lines in Readme.md'
git status

# 5. Working with branches
git branch # lists all the branches
git branch addDocument master #Create new branch from master
git branch  # list all the branches

git checkout addDocument # newBranch
echo 'addding new document file' > document.txt
git add document.txt
git commit -m 'adding document file'
git checkout master
git merge addDocument

# 6. Reverting the mistakes
echo 'my mistake' >> document.txt
git diff
git add document.txt
git commit -m 'adding mistake'
git reset --soft HEAD~1

# 6. Show logs and changes
git logs
git show <commit-id>
```

#### Making the repository global
```shell
git remote add origin git@github.com:BalmanRawat/gittest.git
git branch -M main
git push -u origin main
```