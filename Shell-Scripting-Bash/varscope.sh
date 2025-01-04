#!/bin/bash

# Variable scope 

var1=a
var2=b

my_var(){
   local var1=c
   local var2=d

    echo "Inside Function"
    echo "var1 is $var1"
    echo "var2 is $var2"
}
echo "Before executing the function"
echo "var1 is $var1"
echo "var2 is $var2"

my_var
echo "After executing the function"
echo "var1 is $var1"
echo "var2 is $var2"