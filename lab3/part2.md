# Connection diagnostics

### Ping c7-1 from c7-2
This command sends 5 packets of 1500B every 10s from c7-2 to c7-1
``` bash
ping -c 5 -s 1500 -i 10 10.0.2.6
```

### -f option in ping
This option turn on **flood ping** mode. In this mode packets are send with minimal interval to *stress-test* the connection
``` bash
ping -f 10.0.0.6
```

### Collect net stats using mtr command
``` bash
mtr www.itmo.ru
```

#### mtr output
```
Start: 2024-09-14T21:57:46+0300
HOST: d12                      Loss%   Snt   Last   Avg  Best  Wrst StDev
  1.|-- 10.0.2.1                  0.0%    10    1.4   1.1   0.9   1.8   0.3
  2.|-- 192.168.0.1               0.0%    10    4.0   4.7   2.1  15.1   3.8
  3.|-- 10.149.8.1                0.0%    10    4.0   4.3   3.2   6.4   1.1
  4.|-- 10.148.252.245            0.0%    10    4.0   4.4   3.3   6.6   1.1
  5.|-- 89.223.47.29              0.0%    10    4.8   6.3   4.6   9.9   1.8
  6.|-- yacloud.spb.piter-ix.net  0.0%    10   19.2  16.7  15.3  19.2   1.3
  7.|-- 169.254.2.1               0.0%    10   15.9  16.7  12.4  26.9   4.2
  8.|-- 10.255.253.1              0.0%    10   14.2  14.7  12.9  18.7   1.8
  9.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 10.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 11.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 12.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 13.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 14.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 15.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 16.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 17.|-- ???                      100.0    10    0.0   0.0   0.0   0.0   0.0
 18.|-- 51.250.54.78              0.0%    10   22.1  21.1  19.9  23.9   1.2
```
### Collect data and save to file
``` bash
mtr -rw -c 40 www.itmo.ru > mtr_report.txt
```
