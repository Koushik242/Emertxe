#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy Chemikela
Date:26/09/2023
Description:Write a script to replace 20% lines in a C file randomly and replace it with the pattern
Sample input:./replace_DEL.sh new.c
Sample output:
Before replacing:
#incude <stdio.h>
int main()
{
         printf(“Hello world\n”);
         return 0;
}
After replacing:
#incude <stdio.h>
<--------Deleted-------->
{
         printf(“Hello world\n”);
         return 0;
}
Doc

# Check if the correct number of arguments (1) is provided
if [ $# -ne 1 ]
then
    echo "Error: Please pass the file name as an argument."
    exit 1
fi

# Store the filename from the command-line argument
filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]
then
    echo "Error: $filename does not exist."
    exit 1
fi

# Check if the file is empty
if [ ! -s "$filename" ]
then
    echo "Error: $filename is an empty file. Cannot replace the string."
    exit 1
fi

# Count the number of lines in the file
line_count=$(wc -l < "$filename")

# Check if the file has more than 5 lines before performing the replacement
if [ "$line_count" -gt 5 ]
then
    echo "Before replacing:"
    cat "$filename"
    echo "After replacing:"
    p=$(($line_count / 5))
    
    # Generate a random list of line numbers to replace
    var=($(shuf -i 1-"$line_count" -n "$p"))
    
    # Replace the lines with "<--------Deleted-------->"
    for i in "${var[@]}"
    do
        sed -i "$i s/.*$/<--------Deleted-------->/" "$filename"
    done
    
    # Display the modified file
    cat "$filename"
else
    echo "Error: The file has 5 or fewer lines. Cannot replace the string."
fi

