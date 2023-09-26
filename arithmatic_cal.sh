#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc
   
  if [ "$#" -ne 3 ]
  then
  if [ "$#" -eq 0 ]
  then
   echo "Error: Please pass the arguments through command line.
Usage:./arithmatic_calc.sh 2.3 + 6.7"
else
    echo "Error: Please pass 3 arguments.
Usage:./arithmatic_calc.sh 2.3 + 6.7"

  fi    
        
      exit 1
  fi

operand1="$1"
operator="$2"
operand2="$3"
case "$operator" in
 
    +)   result=$(echo "$operand1 + $operand2" | bc);;
    
    -)   result=$(echo "$operand1 - $operand2" | bc);;
    
    x)   result=$(echo "$operand1 * $operand2" | bc);;
    
  
    /) if [ "$operand2" -eq 0 ]
    then
      echo "Error: Division by zero is not allowed."
      exit 1
    fi
    result=$(echo "scale=2; $operand1 / $operand2" | bc);;
    
  
    *)    echo "Error: Invalid operator. Please use +, -, x, or /."
   exit 1    
esac

echo "$operand1 $operator $operand2 = $result"       

