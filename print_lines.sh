#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy Chemikela
Date:20/09/2000
Description: Write script to print contents of file from given line number to next given number of lines.
Sample input:bash print_lines.sh 5 5 text.sh
Sample output:
text5
text6
text7
text8
text9
Doc

if [ $# -ne 3 ] # Check if the correct number of arguments is provided
then
    echo "Error: arguments missing!
Usage: ./file_filter.sh start_line upto_line filename
For eg. ./file_filter.sh 5 5 <file>"
   exit 1
fi

total=`cat "$3" | wc -l` # Calculate the total number of lines in the specified file
sum=$(($1 + $2)) # Calculate the sum of $1 and $2
sum1=$((sum - 1)) # Calculate sum1 as sum - 1.This is used to determine the range of lines to extract.

if [ $sum1 -le $total ] # Check if sum1 is less than or equal to total
then
    head  -$sum1 $3 | tail -$2  # Print the specified lines from the file using head and tail
else
    # Display an error message if the arguments exceed the number of lines in the file
    echo "Error: $3 is having only $total lines. file should have atleast $sum1 lines"
fi

 
