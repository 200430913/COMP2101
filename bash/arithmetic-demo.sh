#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

read -p "Input1? " firstnumber # read command is used to get number 3 from the user 
read -p "Input2? " secondnumber # read command is used to get number 3 from the user 
read -p "Input3? " thirdnumber # read command is used to get number 3 from the user 
sum=$((firstnumber + secondnumber + thirdnumber)) # Assigning  the total of the 3 numbers into variable
product=$((firstnumber * secondnumber * thirdnumber)) # Assigning  the product of the 3 numbers into variable

cat <<EOF
The sum of $firstnumber , $secondnumber and $thirdnumber numbers is $sum	
The product of $firstnumber , $secondnumber and $thirdnumber numbers is $product
EOF
