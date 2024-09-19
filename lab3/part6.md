# Getting statistics of network interface
### Turn on vnstat
``` bash
systemctl start vnstat
systemctl enable vnstat
```
### Add interface to monitoring
``` bash
vnstat --add -i enp0s3
vnstat -i enp0s3
```
### Start flood pinging
On machine c7-2 start pinging machine c7-1
``` bash
ping -f -c 500 10.0.2.6
```
### See collected statistics
``` bash
vnstat -i enp0s3
```
---

#### stats before pinging
```
Database updated: 2024-09-19 22:05:00

   enp0s3 since 2024-09-19

          rx:  1,90 KiB      tx:  1,18 KiB      total:  3,08 KiB

   monthly
                     rx      |     tx      |    total    |   avg. rate
     ------------------------+-------------+-------------+---------------
       2024-09      1,90 KiB |    1,18 KiB |    3,08 KiB |      119 bit/s
     ------------------------+-------------+-------------+---------------
     estimated      8,22 MiB |    4,57 MiB |   12,78 MiB |

   daily
                     rx      |     tx      |    total    |   avg. rate
     ------------------------+-------------+-------------+---------------
         today      1,90 KiB |    1,18 KiB |    3,08 KiB |      119 bit/s
     ------------------------+-------------+-------------+---------------
     estimated         1 KiB |     --      |       1 KiB |
```
#### stats after pinging
```
Database updated: 2024-09-19 22:10:00

   enp0s3 since 2024-09-19

          rx:  51,14 KiB      tx:  49,93 KiB      total:  101,07 KiB

   monthly
                     rx      |     tx      |    total    |   avg. rate
     ------------------------+-------------+-------------+---------------
       2024-09     51,14 KiB |   49,93 KiB |  101,07 KiB |    1,62 kbit/s
     ------------------------+-------------+-------------+---------------
     estimated     93,14 MiB |   90,40 MiB |  183,54 MiB |

   daily
                     rx      |     tx      |    total    |   avg. rate
     ------------------------+-------------+-------------+---------------
         today     51,14 KiB |   49,93 KiB |  101,07 KiB |    1,62 kbit/s
     ------------------------+-------------+-------------+---------------
     estimated        55 KiB |      53 KiB |     108 KiB |
```
