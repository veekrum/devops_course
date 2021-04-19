
## Managing Users Linux

### Add and Delete User
`useradd` command basically does following things:

  - Edits  `/etc/passwd`, `/etc/shadow`, `/etc/group` and `/etc/gshadow`
  - Creates and populate a home directory for the new user using /etc/skel directory
  - Sets proper permissions and ownerships in the home directory

#### Adding User without home directory
```shell
useradd techaxis
userdel techaxis
```

#### Adding User with home directory
```shell
useradd techaxis -m
userdel techaxis # remove all without home directory
userdel techaxis # remove all along with home directory
```

#### Adding User without custom home directory
```shell
useradd techaxis -d /tmp/findout
userdel techaxis -r
```

#### Adding Comments 
```shell
useradd techaxis -m -c '<any string>'
userdel techaxis -r
```

#### Keeping user in a existing group
```shell
useradd techaxis -m -g <group_name/group_id>
userdel techaxis -r
```

#### Expire user after
```shell
useradd techaxis -e <yyyy-mm-dd>
userdel techaxis -r
```

### Modify User with usermod

#### Update the home directory
```shell
sudo usermod -d /home/newtechaxis -m techaxis #creates new directory and move the existing contents
```

#### Add plain unencrypted password
```shell
sudo usermod -p '<password>' techaxis
sudo less /etc/shadow
```

#### Lock and Unlock users
```shell
sudo usermod -L techaxis
sudo less /etc/shadow
sudo usermod -U techaxis
```
## Managing Groups Linux



## Resources
  https://www.tecmint.com/add-users-in-linux/
  https://www.tecmint.com/usermod-command-examples/
  