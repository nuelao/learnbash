# Exercise 9: Redirects - The Post Office Slots

## Objective

Learn how to redirect standard output (stdout) and standard error (stderr).

## Commands

```bash
ls > listing.txt

cat listing.txt

date >> listing.txt

cat listing.txt

ls nothing

ls nothing 2> errors.txt

cat errors.txt

ls . nothing > out.txt 2> err.txt

cat out.txt

cat err.txt
```

## Key Concepts

### Overwrite Output

```bash
ls > listing.txt
```

Saves stdout to a file, replacing existing contents.

### Append Output

```bash
date >> listing.txt
```

Adds output to the end of a file.

### Redirect Errors

```bash
ls nothing 2> errors.txt
```

Saves only error messages to a file.

### Separate Output and Errors

```bash
ls . nothing > out.txt 2> err.txt
```

- stdout → `out.txt`
- stderr → `err.txt`

## Takeaway

| Symbol | Meaning |
|----------|----------|
| `>` | Overwrite output |
| `>>` | Append output |
| `2>` | Redirect errors |

stdout and stderr are separate streams.
