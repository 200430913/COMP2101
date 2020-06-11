#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null| # file commabnd  is used to find
sort -k 3 #-k means to find short cut in looks 
# -executeable is used to execute the command 
# 2000 uid permission find
# 2>/dev/null garbages the errors
echo ""
echo "Setgid files:"
echo "============="
find / -type f -executable -perm -2000 -ls 2>/dev/null| #-2000 for gid permission find
sort -k 6
echo ""
echo "10 largest files in system are:"
echo "==============================="
find / -type f -exec ls -alh --block-size=M {} \; 2>/dev/null| # --block size it will convert all size into memory MB and {} \; will execute all commands on each findings
sort -rh -k5| #sort -rh sort in  reverse
head| #head means first 10 line by default
awk '{print $9, $3, $5}' #it will print 9 column 5 column and 3 column 
echo ""



