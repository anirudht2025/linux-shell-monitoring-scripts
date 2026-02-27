#!/bin/bash

usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk usage is $usage%"

if [ "$usage" -gt 80 ]; then
    echo "WARNING: Disk usage high"
else
    echo "Disk usage normal"
fi
