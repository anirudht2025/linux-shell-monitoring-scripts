#!/bin/bash

disk_usage=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

available_mem=$(free -m | awk '/Mem:/ {print $7}')

echo "Disk Usage       : ${disk_usage}%"
echo "Available Memory : ${available_mem}MB"

if systemctl is-active --quiet sshd \
   && [ "$disk_usage" -lt 80 ] \
   && [ "$available_mem" -lt 500 ]
then
    echo "SYSTEM STATUS    : HEALTHY"
    exit 0
else
    echo "SYSTEM STATUS    : UNHEALTHY"
    exit 1
fi
