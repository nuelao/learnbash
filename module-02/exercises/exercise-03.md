# Exercise 3: Arguments

## Objective

Pass values into a script when it runs.

## Commands

Create:

```bash
nano arguments.sh
```

Contents:

```bash
#!/usr/bin/env bash

echo "Hello $1"
```

Run:

```bash
./arguments.sh Emmanuel
```

## Key Concepts

- `$1` = first argument
- `$2` = second argument
- `$3` = third argument

Example:

```bash
./arguments.sh Chris
```

Output:

```text
Hello Chris
```

## Expected Output

```text
Hello Emmanuel
```

## Takeaway

Arguments make scripts dynamic by allowing different inputs each time they run.
