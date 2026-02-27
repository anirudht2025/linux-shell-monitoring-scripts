#!/bin/bash

read -p "Enter the service name: " service

if systemctl is-active --quiet "$service"
then
    echo "$service service is RUNNING"
else
    echo "$service service is not RUNNING or does not exist"
fi
