#!/bin/bash


# color=("Blue" "Red" "Brown"); echo ${color[@]}
color=("Blue" "Red" "Brown");
echo  ${color[@]}

#Another example

#array_name = ([index1]=element1 [index2]=element2 [indexN]= elementN)

color=([1]=Blue [2]=Red [3]=Brown);
echo ${color[1]}; 
echo ${color[2]}

# or we can wirte oneline; color=([1]=Blue [2]=Red [3]=Brown); echo ${color[1]}; echo ${color[2]}