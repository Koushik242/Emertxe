#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc

rows=8
columns=8
for i in `seq $rows`
do
  for j in `seq $columns`
  do
      sum=$((i+j))
      rem=$((sum%2))
    if [ $rem -ne 0 ]
    then
      echo -e -n "\e[40m" " "
    else
      echo -e -n "\e[47m" " "
    fi
  done
echo -e -n "\e[0m\n" 
done







