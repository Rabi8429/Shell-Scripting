Commandline agruments positional paramiters:

$1-$9 -positional arguments
$10 $n - positional argumnets after nine
$0  - number of the script 
$#  -total number of arguments
$$ -PID of the script 

(-t) used for timeout
(-s) used for silent # Most probably user for password. read -s -p "Enter password:" passwd
(-p) used for print



#############################
 Conditional statements.
############################

1. What is conditional statements?
Ans: Conditianal statements allows us to perform different actions based on different conditions.
2. Types of conditional statements;
    (i) if statemants
    (ii) if else statements
    (iii) if elif statements
     (iv) nested if statements
     (v) Case state statements

3.  Condition Operators
      -eg for Equal(=)
      -lt/le  for lessthan (<)
      -gt/ge for graterthan (>) 

      == for equal
      != for not equal
      ! for not
      -d used for directory existing
      -e user for file  existing
      -r used for read
      -w used for write
      -x used for executed

4. if statements:
syntax:

    if [ condition ]; then

     command(s)
    # code to execute if condition is True
     fi

     Example: 
       read -p "What is your age:" age
       if [ $age -lt 18 ]; then
        echo "you are not elgible for voting"
        if
    
    # if statements another example

      echo "Enter any number:"
       read n
       if [ $n -gt 100 ]; then
       echo "$n is greater than 100"
       fi

5. if-else statement:
   syntax: 
    
    if [ condition ]; then
     command(s)
     else
    # code to execute if no conditions are True
     fi

    Example: 
       read -p "What is your age:" age
       if [ $age -lt 18 ]; then
        echo "you are not elgible for voting"
       else 
         echo "You are eligible for voting"
        fi 

6. if-elif-else statement:
   syntax:
    
    if [ condition ]; then
       command(s)
      # code to execute if condition is True
    elif [ another_condition ]; then
        command(s)
      # code to execute if another_condition is True
    else 
      command(s)
      # code to execute if no conditions are True
    fi
  example
    read -p "Enter the marks:" marks

    if (( $marks >= 90 )); then
    echo "Grade is A+"
    elif (( $marks < 90 && $marks >= 80  )); then
    echo "Grade is A"
    elif (( $marks < 80 && $marks >= 70 )); then
    echo "Grade is B"
    elif (( $marks < 70 && $marks >= 50  )); then
    echo "Grade is C"
    else
    echo "Grade is F"
    fi
7. nested if
    syntax:
  
  example:
   read -p "Enter the frist number:" n1
   read -p "Enter the second number:" n2
   read -p "Enter the third number:" n3

   if [[ $n1 -gt $n2 ]]; then 
   if [[ $n2 -gt $n3 ]]; then
   echo "$n1 is the grater number"
   else
   echo "$n3 is the grater number"
   fi
   else 
   if [[ $n2 -gt $n3 ]]; then
   echo "$n2 is grater"
   else 
   echo "$n3 is grater"
   fi
   fi


8. Case statements
    syntax:
     
     case $var in 
      pattern1)
      command(s)
      pattern2)
      command(s)
      *)
      command(s)
      esac

    example:
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



    ######################################
               Functions
    ######################################

1. What is Functions?
   
   ans: A set of commands which can be called several times with is bash script.
  
  Purpose: 
   * To make code more readable.
   * Avoid to write same code again nad again.
     
   Sysntax of function:
     
       function_name() {             

        commands
       }
             OR
         Compact

         functionName(){ commands }


      example: 
        print_me(){
         
         echo " You have been printed"    # this called function body

        }

        print_me # calling a function

  Another way:
      function print {


      }
     print


2. Passing arguments:

     eg:-
     pass_args(){

     echo " Today's Random no is : $1 "
 
     }
      pass_args  $RANDOM


3. Variable scope
   
  * Till now we used global variable.
  * For local variable #  local vl=2
     
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


4. Returning value:
  Bash function can also return the value.

  Eg.
    
    add () {
      result=$ (($1 + $2))
    }
    add 1 2
    echo " The sum is : $result "

        ######################################################
                    Loops
        ######################################################
1. What is loop?

   ans: It is use to perform repetitive task. 

2. typer of loop     
  * For loop
  * While loops

   **** For Loop
        sysntax:
        
        for variable in <list>
        do
        command(s)
        done

        example:
          echo "List Partition under the disk"
          for i in /dev/sda*; do
          echo "$i"
          done

        another example in oneline:
         for i in {1..5}; do echo "NUMBER: $i"; done   # semicolon(;) used for break the line

    Another example for loop with if condition:

    
    for i in {1..10};
    do 
    #if [ $((i%2))  = 0 ]; then 
    #echo "$i number is even"
    if [ $((i%2))  != 0 ]; then
    echo "$i number is odd"
    else
    echo "$i number is even"
    fi
    done
  
**** While loop ****

syntax:
 
  while [expression]
  do 
  command(s)
  done

  example
    read -p "Enter the number to print the table:" num
    i=1
    while [ $i -lt 10 ]  #while [ $i -le 10 ]
    do 
    echo "$num * $i = $((num*i))"
    i=$((i+1))
    done