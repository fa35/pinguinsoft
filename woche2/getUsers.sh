#!/bin/bash
# first part - username: allow all alpha numeric characters and minus sign
# second part - password: usually just an x, meaning that the password is saved to the /etc/shadow file
# third part - user id: only a number
# fourth part - group id: only a number
# fith part - comment/user id info: Real Name or other text, alpha characters, including minus-sign
# with one(1) space between them. Allow it to be followed by some comma-characters (csv)
# sixth part - home directory: only match lines starting with /home/
# seventh part - login shell: actually not matched/filteres
regex='[-[:alnum:]]*:[[:alnum:]]*:[0-9]*:[0-9]*:[-[:alpha:]]* [-[:alpha:]]*,*:/home/.*'
egrep "$regex" /etc/passwd | cut -d: -f1,5,7 > Benutzerdaten.txt

return
