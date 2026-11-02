# Exercise 5: Quoting

## Objective

Learn the difference between quoted and unquoted text.

## Commands

Create:

```bash
nano quoting.sh
```

Contents:

```bash
#!/usr/bin/env bash

name="Emmanuel"

echo Hello $name
echo "Hello $name"
echo 'Hello $name'
```

Run:

```bash
bash quoting.sh
```

## Expected Output

```text
Hello Emmanuel
Hello Emmanuel
Hello $name
```

## Key Concepts

Double quotes:

```bash
"Hello $name"
```

- Variables are expanded.

Single quotes:

```bash
'Hello $name'
```

- Variables are treated as literal text.

## Takeaway

- Use double quotes when you want variables to expand.
- Use single quotes when you want text exactly as written.
