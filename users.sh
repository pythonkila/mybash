!#/bin/bash

#Create user accounts and set password to change on first login.

clear
echo "Please provide a username"
read name

grep $name /etc/passwd >/dev/null && echo "user already exist" || echo "user will be created"
pass="$name"1234

echo "A password is been created for $name"
echo "Press enter to continue"
read 

useradd $name && echo "$name:$pass" | chpasswd 
passwd -e $name
