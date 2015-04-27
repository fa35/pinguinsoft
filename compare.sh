#!/bin/bash

if [ $# -ne 2 ]; then
    echo 'This script expects exactly 2 parameters. Exiting'
    exit
fi

if [ $1 -le $2 ]; then
    small=$1
    large=$2
else
    large=$1
    small=$2
fi

diff=$(($large-$small))

echo "Die größere Zahl ist: $large"
echo 
echo "Die kleinere Zahl ist: $small"
echo
echo "Die Differenz ist $diff"
