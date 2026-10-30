# Exercise 10: Your First Pipes

## Objective

Learn how to connect commands using pipes (`|`).

## Commands

```bash
ls | wc -l

seq 1 30 | head -n 12 | tail -n 3

ls -l | grep "txt"
```

## How Pipes Work

A pipe sends the output of one command directly into another.

```bash
command1 | command2
```

Output from `command1` becomes input to `command2`.

## Examples

### Count Files

```bash
ls | wc -l
```

1. `ls` lists files.
2. `wc -l` counts lines.

### Get Lines 10-12

```bash
seq 1 30 | head -n 12 | tail -n 3
```

Output:

```text
10
11
12
```

Steps:

1. Generate numbers 1–30.
2. Keep first 12.
3. Keep last 3 of those.

### Filter Results

```bash
ls -l | grep "txt"
```

Shows only lines containing `txt`.

## Takeaway

Pipes let small commands work together to perform larger tasks.
