#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc

if [ $# -eq 0 ] # Check if there are no command-line arguments.
then
    echo "Error: Please pass the argument through the command line.
Usage: ./sorting -a/-d 4 23 5 6 3"  
else 

num=("$@")  # Store the command-line arguments in an array named 'num'.
n=${#num[@]}  # Calculate the number of elements in the 'num' array.

case $1 in   # Use a case statement to check the first argument ($1).
    -a)  # Sort the array in ascending order using Bubble Sort.
        for i in `seq $((n-2)) -1 1`
       	do
            for j in `seq $i`
	    do
                if [ ${num[j]} -gt ${num[j+1]} ]
	       	then # Swap elements if they are out of order.
                    temp=${num[j]}
                    num[j]=${num[j+1]}
                    num[j+1]=$temp
                fi
            done
        done
        echo "Ascending order of array is ${num[@]:1}"  # Print the sorted array in ascending order.
        ;;
    -d)   # Sort the array in descending order using Bubble Sort.
        for i in `seq $((n-2)) -1 1`
       	do
            for j in `seq $i`
	    do
                if [ ${num[j]} -lt ${num[j+1]} ]
	       	then  # Swap elements if they are out of order.
                    temp=${num[j]}
                    num[j]=${num[j+1]}
                    num[j+1]=$temp
                fi
            done
        done
        echo "Descending order of array: ${num[@]:1}"  # Print the sorted array in descending order.
        ;;
    *)  # Handle invalid first argument.
        echo "Error: Please pass the choice
Usage: ./sorting -a/-d 4 23 5 6 3"
        ;;
esac
fi


    

	


