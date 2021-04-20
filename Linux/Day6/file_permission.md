###  Access Modes  

    Owner permissions − The owner's permissions determine what actions the owner of the file can perform on the file.

    Group permissions − The group's permissions determine what actions a user, who is a member of the group that a file belongs to, can perform on the file.

    Other (world) permissions − The permissions for others indicate what action all other users can perform on the file.

### File Permission 

    Read (r) : The read permission allows you to open and read the content of a file. But you can't do any editing or modification in the file.

    Write (w) : The write permission allows you to edit, remove or rename a file. For instance, if a file is present in a directory, and write permission is set on the file but not on the directory, then you can edit the content of the file but can't remove, or rename it.

    Execute (x): In Unix type system, you can't run or execute a program unless execute permission is set.

###

    position 	characters 	ownership
    1 	    - 	denotes file type
    2-4 	    rw- 	    permission for user
    5-7 	    rw- 	    permission for group
    8-10 	    r-- 	    permission for other



## pre requirement
    - useradd -m -d /home/newuser -s /bin/bash newuser ## adding user
    - sudo passwd newuser - newuser  
    - mkdir devops
    - touch devops/file.txt
    - ls -l devops/file.txt

## chown : change owner
    - chown user:group devops/file.txt
    - chown user devops/file.txt


## chgrp : change group
    - chgrp user devops/file.txt

## chmod : change mode
    - chmod 777 devops/file.txt
    - chmod u+x devops/file.txt
    - chmod g+x devops/file.txt
    - chmod o+rwx devops/file.txt
    - chmod a+w devops/file.txt ## write perm for all user
    - chmod o=rw devops/file.txt
    - chmod u=rwx,g=rw,o=r devops/file.txt

## Advanced File Permission
    - Files can be protected in a directory from getting removed by other users who do not own it by preventing it with sticky bit. It is displayed at the same location as the x permission for others.
    - It is represented by a t (x is also there) or a T (no x is there).
        - chmod +t devops/file.txt ## adding the sticky bit
        - chmod -t devops/file.txt ## removing the sticky bit

    NOTE* - Generally, sticky bit is found on /tmp directory.
 
 ## SetUid and SetGid --> Research task 
