#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy Chemikela
Date:26/09/2023
Description:Write a script to determine whether a given file system or mount point is mounted
Sample input:./mounted_fs.sh /dev/sda2
Sample output:
File-system rootfs is mounted on /init and it is having 1% used space with 1931172KB free
Doc

# Create an array 'array' containing the file system names from the 'df' command
array=(`df | tr -s " " | cut -d " " -f1`)

# Create an array 'mountpoint' containing the corresponding mount points
mountpoint=(`df | tr -s " " | cut -d " " -f6`)

# Create an array 'used' containing the used space percentages
used=(`df | tr -s " " | cut -d " " -f5`)

# Create an array 'available' containing the available space in bytes
available=(`df | tr -s " " | cut -d " " -f4`)

# Get the length of the 'array'
length=${#array[@]}

# Initialize a flag to check if the file system is found
flag=1

# Check if exactly 1 command-line argument is provided
if [ $# -eq 1 ]
then
    # Loop through the array of file systems
    for i in `seq 0 $((length-1))`
    do
        # Check if the provided file system name matches an entry in 'array'
        if [ $1 = ${array[i]} ]
        then
            # Print information about the file system, mount point, used space, and available space
            echo "File-system $1 is mounted on ${mountpoint[i]} and it is having ${used[i]} used space with ${available[i]}KB free"

            # Set the flag to 0 to indicate that the file system was found
            flag=0

            # Exit the loop
            break
        fi
    done

    # Check if the flag is still 1, indicating that the file system was not found
    if [ $flag -eq 1 ]
    then
        echo "$1 is not mounted"
    fi
else
    # Print an error message if the number of command-line arguments is not 1
    echo "Error : Please pass the name of the file-system through the command line"
fi
