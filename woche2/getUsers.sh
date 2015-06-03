#!/bin/bash
regex='[-[:alnum:]]*:[[:alnum:]]*:[0-9]*:[0-9]*:[-[:alpha:]]* [-[:alpha:]]*,*:/home/.*'
egrep "$regex" /etc/passwd | cut -d: -f1,5,7 > Benutzerdaten.txt

return
