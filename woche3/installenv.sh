#!/usr/bin/env bash
pname=$1
pleiter=$2

pa=$pname
ewa=dev_$pname
pla=$pleiter

mkdir org
mkdir src
mkdir temp
mkdir docs

chown $pla:$pa  .
chown $pla:$pa  docs
chown $pla:sb   org
chown $pla:$ewa src
chown $pla:$ewa temp

chmod 710 .
chmod 750 docs
chmod 770 org
chmod 775 src
chmod 770 temp
