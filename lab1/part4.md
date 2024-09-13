# Bonding

## Create bonding

#### Create virtual interface
``` bash
nmcli con add con-name bond007 ifname bond007 type bond mode balance-rr
```
- `balance-rr` stands for *round-robin*. So interfaces will alter one by one

#### Add real interfaces to bonding
``` bash
nmcli con add con-name slave1 ifname enp0s3 type ethernet master bond007
nmcli con add con-name slave2 ifname enp0s8 type ethernet master bond007
```

#### Configure auto IP for bonding
``` bash
nmcli con mod bond007 ipb4.method auto
```

#### Set interfaces up
``` bash
nmcli con up bond007
nmcli con up slave1
nmcli con up slave2
```
---
## Information files
#### /proc/net/bonding/bond007
```
Ethernet Channel Bonding Driver: v5.14.0-505.el9.x86_64

Bonding Mode: load balancing (round-robin)
MII Status: up
MII Polling Interval (ms): 100
Up Delay (ms): 0
Down Delay (ms): 0
Peer Notification Delay (ms): 0

Slave Interface: enp0s3
MII Status: up
Speed: 1000 Mbps
Duplex: full
Link Failure Count: 0
Permanent HW addr: 08:00:27:70:21:cc
Slave queue ID: 0

Slave Interface: enp0s8
MII Status: up
Speed: 1000 Mbps
Duplex: full
Link Failure Count: 0
Permanent HW addr: 08:00:27:e0:f8:f2
Slave queue ID: 0
```
