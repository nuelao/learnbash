#!/bin/bash
set -eu

#diskreport.sh: Prints a space report of a directory.

#set variables
machine=$(hostname)
user=$(whoami)
date=$(date "+%F %T")
directory=${1:-~}


#Free space on this disk
free_space=$(df -h "$directory")

#Size of a directory
dir_size=$(du -sh "$directory")

#Ranking 5 biggest in the directory
size_rank=$(du -sh "$directory"/* | cut -d " " -f 1 | sort -hr | head -n 5)



#Output
echo "=========================Disk Report=========================="
echo "Machine:	$machine"
echo "User: $user"
echo "Date: $date"
echo "Directory: $directory"

echo "=================Free Space on this disk=================="
echo "$free_space"

echo "=================Size of this directory=================="
echo "$dir_size"

echo "=================Five Biggest Files Inside this Directory=================="
echo "$size_rank"

exit 0
