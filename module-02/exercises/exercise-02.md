# Exercise 2: Variables

## Objective

Store values in variables and display them.

## Commands

Create:

```bash
nano variables.sh
```

Contents:

```bash
#!/usr/bin/env bash

name="Emmanuel"

echo "Hello $name"
```

Run:

```bash
bash variables.sh
```

## Key Concepts

- Variables store data.
- No spaces around `=`.
- Access a variable using `$`.

Example:

```bash
name="Emmanuel"
echo "$name"
```

## Expected Output

```text
Hello Emmanuel
```
