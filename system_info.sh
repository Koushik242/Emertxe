#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc

new=y # Initialize the 'new' variable with 'y' to start the loop.

while [ $new = y -o $new = Y ] # Start an infinite loop that continues as long as 'new' is 'y' or 'Y'.
do
    echo "1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process."
   
    read -p "write the character:" choice # Read the user's choice and store it in the 'choice' variable.

    case $choice in  # Use a case statement to execute different actions based on our requirements.
    1)
         echo "1. Currently logged user is `who`" ;;
    2)
         echo "2. Your shell directory is `echo $SHELL`" ;;
    3)
         echo "3. Home directory is `echo $HOME`" ;;
    4)
         echo "4. OS name & version is `uname`" ;;
    5)
         echo "5. Current working directory is `pwd`" ;;
    6)
         echo "6. Number of users logged in is `who -q`" ;;
    7)
         echo "7. Show all available shells in your system is `cat /etc/shells`" ;;
    8)
         echo "8. Hard disk information is `hwinfo`" ;;
    9)
         echo "9. CPU information is `lscpu`" ;;
    10)
         echo "10. Memory information is `lsmem`" ;;
    11)
         echo "11. File system information is `df`" ;;
    12)
         echo "12. Currently running process is `ps`" ;;
    *)
         echo "Error: Invalid option, please enter a valid option" ;;
    esac

    read -p "Do you want to continue (y/n):" new  # Ask the user if they want to continue (y/n) and store the response in 'new'.

done   # End of the while loop.
