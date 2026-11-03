#!/bin/bash
set -eu

#backup.sh: copies file to a dated backup beside it

source_file="$1"	#takes in the file specified
backup_file="$source_file.bak-$(date +%F)"	#sets the format of the backup file with a timestamp

cp "$source_file" "$backup_file"	#makes a copy of the file
echo "Backed up $source_file to $backup_file" 	#message when it done
