# Exercise 9: Using grep -q

## Objective

Check whether text exists without displaying it.

## Commands

Create:

```bash
nano search.sh
```

Contents:

```bash
#!/usr/bin/env bash

if grep -q "ERROR" mini.log
then
    echo "Errors found"
else
    echo "No errors found"
fi
```

Run:

```bash
bash search.sh
```

## Key Concepts

```bash
grep -q
```

Quiet mode.

Does not print matching lines.

Returns:

```text
0 = Match found
1 = No match found
```

## Use Case

Check whether a log contains errors before taking action.
