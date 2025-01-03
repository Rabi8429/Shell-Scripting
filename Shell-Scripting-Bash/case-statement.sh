#!/bin/bash
#case statement

echo "Which color you like:" 
echo "1 - Blue"
echo "2 - Red"
echo "3 - Yellow"
echo "4 - Green"
echo "5 - Orange"

read color 

case $color in 
1) echo "Blue is a primary color.";;
2) echo "Red is a Primary color.";;
3) echo "Yellow is a Primary color.";;
4) echo "Green is Secondary color.";;
5) echo "Orange is Secondary color.";;
*) echo "This color not available. Please choose the different color.";;
esac