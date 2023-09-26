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
echo "Error: Please pass the file name through command line."
else
 sed -i '/^[[:space:]]*$/d' $1
 echo "Empty lines are deleted"
cat $1
fi
