#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc
read -p "Enter a Number:" num
a=1
for i in `seq $num`
do
    for j in `seq $i`
    do
	echo -n "$a "
	a=$((a+1))
    done 
    echo 
done
