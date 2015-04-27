#!/bin/bash

if [ $# -gt 2 ]; then
    echo 'too many parameters'
    exit
fi

if [ $# -lt 2 ]; then
    echo 'parameter missing'
    exit
fi

if [ $# -eq 2 ]; then
    echo 'good job'
else
    echo 'something went wrong'
    exit
fi
  
