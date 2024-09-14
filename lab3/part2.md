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
