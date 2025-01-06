#!/bin/bash
# Check the particuler website is up or down!
for site in www.google.com
do 
if curl -I "$site" 2>&1 | grep -w "200\|301" ; then
echo "$site is up"
else 
 echo "$site is down"
fi
done