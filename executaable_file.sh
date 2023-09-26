#!/bin/bash
<< Doc
Name:
Date:
Description:
Sample input:
Sample output:
Doc
#!/bin/bash

# Split the $PATH variable into an array using ':' as the delimiter
arr=(`echo $PATH | tr ":" " "`)

# Initialize a variable to keep track of the total count
total_count=0

# Loop through each directory in the array
for i in "${arr[@]}"; do
    # Check if the directory exists
    if [ -d "$i" ]; then
        # Change to the directory
        cd "$i" || continue
        
        # Initialize a variable to count executable files in this directory
        dir_count=0
        
        # Loop through the files in the directory
        for j in *; do
            # Check if the file is executable
            if [ -x "$j" ]; then
                ((dir_count++))
            fi
        done
        
        # Display the directory and the number of executable files
        echo "Current dir: $i"
        echo "current count: $dir_count"
        echo "-------------------------"

        # Add the count for this directory to the total count
        total_count=$((total_count + dir_count))

        # Return to the original directory
        cd - >/dev/null
    fi
done

# Display the total count of executable files
echo "Total - $total_count"

