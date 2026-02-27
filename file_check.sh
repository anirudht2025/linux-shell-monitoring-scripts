#!/bin/bash

echo "Please enter the filename: "
read filename

if [ -f "$filename" ]
then
    echo "FILE EXISTS!"
else
    echo "FILE DOESN'T EXISTS!"
fi
