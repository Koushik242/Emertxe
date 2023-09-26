#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc
if [ $# -ne 0 ]  # Check if the number of command-line arguments is not equal to zero.
then
    if [ -f $1 ]  # Check if the first argument is a file.
    then
        if [ -s $1 ]  # Check if the file has contents (size greater than 0).
        then
            echo 1.Lower to Upper  # Display option 1.
            echo 2.Upper to Lower  # Display option 2.
            read -p "Please select option:" opt  # Prompt the user to select an option and store it in the 'opt' variable.
            case $opt in
                1)
                    cat $1 | tr [:lower:] [:upper:]  # If option 1 is selected, convert lowercase to uppercase and display the result.
                    ;;
                2)
                    cat $1 | tr [:upper:] [:lower:]  # If option 2 is selected, convert uppercase to lowercase and display the result.
                    ;;
            esac
        else
            echo "Error: No contents inside the file."  # Display an error message if the file is empty.
        fi
    else
        echo "Error : Please pass the file name through command line."  # Display an error message if the first argument is not a file.
    fi
else
    echo "Error : Please pass the file name through command line."  # Display an error message if no command-line arguments are provided.
fi
 
