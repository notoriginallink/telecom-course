#!/bin/bash

printf "Choose an option: \n1. See net-card info\n2. See IPv4 info\n3. Configure static IP\n4. Configure dynamic IP\n"
read OPTION
if ! [[ $OPTION -ge 1 && $OPTION -le 4 ]]; then
	printf "invalid option\n"
	exit 1
fi

INTERFACE="enp0s3"
case $OPTION in
	1)
		ethtool -i $INTERFACE | grep "driver"
		ethtool $INTERFACE | grep -E "Speed|Duplex|Link"
		ip link show $INTERFACE | grep "link" | xargs
		;;
	2)
		ip addr show $INTERFACE | grep -w "inet" | xargs
		ip r show default
		cat "/etc/resolv.conf"
		;;
	3)
		IP="10.100.0.2"
		MASK="255.255.255.0"
		GATE="10.100.0.1"

		ip addr flush $INTERFACE

		ip addr add "$IP/$MASK" dev $INTERFACE
		ip r add default via $GATE
		if [[ $(grep -c "8.8.8.8" /etc/resolv.conf) -eq 0 ]]; then
			sed -i '1s/^/namespace 8.8.8.8\n/' /etc/resolv.conf
		fi

		;;
	4)
		ip addr flush $INTERFACE
		dhclient $INTERFACE
		;;
esac

exit 0



