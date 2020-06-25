#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

login_done="Password is correct."
undone="It's Incorrect."
referenceString="Password" # new variable is created to store password
read -s -p "Insert Password:" myString #receiving userinput for password and saving into $myString
echo
if [ $myString = $referenceString ]; then # using if-else condition 5 times to check whether the input is valid or not by comparing it with $referenceString.
 echo "$login_done"
 echo
 else
   echo "$undone"
   read -s -p "Insert Password:" myString
   if [ $myString = $referenceString ]; then
   echo "$login_done"
   echo
   else
       echo
       echo "$undone"
       read -s -p "Insert Password:" myString
 if [ $myString = $referenceString ]; then
      echo "$login_done"
      echo
    else
      echo
      echo "$undone"
	  read -s -p "Insert Password:" myString
if [ $myString = $referenceString ]; then
      echo "$login_done"
      echo
    else
      echo
      echo "$undone"
	  read -s -p "Insert Password:" myString
	if [ $myString = $referenceString ]; then
    echo "$login_done"
    echo
  else
    echo
    echo "Try again Next time::"
 fi
  fi
fi
fi
fi
