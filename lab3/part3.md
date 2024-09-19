# Work with WireShark

### Set capture limit
1. In `Capture -> Options` set `Stop Capture Autmoatically After` to 5MB
2. Choose the network (Wireless Network in my case)

### Using the statistics toolkit
1. Endpoint with maximum data transmitted: `Statistics-> Endpoints -> sort by data (desc)`
2. Endpoint with maximum broadcast activity: `Statistics -> Conversation -> Ethernet`
3. Most active TCP-port: `Statistics -> Conversation -> TCP -> sort by packages (desc)`
4. TCP and UDP intensity graph: `Statistics -> IO Graphs -> add tcp and udp`
5. Diagram of packages with HTTPS: `Statistics -> Flow Graph -> choose tcp.port = 443`

### Creating filters
1. For only DNS-protocol messages

`dns and (ip.src == 192.168.0.102 or ip.dst == 192.168.0.102) `

2. Ethernet frames sent from host network interface

`eth.src == 78:8c:b5:ca:ae:bc`	

3. Packages that are sent to Broadcast

`eth.dst == ff:ff:ff:ff:ff:ff`
