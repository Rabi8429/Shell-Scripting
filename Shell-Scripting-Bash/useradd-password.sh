#!/bin/bash

if [ $(id -u) -eq 0 ]; then
       read -p "Enter the username :" username
       read -s -p "Enter the password :" password
       egrep "^$username"  /etc/passwd >/dev/null
       if [ $? -eq 0 ]; then
                echo "$username exists!"
                exit
        else
              pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
              useradd -m -p "$pass" "$username"
              [ $? -eq 0 ] && echo "User has been added" || echo "Filed to add a user"
        fi
else
        echo "Only root user can add a user"
        exit
fi