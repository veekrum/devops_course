### /var/log/syslog

This log file contains general messages, as well as system-related information. Essentially, this log stores all activity data across the global system.

    tail -f /var/log/syslog
    

### /var/log/auth.log /var/log/secure
All authentication related events in Debian and Ubuntu server are logged here.
    
    tail -f /var/log/auth.log
    

### dmesg [driver message]

The `dmesg` command displays the messages from the kernel ring buffer
    
    dmesg --level=err,warn ## dmesg with err and warning
    dmesg -T ## with time
    dmesg -r ## raw message 
    dmesg -Tx --follow 
    

### journalctl
Query the SystemD journal
    
    journal -xe  ## show the short message of each service
    journalctl --list-boots ## listing the boots
    journalctl -b -1  ## see the journal of the previous boot
    journalctl -u nginx.service --since today ## show the message of nginx unit
    journalctl _PID=<pid> ## search by pid
    journalctl -b -u nginx -o json ## can be output to json
    


### Reference
    https://www.eurovps.com/blog/important-linux-log-files-you-must-be-monitoring/#auth
