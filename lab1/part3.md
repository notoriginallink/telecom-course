# Work with interfaces using Netplan

### Netplan YAML configuration file

``` yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      dhcp4: no
      addresses:
        - 10.100.0.4/24
        - 10.100.0.5/24
      routes:
        - to: default
          via: 10.100.0.3
```
To apply configuration - `netplan apply`

### Check connection using ping command
``` bash
ping -c 1 10.100.0.2
ping -c 1 10.100.0.3
ping -c 1 10.100.0.4
ping -c 1 10.100.0.5
```

### ARP table
`ip nei show`


