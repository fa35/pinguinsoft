#!/usr/bin/env bash

groupadd pa
groupadd pl
groupadd ewa
groupadd sb

useradd -M -N --groups pl,pa pla
echo "pla:osz" | chpasswd
useradd -M -N --groups pl plx
echo "plx:osz" | chpasswd
useradd -M -N --groups ewa,pa ewa
echo "ewa:osz" | chpasswd
useradd -M -N ewx
echo "ewx:osz" | chpasswd
useradd -M -N --groups sb,pa sb
echo "sb:osz" | chpasswd

mkdir -p /home/michael/temp/projekte/projekt_a/docs
mkdir -p /home/michael/temp/projekte/projekt_a/org
mkdir -p /home/michael/temp/projekte/projekt_a/src
mkdir -p /home/michael/temp/projekte/projekt_a/temp

chown root:pl  /home/michael/temp/projekte/
chown  pla:pa  /home/michael/temp/projekte/projekt_a
chown  pla:pa  /home/michael/temp/projekte/projekt_a/docs
chown  pla:sb  /home/michael/temp/projekte/projekt_a/org
chown  pla:ewa /home/michael/temp/projekte/projekt_a/src
chown  pla:ewa /home/michael/temp/projekte/projekt_a/temp

chmod 751 /home/michael/temp/projekte/
chmod 710 /home/michael/temp/projekte/projekt_a
chmod 750 /home/michael/temp/projekte/projekt_a/docs
chmod 770 /home/michael/temp/projekte/projekt_a/org
chmod 775 /home/michael/temp/projekte/projekt_a/src
chmod 770 /home/michael/temp/projekte/projekt_a/temp
