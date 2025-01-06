#!/bin/bash
# Check the particuler website is up or down!
read -p "Enter the website name:" website
for site in $website
do 
if curl -I "$site" 2>&1 | grep -w "200\|301" ; then
echo "$site is up"
else 
echo "$site is down"
fi
done

#read -t 10 -p "Enter the domain name:" domain_name