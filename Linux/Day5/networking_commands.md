#### ping
```shell
ping google.com
```
#### host
```shell
host google.com
```

### telnet
```shell
telnet <ip> <port>
```

### /etc/hosts
Local DNS using /etc/hosts

### /etc/resolve.conf
Global DNS

### Netstat [network stat]

  - netstat -a ## command is to list out all the current connection
  - netstat -atu ## list out all the tcp and udp connections
  - netstat -ant ## list all the tcp 
  - netstat -atp ## list all the tcp programs
  - netstat -etpaN ## list all the things

### SS [socket stats]

  - ss -a ## list all the 
  - ss -p ## all program
  - ss -tual ## list all tcp udp and listening
  - ss -46 ## list the ipv4 and ipv6
  - ss -s ## summart stats

### ssh [secure shell]

- installation
- ssh and scp


### UFW(Uncomplicated Firewall) Firewall
Basic Syntax
```shell
ufw [--dry-run] [options] [rule syntax]
```

Examples
```shell
sudo ufw allow 22 # Alernatively sudo ufw allow ssh
sudo ufw deny 22

```

### Resources
  https://www.linux.com/training-tutorials/introduction-uncomplicated-firewall-ufw/
  https://www.binarytides.com/linux-netstat-command-examples/
  https://www.linuxtechi.com/ss-command-examples-monitor-socket-connections/
