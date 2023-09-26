#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy Chemikela
Date:25/09/2023
Description:For each directory in the $PATH, display the number of executable files in that directory
Sample input:/executable_path.sh
Sample output:
Current directory: /usr/local/sbin
current count: 0
Current directory: /usr/local/bin
current count: 0
Current directory: /usr/sbin
current count: 0
Current directory: /usr/bin
current count: 1
Current directory: /sbin
current count: 0
Current directory: /bin
current count: 1
Current directory: /usr/games
current count: 0
Current directory: /usr/local/games
current count: 0
Current directory: /usr/lib/wsl/lib
current count: 0
Current directory: /mnt/c/WINDOWS/system32
current count: 0
Current directory: /mnt/c/WINDOWS
current count: 0
Current directory: /mnt/c/WINDOWS/System32/Wbem
current count: 0
Current directory: /mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/
current count: 0
Current directory: /mnt/c/WINDOWS/System32/OpenSSH/
current count: 0
Current directory: /mnt/c/Users/koush/AppData/Local/Microsoft/WindowsApps
current count: 0
Current directory: /mnt/c/Users/koush/AppData/Local/GitHubDesktop/bin
current count: 0
Current directory: /snap/bin
current count: 0
Total - 2 
Doc

# Split the PATH variable into an array by using ':' as the delimiter
array=(`echo $PATH | tr ":" " "`)

# Initialize a variable to store the total count of executable files
total=0

# Iterate over each directory in the PATH array
for i in ${array[@]}
do
    # Check if the current item in the array is a directory
    if [ -d $i ]
    then
        # Initialize a count for executable files in the current directory
        count=0
        
        # Print the name of the current directory
        echo -e "Current directory: $i"
        
        # Change the current working directory to the current directory
        cd $i
        
        # Create an array of files in the current directory & ls to execute ls command
        arrfiles=(ls)  

        # Iterate over each file in the current directory
        for j in ${arrfiles[@]}
        do
            # Check if the current file exists
            if [ -e $j ]
            then
                # Check if the current file is executable
                if [ -x $j ]
                then
                    # Increment the count of executable files
                    count=$((count+1))
                fi
            fi
        done

        # Print the count of executable files in the current directory
        echo -e "current count: $count"

        # Add the current count to the total count
        total=$(($total+$count))
    fi
done

# Print the total count of executable files in all directories
echo "Total - $total" 
