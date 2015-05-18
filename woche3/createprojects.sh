#!/bin/bash

for file in *
do 
  # skip directories to only handle .conf files
  if [ -d $file ]; then
     continue
  fi

  # get data from conf files
  pname=`grep "pname" $file | cut -d : -f2`
  pleiter=`grep "pleiter" $file | cut -d: -f2`
  pleiter=${pleiter%?}
  pmitarbeiter=`grep "pmitarbeiter" $file | cut -d: -f2`
  pname=${pname%?}

  # delete directories before recreating them
  if [ -d $pname ]; then
    rm -rf $pname
  fi
  mkdir $pname
  cd $pname
  groupadd $pname
  groupadd "dev_$pname"
  ../../installenv.sh $pname $pleiter
  cd ..
done
