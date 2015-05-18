#!/usr/bin/env bash

# create users
./usercreate.sh users.dat
./usercreate.sh sachbearbeiter.dat
groupadd sb
while read -r line
do
  username=`echo $line | cut -d: -f1`
  usermod -a -G sb $username
done < sachbearbeiter.dat

cd projekte/
../createprojects.sh .

