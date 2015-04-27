#!/bin/bash

if [ $# -ne 1 ]; then
    echo 'This script requires exactly 1 parameter. Exiting.'
    exit
fi

if [ -e $1 ]; then
    echo "$1 exists"
else
    echo "$1 is missing. Exiting."
    exit
fi

perm=''

if [ -r $1 ]; then
    perm=$perm'r'
else
    perm=$perm'-'
fi

if [ -w $1 ]; then
    perm=$perm'w'
else
    perm=$perm'-'
fi

if [ -x $1 ]; then
    perm=$perm'x'
else
    perm=$perm'-'
fi

echo "You have the followin permissions on $1:"
echo "$perm"


