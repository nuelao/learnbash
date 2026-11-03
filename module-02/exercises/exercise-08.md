# Exercise 8: Using Exit Codes

## Objective

Use exit codes to communicate success or failure.

## Commands

Create:

```bash
nano check-file.sh
```

Contents:

```bash
#!/usr/bin/env bash

if [ -f "$1" ]
then
    echo "File exists"
    exit 0
else
    echo "File not found"
    exit 1
fi
```

Run:

```bash
./check-file.sh notes.txt
echo $?
```

## Expected Output

If file exists:

```text
File exists
0
```

If file does not exist:

```text
File not found
1
```

## Key Concepts

```bash
0
```

Success.

```bash
1
```

Failure.

Scripts use exit codes so other scripts and tools can tell whether an operation succeeded.
