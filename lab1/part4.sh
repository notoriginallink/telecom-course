#!bin/bash

while true; do
	echo "Timestamp: $(date)"
	awk '{print "Interface: " $1, "Recieve-packets: " $2, "Transmit-packets: ", $10}' /proc/net/dev | sed '1,2d'
	sleep 5
done;
