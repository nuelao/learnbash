# Exercise 6: Look Inside a File

## Objective
Explore file contents using common viewing commands.

## Commands

```bash
seq 1 30 > numbers.txt

head numbers.txt

head -n 3 numbers.txt

tail -n 3 numbers.txt

wc -l numbers.txt

less numbers.txt
```

## What Each Command Does

| Command | Purpose |
|----------|----------|
| `head` | Show first lines |
| `tail` | Show last lines |
| `wc -l` | Count lines |
| `less` | View file interactively |

## Inside less

### Search

```text
/17
```

Press Enter.

### Quit

```text
q
```

## Task

Display only lines:

```text
10
11
12
```

### Hint

Combine:

```bash
head
```

and

```bash
tail
```

using a pipe.
