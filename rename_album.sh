#!/bin/bash
<< Doc
Name:Venkata Sai Kowshiknath Reddy Chemikela
Date:17/09/2023
Description:Given album name and corresponding directory, this script renames the .jpg files with new name passed through command line.
Sample input:bash rename_album.sh day_out
Sample output:
All .jpg files in current directory is renamed as
day_out001.jpg day_out002.jpg day_out003.jpg day_out005.jpg day_out004.jpg
Doc

#!/bin/bash

# Check if a prefix name is provided as a command line argument
if [ $# -eq 0 ]
then
# If prefix name is not provided pass this error message
    echo "Error: Please pass the prefix name through the command line." 
else
    # Loop through all .jpg files in the current directory
    for i in `ls *.jpg`
    do
        # Extract the digits from the filename using 'tr'
        digit=`echo $i | tr -cd [:digit:]`

        # Create the new filename by combining the prefix, extracted digits, and .jpg extension
        rename=`mv $i $1$digit.jpg`
    done

    # Get a list of all .jpg files in the directory
    print=`echo *.jpg`

    # Display a message indicating that all .jpg files have been renamed
    echo -e "All .jpg files in this directory are renamed as:\n$print"
fi
