#!/bin/bash
# Length of array

color=([1]="Blue" [2]="Red" [3]="Brown");
len=${#color[2]};
echo "Length of the array: $len"  

# oneline command 
# color=([1]="Blue" [2]="Red" [3]="Brown" ); len=${#color[@]}; echo "Length of the array: $len"

# color=("Blue" "Red" "Brown"); len=${#color[@]}; echo "Length of the array: $len" 
