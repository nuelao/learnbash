#!/bin/bash
set -eu

#greet.sh: greets a person in place.

name="${1:-friend}"	#if an argument is not entered, fallback to friend
place="${2:-the terminal}"	#if an argument is not entered, fallback to terminal

echo "Hello $name, welcome to $place"
