#!/bin/bash
regex='[-[:alnum:]]*:[[:alnum:]]*:[0-9]*:[0-9]*:[-[:alpha:]]* [-[:alpha:]]*,*:/home/.*'
egrep "$regex" /etc/passwd | cut -d: -f1,5,7 > Benutzerdaten.txt

return
while read line
do
  #IFS=':' read -a array <<< "$line"
  array=( ${line//:/ } )
  echo ${array[0]}
  echo ${array[4]}
  echo ${array[6]}
  echo "\n"
done < temp.txt
rm temp.txt
