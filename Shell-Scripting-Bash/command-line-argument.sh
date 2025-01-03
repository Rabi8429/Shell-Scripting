# argument variable
#!/bin/bash

 echo "The first two args $1 and $2"

# how to run this command # bash command-line-argument.sh  first second 
# first and second is my vriable that i am provide user input


# second example for argument varilable#
# add two numbers using CLA

sum=$(( $1 + $2 ))
echo "Sum =$sum"