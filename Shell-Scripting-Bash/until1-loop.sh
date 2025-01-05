#!/bin/bash
# untl loop another example

count=10
a=20
b=30
until [[ $a -lt $count || $b -lt $count ]]; do
echo "a : $a, b : $b"
((a--))
((b--))
done