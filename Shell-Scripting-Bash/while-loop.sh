#!/bin/bash
#While loop

# Bash script to print Table.

read -p "Enter the number to print the table:" num
i=1
while [ $i -lt 10 ]  #while [ $i -le 10 ]
do 
echo "$num * $i = $((num*i))"
i=$((i+1))
done