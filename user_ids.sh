#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy Chemikela
Date:25/09/2023
Description:Count the number of users with user IDs between given range
Sample input:./user_ids.sh
Sample output:Total count of user ID between 500 to 10000 is : 1
Doc

array=(`cat /etc/passwd | cut -d ":" -f3`) # Read user ids and store in array 

length=${#array[@]} # To find length of an array

# Check the number of command-line arguments
if [ $# -eq 0 ]
then
    # Initialize count 
    count=0

    # Loop through the array of user ids
    for i in seq 0 $(($length-1))
    do
        # Check if the user id is in the range of 500 to 10000
        if [ ${array[$i]} -ge 500 -a ${array[$i]} -le 10000 ]
        then
            # Increment the count 
            count=$((count+1))
        fi
    done

    # Print the total count of user IDs within the specified range
    echo "Total count of user ID between 500 to 10000 is : $count"
elif [ $# -eq 2 ]
then
    # Check if the first cla is less than the second
    if [ $1 -lt $2 ]
    then
        # Initialize a count 
        count=0

        # Loop through the array of user Ids
        for i in seq $(($length-1))
        do
            # Check if the user id is in the specified range
            if [ ${array[$i]} -ge $1 -a ${array[$i]} -le $2 ]
            then
                # Increment the count 
                count=$(($count+1))
            fi
        done

        # Print the total count of user ids within the specified range
        echo "Total count of user ID between $1 to $2 is : $count"
    else
        # Print an error message if the range is invalid
        echo "Error : Invalid range. Please enter the valid range through CL."
    fi
else
    # Print an error message if the number of cla is not 2
    echo -e "Error : Please pass 2 arguments through CL.\nUsage : ./user_ids.sh 100 200"
fi

