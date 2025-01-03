#!/bin/bash
# This is if-else Condition another example !!!

read -p "Enter the username:" uname
read -s -p "Enater the password:" passwd 

if [[ $uname == "admin" && $passwd == "123" ]]; then
echo "Login Successful"
else
echo " invalid username and password. Please try again !!"
fi