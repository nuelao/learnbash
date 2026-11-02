#!/bin/bash

set -eu

#var.sh: practice variables and quoting

name="Alice"
greeting="Hello"

echo "$greeting, $name"
echo '$greeting, $name'
echo "${name}_2026"
echo "Two plus three is $(( 2 + 3 ))"
