#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc
read -p "Enter a Number:" num
for i in `seq $num`
do
    for j in `seq $i`
    do
	echo -n "$j"
    done
    echo
done

