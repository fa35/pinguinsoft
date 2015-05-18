#!/bin/bash

for file in *
do 
  if [ -d $file ]; then
    # rm -rfv $file
     continue
  fi
  pname=`grep "pname" $file | cut -d : -f2`
  pleiter=`grep "pleiter" $file | cut -d: -f2`
  echo $pleiter
  pleiter=${pleiter%?}
  pmitarbeiter=`grep "pmitarbeiter" $file | cut -d: -f2`
  pname=${pname%?}
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
