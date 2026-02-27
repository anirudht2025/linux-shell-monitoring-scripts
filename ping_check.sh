#!/bin/bash

while read -r host
do
    if ping -c 1 -W 2 "$host" > /dev/null 2>&1
    then
        echo "$host is UP!"
    else
        echo "$host is DOWN or unreachable"
    fi
done < servers.txt
