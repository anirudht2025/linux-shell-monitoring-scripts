#!/bin/bash

echo "Enter a number: "
read number

# Check if number is even or odd
if [ $((number % 2)) -eq 0 ]
then
    echo "The number is EVEN"
else
    echo "The number is ODD"
fi
