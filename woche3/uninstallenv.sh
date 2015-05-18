#!/usr/bin/env bash

while read -r line
do
  username=`echo "$line" | cut -d: -f1`
  userdel -r $username
done < users.dat

while read -r line
do
  username=`echo "$line" | cut -d: -f1`
  userdel -r $username
done < sachbearbeiter.dat

groupdel sb

cd projekte 
for file in *
do
  if [ -d $file ]; then
    rm -rfv $file
    continue
  fi

  pname=`grep "pname" $file | cut -d: -f2`
  pname=${pname%?}
  groupdel $pname
  groupdel "dev_$pname"
done
