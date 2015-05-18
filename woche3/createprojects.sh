#!/bin/bash

for file in *
do 
  # skip directories to only handle .conf files
  if [ -d $file ]; then
     continue
  fi

  # get data from conf files
  pname=`grep "pname" $file | cut -d : -f2`
  pname=${pname%?}
  groupadd "dev_$pname"
  pleiter=`grep "pleiter" $file | cut -d: -f2`
  pleiter=${pleiter%?}
  pmitarbeiter=`grep "pmitarbeiter" $file | cut -d: -f2`
  #pmitarbeiter=${pmitarbeiter%?}
  echo $pmitarbeiter 
  devlist=$(echo $pmitarbeiter | tr "," "\n")
  for dev in $devlist
  do
    usermod -a -G "dev_$pname" $dev
  done


  # delete directories before recreating them
  if [ -d $pname ]; then
    rm -rf $pname
  fi
  mkdir $pname
  cd $pname
  groupadd $pname
  ../../installenv.sh $pname $pleiter
  cd ..
done
