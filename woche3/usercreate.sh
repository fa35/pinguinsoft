#!/usr/bin/env bash

while read line
do
  username=`echo "$line" | cut -d: -f1`
  comment=`echo "$line" | cut -d: -f2`
  shell=`echo "$line" | cut -d: -f3`
  useradd -m -c "$comment" $username
  echo "$username:oszimt" | chpasswd
done < $1
