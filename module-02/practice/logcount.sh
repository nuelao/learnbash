#!/bin/bash
set -eu

#logcount.sh: counts Error lines in a log file

log_file="$1"	#takes in the argument
errors=$(grep -c -i "Error" "$log_file") 	#searches for the pattern

echo "Errors in $log_file: $errors"
