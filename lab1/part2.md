# Setting up static enp0s3 interface

### to delete previous connection
nmcli con delete enp0s3

### create new static connection
nmcli con add con-name enp0s3 ifname enp0s3 type ethernet ipv4.method maual ipv4.address 10.100.0.2/24 ipv4.gateway 10.100.0.1 ipv4.dns 8.8.8.8 
nmcli con up enp0s3

### create virtual interface
nmcli con add con-name br0 ifname br0 type bridge ipv4.method manual ipv4.address 10.100.0.3
nmcli con up br0

### test connection between real and virtual interfaces
ping -c 1 10.100.0.3

### get MAC-address of virtual interface
nmcli dev show br0 | grep "GENERAL.HWADDR"
