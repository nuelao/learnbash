#!/bin/bash
set -eu

#diskreport.sh: Prints a space report of a directory.

#set variables
machine=$(hostname)
user=$(whoami)
date=$(date "+%F %T")
directory=${1:-~}
uptime=$(uptime -p)
num_of_big_items=${2:-5}

#Free space on this disk
free_space=$(df -h "$directory")

#show memory on disk
memory=$(free -th)

#Size of a directory
dir_size=$(du -sh "$directory")

#Ranking 5 biggest in the directory
size_rank=$(du -sh "$directory"/* | cut -d " " -f 1 | sort -hr | head -n "$num_of_big_items")



#Output
echo "=========================Disk Report=========================="
echo "Machine:	$machine"
echo "User: $user"
echo "Date: $date"
echo "Directory: $directory"
echo "Uptime: $uptime"

echo "=================Free Space on this disk=================="
echo "$free_space"

echo "=================Memory space=================="
echo "$memory"

echo "=================Size of this directory=================="
echo "$dir_size"

echo "=================$num_of_big_items Biggest Files Inside this Directory=================="
echo "$size_rank"

exit 0
