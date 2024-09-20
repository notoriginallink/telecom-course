# Using netcat and tcpdump

### Setup tcmpdump
On machine c7-1 run that command to start catch packets on ports 4444 and 9999
``` bash
tcpdump -i enp0s3 -A 'port 4444 or port 9999'
```
### Sending single file
1. Create some file on machine c7-2, i.e. message.txt
2. Start listening to 9999 port on machine c7-1: `nc -l -p 9999 > recieved.txt`
3. Send file from machine c7-2: `nc 10.0.2.6 9999 < message.txt`
4. Check that message had come
### Creating chat between machines 
``` bash
nc -l -u -p 4444 
```
on c7-1

``` bash
nc -u 10.0.2.6 4444
```
on c7-2

---
Now chat is ready
