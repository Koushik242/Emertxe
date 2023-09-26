#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc

num=$1   #This line assigns the first command-line argument to the variable "num"

operator=${num: -1}  #It extracts the last character of the num variable and stores it in the operator variable

result=${num:0:1} #This line extracts the first character of num and stores it in the result variable

length=${#num} #It calculates the length of the entire num string

if [ $# -eq 0 ]  #This conditional checks if there are no command-line arguments passed to the script
then
    echo "Error: Please pass the arguments through command line."
else
case "$operator" in  #This is a case statement that evaluates the value of operator to determine the mathematical operation to perform.
  +)

    for i in `seq 1 $(($length-2))` #
    do
      digit=${num:$i:1}
     result=$((result+digit))
    done
    echo "Sum of digits= $result"
    ;;
  -)

   for i in `seq 1 $(($length-2))`
    do
      digit=${num:i:1}
      result=$((result-digit))
    done
    echo "Subtraction of digits= $result"
    ;;
  x)

    for i in `seq 1 $(($length-2))`
    do
      digit=${num:i:1}
      result=$((result*digit))
    done
    echo "Multiplication of digits= $result"
    ;;
  /)

    for i in `seq 1 $(($length-2))`
    do
        digit=${num:i:1}
        result=`echo "scale=2; $result/$digit" | bc`
    done
    echo "Division of digits= $result"
    ;;
  *)
      echo "Error: Operator missing or invalid operator, please pass operator as the last digit (+, -, x, /)"
    ;;
esac
fi




