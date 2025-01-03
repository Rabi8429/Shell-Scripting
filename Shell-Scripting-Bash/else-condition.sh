#!/bin/bash

# This is if-else Condition example 

read -p "What is your age:" age
       if [ $age -lt 18 ]; then
        echo "You are not elgible for voting"
       else 
         echo "You are elgible for voting"
        fi