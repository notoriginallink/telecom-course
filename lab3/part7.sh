#!bin/bash

if ! [[ $# -eq 1 || $# -eq 0 ]]; then
	printf "Invalid number of arguments\n"
	exit 1
fi

PORT=${1:-22}

printf "CNT\tIP\n"
ss -tunp | grep ":$PORT" | awk '{print $5}' | cut -d ':' -f 1 | sort | uniq -c  | sort -nrk1
