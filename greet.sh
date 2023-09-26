#!/bin/bash
<< Doc
Name:Venkata Sai Koushiknath Reddy Chemikela
Date:14/09/2023
Description:Write script called say_hello, which will print greetings based on time
Sample input:When we start shell (whenever you opening new tab or terminal)
Sample output:
Good Morning user, Have nice day!
This is Thursday 14 in September of 2023 (10:44:10 AM)
Doc

current_hour=$(date | cut -d' ' -f4 | cut -d':' -f1) # Get the current hour from the system date

get_greeting() # Define a function to get the appropriate greeting based on the current hour
{
if [ $current_hour -ge 5 -a $current_hour -lt 12 ]
then
    echo "Good morning"
elif [ $current_hour -ge 12 -a $current_hour -lt 13 ]
then
    echo "Good noon"
elif [ $current_hour -ge 13 -a $current_hour -lt 17 ]
then
    echo "Good afternoon"
elif [ $current_hour -ge 17 -a $current_hour -lt 21 ] 
then
    echo "Good evening"
else
    echo "Good night"
fi
}
greeting=$(get_greeting) # Call the function to get the greeting message

current_datetime=$(date +"%A %d in %B of %Y (%I:%M:%S %p)") # Get the current date and time in a specific format

echo "$greeting user, Have a nice day!" # Display the greeting and current date/time
echo "This is $current_datetime"


