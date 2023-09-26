#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc
if [ $# -eq 0 ]
then 
    echo "Error : Please pass the arguments through command-line."
else
    array=($@)
for i in `seq ${#array[@]}`
do
    b=i-1
    a=${#array[b]}
    echo "Length of string (${array[b]}) - $a"
done
fi

