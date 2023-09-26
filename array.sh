#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc

read -p "Enter the Element of Array:" -a array

echo "array elements  are - ${array[@]}"
for var in ${array[@]}
do
    echo "$var"
done
