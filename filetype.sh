#!/bin/bash

if [ -e "$1" ]; then
   echo "$1 exists."
else
   echo "$1 does not exist. Exiting."
   exit
fi

if [ -d "$1" ]; then
   echo "It is a directory."
   exit
fi

if [ -x "$1" ]; then
   echo "It is executable by the user running this script"
else
   echo "It is not executable by the user running this script"
fi

if [ -h "$1" ]; then
   echo "It is a symbolic link."
   exit
fi

if [ -f "$1" ]; then
   echo "It is a regular file."
   exit
fi

echo 'The file exists, but is neither a directory, symbolic link or regular file'
