#!/bin/bash

echo -n "Enter the limit: "
read limit

for (( i=1; i<=limit; i++ ))
do
    echo "$i"
done
