#!/bin/bash

available=$(free -m | awk '/Mem:/ {print$7}')

echo "Available memory: ${available}MB"

if [ "$available" -lt 500 ];then
    echo "WARNING: Low memory!"
else
    echo "Memory is sufficient!"
fi
