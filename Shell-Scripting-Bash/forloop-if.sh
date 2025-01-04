#!/bin/bash

# forloop with if condition

for i in {1..10};
do 
#if [ $((i%2))  = 0 ]; then 
#echo "$i number is even"
if [ $((i%2))  != 0 ]; then
echo "$i number is odd"
else
echo "$i number is even"
fi
done
