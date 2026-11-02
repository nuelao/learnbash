#!/bin/bash
set -eu
#args.sh: shows how arguments arrive in a script

echo "Script_name: $0"	#shows the name of the script
echo "Count: $#"	#shows the number of argument entered
echo "First: ${1:-None}"	#Shows the first argument
echo "Second: ${2:-None}"	#shows the second argument
echo "All: $@"	#shows all arguments entered


