dmesg [driver message]

    - The ‘dmesg‘ command displays the messages from the kernel ring buffer

        - dmesg --level=err,warn ## dmesg with err and warning
        - dmesg -T ## with time
        - dmesg -r ## raw message 
        - dmesg -Tx --follow 


journalctl
    - Query the systemd journal
    
        - journal -xe  ## show the short message of each service
        - journalctl --list-boots ## listing the boots
        - journalctl -b -1  ## see the journal of the previous boot
        - journalctl -u nginx.service --since today ## show the message of nginx unit
        - journalctl _PID=<pid> ## search by pid
        - journalctl -b -u nginx -o json ## can be output to json
