# Network interfaces monitoring (online)
### Start stress-testing
On machine c7-2 run command `ping -f 10.0.2.6` to start *flood* pinging machine c7-1
### Using bmon see data about enp0s3 interface
On machine c7-1 run command
``` bash
bmon -p enp0s3
```
### Increasing package size
On machine c7-2 repeatedly increase size of package used in ping command
``` bash
# first step
ping -f -s 100 10.0.2.6

# second step
ping -f -s 10100 10.0.2.6

#... last step
ping -f -s 60100 10.0.2.6
```
