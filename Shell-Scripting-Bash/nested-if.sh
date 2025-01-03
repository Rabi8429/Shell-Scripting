#!/bin/bash

#nested if example

read -p "Enter the frist number:" n1
read -p "Enter the second number:" n2
read -p "Enter the third number:" n3

 if [[ $n1 -gt $2 ]]; then 
 if [[ $n2 -gt $n3 ]]; then
 echo "$n1 is the grater number"
 else
 echo "$n3 is the grater number"
 fi
 else 
 if [[ $n2 -gt $n3 ]]; then
 echo "$n2 is grater"
else 
echo "$n3 is grater"
fi
fi