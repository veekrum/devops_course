## process management
- In an operating system, there are many programs that take place on computer's RAM. These programs may be run by OS itself or a user, such programs are called 'Processes.' Usually, a process has its life cycle and get terminated by its own when it is completed or when we quit it manually. But, sometimes, a process may hang up due to error in process scheduling or because of consuming a lot of RAM or CPU. In such cases, we need to kill the processes manually to save our machine from unexpected hang up.

### Force Stop/Suspend the process
```shell
 ctrl + c # stop the process
 ctrl + z # suspend the process
 ```

### Foreground and background process
```shell
vlc
ctrl + z
fg
ctrl + z
bg
```

### Locating the processes by ps and grep command

    - a : To display the processes for all the users
    - u : To display the processes used by particular user
    - x : To show all the processes. If we do not specify the x option, it will not display the GUI process.
    - $ `ps aux | grep firefox`
    - $ `ps aux | pgrep firefox` 
    - $ `ps <pid>`

### Locating the processes by pidof 
    - `$ pidof firefox`


Link: https://www.javatpoint.com/linux-top

### KILL process
    - The most common command to terminate a process is kill command. You need to know the PID of the process you want to terminate.
        - `kill -SIGNAL PID`
        - `kill -l`  -> for listing signals
        
### KILLALL process
    - The killall command need the process name instead of PID. It kills all the processes with the specified name in the system.
        - ` killall -<signal name or option> <name> `
        - `killall -9 firefox`

### pkill 
The pkill command uses name of the process instead of PID number. 
    `pkill -9 firefox`


### Nice
```shell
nice -n <-20 - 19> <command>
renice -n <-20 - 19> <pid>
```

### free
```shell
free -h
free -m
free -ht
```

### Locating the process
There are various commands to track a process such as top, ps, pgrep, and pidof.

    1. top
    2. htop


### Other utilities
```shell
nproc

```
