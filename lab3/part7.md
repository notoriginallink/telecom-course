# Establishing connection via SSH

### Preparing
By default connection as root by password via ssh is disabled. Edit config /etc/ssh/sshd_config
`PermitRootLogin yes`
#### additional
for convenience change hostname on c7-1. Edit /etc/hostname file
### Connecting
from machine c7-2 run command in several consoles
`ssh root@10.0.2.6 -p 22`
### Print all listening ports using lsof
``` bash
lsof -i -P -n | grep "LISTEN"
```
### Print all established connections
``` bash
ss -tunp
```

