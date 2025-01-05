#!/bin/bash
#until loop

count=10
i=20

until [ $i -lt $count ]; do 
echo "$i"
((i--))
done

