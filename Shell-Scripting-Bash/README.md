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

    infinite while exmaple:

    while :
    do 
    echo "Hello World"
    Done

  **** Until loop ***
      * The block of statements are executed until the expression returns the true.

      syntax:
       until [expression]; do 
          statement(s)
          done
       
       example:

       count=10
       i=20

       until [ $i -lt $count ]; do 
       echo "$i"
       ((i--))
       done

       # another until loop example
        count=10
        a=20
        b=30
        until [[ $a -lt $count || $b -lt $count ]]; do
        echo "a : $a, b : $b"
        ((a--))
        ((b--))
        done

    ##############################
           Bash array
     ############################        

    ** It is collection of elements

    Initilize the array
         =  
         ()
    syntax:
      array_name = (element1 element2 elementN)  # without index

      array_name = ([index1]=element1 [index2]=element2 [indexN]= elementN)

      Example:
       color=([1]=Blue [2]=Red [3]=Brown); echo ${color[1]}; echo ${color[2]}
             or
        color=("Blue" "Red" "Brown"); echo  ${color[@]}  # print the all color at oneline

  *** Length of an array
     syntax:
      
      ${#arrayname [@]}

      example: 
       len=${#color [@]}

       #  len=${#color [*]}

  ** Access elements of array using index
    example
    color=("Red" "Brown" "Blue") 
    echo ${color[0]};
    echo ${color[1]};
    echo ${color[2]}

      or
  color=("Blue" "Red" "Brown" "Black"); echo ${color[0]}; echo ${color[1]}; echo ${color[2]}


        #############
          Bash Read File
        ##############

    example:
      var=`cat fs.txt`; echo $var    # here fs.txt is simple file name

      or same, read this file creating variable file

      var=$(<fs.xt)
      echo $var

      #################
      Bash Date & Time
     ####################

     current date & time
      # date
      Example: dt=$(date); echo $dt

    ***** Bash date format***
    By default we print date-month-year  command is 
      date +%m-%d-%Y
      # when you use in bash script
      example:
      dt=`date +%m-%d-%Y`; echo $dt

  **** current date***
  sysntax:
    date +%Y # for the current year
    yr=$(date +%y); echo "Current Year is : $yr
    date +%m # for current month
    date +%d # for corrent day

   **** Current Month****
   January (Full month name ) command: date +%B

   mth=$(date +%B); echo "Month Full Name is : $mth"

   01 (number) command: date +%m  

    mth=$(date +%m); echo "Month Name is : $mth"

   jan (short) command: date +%b

   mth=$(date +%b); echo "Month Name is : $mth"
  
  ***** Current weekdays****
   Sunday (full name ) command: date +%A

   dt=$(date +%A); echo "Today is $dt"

   Sunday (In number) command: date +%d

    dt=$(date +%d); echo "Today is $dt"
    
   Sunday (In short) command: date +%a

   dt=$(date +%a); echo "Today is $dt"

   *** Current Hour**
      for 24 hour : date +%H
      for 12 hour : date +%I

      $ if i get full time in 24 hour then: date +%T
      $ if i get full tile in 12 huor then: date +%r

      hr=$(date +%H); echo "Current hour: $hr" 

  *** Current Minutes ***
      for minutes: date +%M
     mn=$(date +%M); echo "Current Minutes: $mn"
  *** Current Second ***
     for second:  date +%S
     sec=$(date +%S); echo "Current Seconds: $sec"

     $ if i get full time in 24 hour then: date +%T
      $ if i get full tile in 12 huor then: date +%r

  #######################
    Bash Sleep
  #################
  ** Bash sleep command is used to insert a delay or pause the execution for a specific period of time.
  
   Syntax:
     sleep no[suffix]
     sleep 3[s- second]
     sleep  [m - minutes]
     sleep  [h - hours]
     sleep  [d - days] 

    #####################
       Script Example
    #######################

    *** Check user is root or not.
    example: if [[ $UID = "0" ]]; then
             echo "You are root user"
             else
             echo "You are not root user"
            fi
    *** Chek website UP or Down
    
        read -p "Enter the website name:" website
        for site in $website
        do 
        if curl -I "$site" 2>&1 | grep -w "200\|301" ; then
        echo "$site is up"
        else 
        echo "$site is down"
        fi
        done


 **** How to check system information****

       # system info

        #Hostname
        echo -e "******HOSTNAME INFORMATION*****"
        hostname
        echo ""

        # Disk space usage
        echo -e "*********DISK SPACE USAGE********"
        df -h
        echo ""

       # Current loged-in user
       echo -e "*********CURRENTLY LOGED-IN USER*********"
       who
       echo ""

      # Free or used Memory check
      echo -e "********FREE AND USED MEMORY*******"
      free
      echo ""

      #System UP time
      echo -e "*********SYSTEM UP TIME********"
      uptime
      echo ""
 
 ******Add a user to linux uncluding password****


      if [ $(id -u) -eq 0 ]; then
              read -p "Enter the username :" username
              read -s -p "Enter the password :" password
              egrep "^$username"  /etc/passwd >/dev/null
              if [ $? -eq 0 ]; then
                     echo "$username exists!"
                     exit
              else
                    pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
                    useradd -m -p "$pass" "$username"
                    [ $? -eq 0 ] && echo "User has been added" || echo "Filed to add a user"
              fi
      else
               echo "Only root user can add a user"
               exit
      fi