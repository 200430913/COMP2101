#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
usrname="$USER" #environment variable is used to get username dynamically
hostname="$(hostname)" #environment variable is used to get hostname dynamically
day=$(date +%A) # date command is used to get what is the day of the week it its
currenttime=$(date +%I:%M\ %p) #date command is used to get today's date 

###############
# Main        #
###############
if [ "$day" = Monday ]; # using if else command to test day name and adding practise line to print message by using  day name
then
csay="Welcome to planet $hostname, the great teacher $usrname!"
elif [ "$day" = Tuesday ];
then
csay="Welcome to planet $hostname, great core support person $usrname!"
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, tech support $usrname!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, comedian $usrname!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, licenced hacker $usrname!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, smocker $usrname!"
else
csay="Welcome to planet $hostname, non-smocker $usrname!"
fi
cowsay "$csay It is $currenttime on $day ."
