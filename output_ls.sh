#!/bin/bash
<< Doc
Name:
Date::
Description:
Sample input:
Sample output:
Doc

if [ $# -eq 0 ]
then
    # If there are no command-line arguments then list files in the current directory.
    echo *
elif [ $# -ne 0 ]
then
    # If there are command-line arguments execute the following loop for each argument.
    for i in $@   # To list all the arguments passed to the script.
    do
        if [ -d $i ]
        then
            # If the argument is a directory (-d), do the following:
            pwd $i        # Print the current working directory.
            cd $i         # Change the current working directory to the argument.
            echo *        # List files in the new current directory.
        else
            echo "No such a file or directory."  # If the argument is not a directory or doesn't exist display an error message.
        fi
    done
fi


