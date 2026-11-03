# Exercise 6: Special Variables

## Objective

Learn about useful built-in Bash variables.

## Commands

Create:

```bash
nano special-vars.sh
```

Contents:

```bash
#!/usr/bin/env bash

echo "Script name: $0"
echo "First argument: $1"
echo "Number of arguments: $#"
echo "All arguments: $@"
```

Run:

```bash
./special-vars.sh apple banana orange
```

## Expected Output

```text
Script name: ./special-vars.sh
First argument: apple
Number of arguments: 3
All arguments: apple banana orange
```

## Key Concepts

```bash
$0
```

Script name.

```bash
$#
```

Number of arguments supplied.

```bash
$@
```

All arguments supplied.
