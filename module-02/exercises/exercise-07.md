# Exercise 7: Simple Validation

## Objective

Check whether the user supplied the required arguments.

## Commands

Create:

```bash
nano validate.sh
```

Contents:

```bash
#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 <name>"
    exit 1
fi

echo "Hello $1"
```

Run:

```bash
./validate.sh
```

Then:

```bash
./validate.sh Emmanuel
```

## Expected Output

Without argument:

```text
Usage: ./validate.sh <name>
```

With argument:

```text
Hello Emmanuel
```

## Key Concepts

```bash
$#
```

Counts arguments.

```bash
exit 1
```

Indicates an error.

```bash
exit 0
```

Indicates success.
