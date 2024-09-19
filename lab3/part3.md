# Work with WireShark

### Set capture limit
1. In `Capture -> Options` set `Stop Capture Autmoatically After` to 5MB
2. Choose the network (Wireless Network in my case)

### Using the statistics toolkit
a. Endpoint with maximum data transmitted: `Statistics-> Endpoints -> sort by data (desc)`
b. Endpoint with maximum broadcast activity: `Statistics -> Conversation -> Ethernet`
c. Most active TCP-port: `Statistics -> Conversation -> TCP -> sort by packages (desc)`
d. TCP and UDP intensity graph: `Statistics -> IO Graphs -> add tcp and udp`
e. Diagram of packages with HTTPS: `Statistics -> Flow Graph -> choose tcp.port = 443`

### Creating filters
a. For only DNS-protocol messages
`dns and (ip.src == 192.168.0.102 or ip.dst == 192.168.0.102) `
b. Ethernet frames sent from host network interface
`eth.src == 78:8c:b5:ca:ae:bc`	
c. Packages that are sent to Broadcast
`eth.dst == ff:ff:ff:ff:ff:ff`
