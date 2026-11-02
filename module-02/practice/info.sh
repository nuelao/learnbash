#!/bin/bash
set -eu

#info.sh: prints a short sumary of this machine and folder

user=$(whoami)
host=$(hostname)
today=$(date +%F)
folder=$(pwd)
files=$(ls | wc -l)

#info that will be printed on screen

echo "User: $user" 	#shows username
sleep 1
echo "Host: $host"	#shows hostname
sleep 1
echo "Date: $today"	#shows today's date
sleep 1
echo "Folder: $folder"	#shows the current location
sleep 1
echo "Num_of_files: $files"	#shows the number of files
