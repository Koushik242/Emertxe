#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy
Date:25/09/2023
Description:Display the longest and shortest user-names on the system
Sample input:./largest_username.sh
Sample output:
The Longest Name is: systemd-timesync
The Shortest Name is: lp
Doc

# Read usernames from /etc/passwd using cut and store them in an array
i=( $(cut -d ":" -f1 /etc/passwd) )

# Initialize large and small with the first element
large=${i[0]}
small=${i[0]}

# Iterate through the array to find the longest and shortest names
for name in "${i[@]}"
do
    # Check if the current name is longer than the current large
    if [ ${#name} -gt ${#large} ]
    then
        large=$name
    fi
    # Check if the current name is shorter than the current small
    if [ ${#name} -lt ${#small} ]
    then
        small=$name
    fi
done

echo "The Longest Name is: $large"
echo "The Shortest Name is: $small"
  
